/*
* Portions:
* Copyright 1993 Martin Ayotte
*/
/************************************************************
*
*                           Copyright (c)
*    © Digital Equipment Corporation 1996, 1997, 1998. All rights reserved.
*    © SMART Modular Technologies 1999. All rights reserved.
*	  Copyright © 2000 Force Computers, Inc., a Solectron Company. All rights reserved.
*
*    Restricted Rights: Use, duplication, or disclosure by the U.S.
*    Government is subject to restrictions as set forth in subparagraph
*    (c) (1) (ii) of DFARS 252.227-7013, or in FAR 52.227-19, or in FAR
*    52.227-14 Alt. III, as applicable.
*
*    This software is proprietary to and embodies the confidential
*    technology of Force Computers Incorporated and other parties.
*    Possession, use, or copying of this software and media is authorized
*    only pursuant to a valid written license from Force or an
*    authorized sublicensor.
*
***********************************************************************
*    File Name:		qnx_audio.c
*    Author:			Gerald Bringhurst
*    Creation Date:	06/18/2004
*
*    Functionality:	fake the WIN32/OSF audio API stuff that is needed
*                      for playaud.c
*
***********************************************************************
*    Revision History:
*
* Rev  Who 	Date        Description
* ---  -----   ----------- --------------------------------------------
* -01  ETT     09/03/1998  spawned forth via the merky depths of....
* 000  ETT     09/10/1998  crunch crunch crunch... get it to work
* 001  ETT     10/06/1998  added the different ioctls for itsy (__arm__)
* 002	MGS		08/22/1999	Removed 44100 kHz for __arm__ (doesn't work)
*							removed different ioctls for itsy
* 003	MGS		10/05/2000	Redhat 6.2 and linux warning removal
* 004 	CAB		10/16/2000	Changed copyright info
* 005	MGS		10/18/2000	Fixed Reset for Redhat 6.2, does not work well for redhat 5.0
* 006	MGS		02/08/2001	Rewrote the low level code
* 007	MGS		02/13/2001	Changes for ipaq linux
* 008	MGS		05/09/2001	Some VxWorks porting BATS#972
* 009	MGS		06/19/2001	Solaris Port BATS#972
**********************************************************************/

/* FIXME: GetNumDevs, GetVolume, etc.
*/


#if defined __QNX__
#ifndef QNX_AUDIO_C
#define QNX_AUDIO_C

//#define _DEBUG

#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/ioctl.h>

// #include <sys/soundcard.h>
#include <sys/asoundlib.h>
#include <sys/types.h>
#include <sys/stat.h>


#ifdef VXWORKS
#include <time.h>
#else
#include <sys/time.h>
#endif
#include <sys/mman.h>
#ifdef __arm__
#ifndef __ipaq__
#include <linux/audio-sa1100.h>
#endif
#endif
#include "qnx_audio.h"

#define AUDIOBUFSIZE 568
//static snd_pcm_t *pcm_handle;

#define EMULATE_SB16

#if defined (__QNX__)
#define SOUND_DEV "/dev/snd"
#define MIXER_DEV "/dev/snd"
#else // then we have __linux__
#define SOUND_DEV "/dev/dsp"
#define MIXER_DEV "/dev/mixer"
#endif


#define AUDIO_DEV_TAG "AUDIODEV:"

#define IOCTL(a,b,c)		((-1==ioctl(a,b,&c))&&(perror("ioctl:"#b":"#c),0))
#define MAX_WAVEOUTDRV 	(1)
#define MAX_WAVEINDRV 	(1)

#include <errno.h>
snd_pcm_channel_info_t pcm_info;
snd_pcm_channel_params_t pp;

typedef struct audio_buf_info_t
{
	int fragments;
	int fragsize;
	int fragstotal;
	int bytes;
} audio_buf_info;

/* state diagram for waveOut writing:
*
* +---------+-------------+---------------+---------------------------------+
* |  state  |  function   |     event     |            new state	     |
* +---------+-------------+---------------+---------------------------------+
* |	     | open()	   |		   | STOPPED		       	     |
* | PAUSED  | write()	   | 		   | PAUSED		       	     |
* | STOPPED | write()	   | <thrd create> | PLAYING		  	     |
* | PLAYING | write()	   | HEADER        | PLAYING		  	     |
* | (other) | write()	   | <error>       |		       		     |
* | (any)   | pause()	   | PAUSING	   | PAUSED		       	     |
* | PAUSED  | restart()   | RESTARTING    | PLAYING (if no thrd => STOPPED) |
* | (any)   | reset()	   | RESETTING     | STOPPED		      	     |
* | (any)   | close()	   | CLOSING	   | CLOSED		      	     |
* +---------+-------------+---------------+---------------------------------+
*/

/* states of the playing device */
#define	WINE_WS_PLAYING		0
#define	WINE_WS_PAUSED		1
#define	WINE_WS_STOPPED		2
#define WINE_WS_CLOSED		3

/* events to be send to device */
#define WINE_WM_PAUSING		(WM_USER + 1)
#define WINE_WM_RESTARTING	(WM_USER + 2)
#define WINE_WM_RESETTING	(WM_USER + 3)
#define WINE_WM_CLOSING		(WM_USER + 4)
#define WINE_WM_HEADER		(WM_USER + 5)

#define WINE_WM_FIRST WINE_WM_PAUSING
#define WINE_WM_LAST WINE_WM_HEADER

typedef struct {
	int msg;
	DWORD param;
} WWO_MSG;

#define WWO_RING_BUFFER_SIZE	30
typedef struct {
#ifndef __QNX__
	int            unixdev;
#else
	snd_pcm_t *unixdev;
#endif
	volatile int   state;			/* one of the WINE_WS_ manifest constants */
	DWORD          dwFragmentSize;		/* size of OSS buffer fragment */
	WAVEOPENDESC   waveDesc;
	WORD           wFlags;
	PCMWAVEFORMAT  format;
	LPWAVEHDR      lpQueuePtr;	/* start of queued WAVEHDRs (waiting to be notified) */
	LPWAVEHDR      lpPlayPtr;	/* start of not yet fully played buffers */
	LPWAVEHDR      lpLoopPtr;	/* pointer of first buffer in loop, if any */
	
	DWORD          dwLastFragDone; /* time in ms, when last played fragment will be actually played */
	DWORD          dwPlayedTotal;  /* number of bytes played since opening */
	
	/* info on current lpQueueHdr->lpWaveHdr */
	DWORD          dwOffCurrHdr; /* offset in lpPlayPtr->lpData for fragments */
	DWORD          dwRemain;	/* number of bytes to write to end the current fragment  */
	
	/* synchronization stuff */
	HTHREAD_T         hThread;
	DWORD          dwThreadID;
	HEVENT_T         hEvent;
	WWO_MSG        messages[WWO_RING_BUFFER_SIZE];
	int            msg_tosave;
	int            msg_toget;
	HEVENT_T         msg_event;
	MUTEX_T        msg_crst;
	WAVEOUTCAPS    caps;
	
	/* DirectSound stuff */
	LPBYTE         mapping;
	DWORD          maplen;
} WINE_WAVEOUT;

#ifdef WAVEIN_NEEDED
typedef struct {
	int       unixdev;
	volatile int      state;
	DWORD         dwFragmentSize;	  /* OpenSound '/dev/dsp' give us that size */
	WAVEOPENDESC  waveDesc;
	WORD      wFlags;
	PCMWAVEFORMAT     format;
	LPWAVEHDR         lpQueuePtr;
	DWORD         dwTotalRecorded;
	WAVEINCAPS            caps;
	BOOL                        bTriggerSupport;
	
	/* synchronization stuff */
	DT_HANDLE         hThread;
	DWORD         dwThreadID;
	DT_HANDLE         hEvent;
} WINE_WAVEIN;
#endif

static int server_startticks=0;

static WINE_WAVEOUT    WOutDev[MAX_WAVEOUTDRV];
// MGS the next variable is not used in dectalks audio output
// if this code is ever used for audio input, this will have to be
// put back in
#ifdef WAVEIN_NEEDED
static WINE_WAVEIN  WInDev    [MAX_WAVEINDRV ];
#endif


/* Unfortunately, ms-windoze uses wDevID of zero to indicate
* errors.  Now, multimedia drivers must pass the wDevID through
* MMSYSTEM_DevIDToIndex to get an index in that range.  An
* aribtrary value, MMSYSTEM_MAGIC is added to the wDevID seen
* by the windows programs.
*/

#define MMSYSTEM_MAGIC 0x0F00

int testRate (snd_pcm_t *audio,int SampleRate)
{
	int     card = 0;
	int     dev = 0;
	int     rtn;
	snd_pcm_channel_params_t pp;

	memset (&pp, 0, sizeof (pp));

	pp.mode = SND_PCM_MODE_BLOCK;
	pp.channel = SND_PCM_CHANNEL_PLAYBACK;
	pp.start_mode = SND_PCM_START_DATA;
	pp.stop_mode = SND_PCM_STOP_STOP;
	
	pp.buf.block.frag_size = AUDIOBUFSIZE;
	pp.buf.block.frags_max = 16;
	pp.buf.block.frags_min = 1;
	
	pp.format.interleave = 0;
	pp.format.rate = SampleRate;
	pp.format.voices = 1;
	pp.format.format = SND_PCM_SFMT_S16_LE;
	
	if((rtn = snd_pcm_channel_params (audio, &pp)) < 0)
	{
		perror ("setRate channel_params:1");
		return -1;
	}
	
	return 0;
}//int testRate (int SampleRate)

int sndPCMSupport(int format)
{
	int rval= -1;
	
	int number=1;
	int cards;
	int devices;
	int mode=SND_PCM_CHANNEL_PLAYBACK;
	
	rval = snd_pcm_find( (unsigned int)format,  &number,  &cards,  &devices,  mode );
	
	return rval;
	
}//int sndPCMSupport(int format)


 /***********************************************************************
 *           GetTickCount   (USER.13) (KERNEL32.299) from main.c
 *
 * Returns the number of milliseconds, modulo 2^32, since the start
 * of the wineserver.
*/
DWORD WINAPI GetTickCount(void)
{
	struct timeval t;
	gettimeofday( &t, NULL );
	return((t.tv_sec * 1000) + (t.tv_usec / 1000)) - server_startticks;
}//DWORD WINAPI GetTickCount(void)

char *GetAudioDev(char *name)
{
	FILE *infile;
	int i;
	char line[500];
	char *env_dev;
	
	infile=fopen("/etc/DECtalk.conf","r");
	if(infile==NULL)
	{
#ifdef TESTING
		infile=fopen("DECtalk.conf","r");
		if(infile==NULL)
#endif
		{
			strcpy(name,SOUND_DEV);
			return(name);
		}
	}
	name[0]='\0';
	while(fgets(line,499,infile)!=NULL)
	{
		if(strncmp(line,AUDIO_DEV_TAG,9)==0)
		{
			line[strlen(line)-1]='\0';
			if(line[9]=='$')
			{
				/* get envrionment */
				env_dev=getenv(line+9);
				strcpy(name,env_dev);
				break;
			}
			else
			{
				strcpy(name,line+9);
				break;
			}
		}
	}
	if(name[0]=='\0')
	{
		strcpy(name,SOUND_DEV);
	}
	return(name);
}//char *GetAudioDev(char *name)





 /*======================================================================*
 *                  Low level WAVE implementation			*
*======================================================================*/

LONG OSS_WaveInit(void)
{
	int     card = 0;
	int     dev = 0;
	int     rtn;
	snd_pcm_t *audio;
	snd_pcm_channel_info_t info;
	//	int   audio;
	int  smplrate;
	int  samplesize = 16;
	int  dsp_stereo = 1;
	int  bytespersmpl=11025;
	int  caps;
	int  tmpVar=0;
	int  mask=0;
	int  i;
	char audio_dev[500]={0};
	
	/* start with output device */
	
	server_startticks=GetTickCount();
	
	/* initialize all device handles to -1 */
	for(i = 0; i < MAX_WAVEOUTDRV; ++i)
	{
		WOutDev[i].unixdev = -1;
	}
	
	memset(&WOutDev[0].caps, 0, sizeof(WOutDev[0].caps));
	
	/* FIXME: only one device is supported */
	
	GetAudioDev(audio_dev);
	
	
	/* FIXME: some programs compare this string against the content of the registry
	* for MM drivers. The names have to match in order for the program to work
	* (e.g. MS win9x mplayer.exe)
	*/
#ifdef EMULATE_SB16
	WOutDev[0].caps.wMid = 0x0002;
	WOutDev[0].caps.wPid = 0x0104;
	strcpy(WOutDev[0].caps.szPname, "SB16 Wave Out");
#else
	WOutDev[0].caps.wMid = 0x00FF;	  /* Manufac ID */
	WOutDev[0].caps.wPid = 0x0001;	  /* Product ID */
	/*    strcpy(WOutDev[0].caps.szPname, "OpenSoundSystem WAVOUT Driver");*/
	strcpy(WOutDev[0].caps.szPname, "CS4236/37/38");
#endif
	WOutDev[0].caps.vDriverVersion = 0x0100;
	WOutDev[0].caps.dwFormats = 0x00000000;
	WOutDev[0].caps.dwSupport = WAVECAPS_VOLUME;
	
	
	/*
	** Get the PCM information about device.
	** the data is stored in the "pcm_info" struct.
	*/
	if((rtn = snd_pcm_open_preferred (&audio, &card, &dev, SND_PCM_OPEN_PLAYBACK)) < 0)
	{
		perror ("setRate open_preferred:1");
		return;
	}
	
	memset(&pcm_info, 0, sizeof(pcm_info));
	
	pcm_info.channel=SND_PCM_CHANNEL_PLAYBACK;
	
	snd_pcm_channel_info(audio, &pcm_info);
	
	
	/* First bytespersampl, then stereo */
	bytespersmpl = 2;//pcm_info.max_fragment_size;//(IOCTL(audio, SNDCTL_DSP_SAMPLESIZE, samplesize) != 0) ? 1 : 2;
	
	mask=pcm_info.formats; // Supported formats.
	
	WOutDev[0].caps.wChannels = pcm_info.max_voices;
	if(WOutDev[0].caps.wChannels > 1)
		WOutDev[0].caps.dwSupport |= WAVECAPS_LRVOLUME;
	
	smplrate = 44100;
	if(testRate(audio,smplrate)==0)
	{
		if(sndPCMSupport(SND_PCM_FMT_U8)>0)	//AFMT_U8)
		{
			WOutDev[0].caps.dwFormats |= WAVE_FORMAT_4M08;
			if(WOutDev[0].caps.wChannels > 1)
				WOutDev[0].caps.dwFormats |= WAVE_FORMAT_4S08;
		}
		if((sndPCMSupport(SND_PCM_FMT_S16_LE)>0	/*AFMT_S16_LE*/) && bytespersmpl > 1)
		{
			WOutDev[0].caps.dwFormats |= WAVE_FORMAT_4M16;
			if(WOutDev[0].caps.wChannels > 1)
				WOutDev[0].caps.dwFormats |= WAVE_FORMAT_4S16;
		}
	}
	
	smplrate = 22050;
	if(testRate(audio,smplrate)==0)
	{
		if(sndPCMSupport(SND_PCM_FMT_U8)>0)	//AFMT_U8)
		{
			WOutDev[0].caps.dwFormats |= WAVE_FORMAT_2M08;
			if(WOutDev[0].caps.wChannels > 1)
				WOutDev[0].caps.dwFormats |= WAVE_FORMAT_2S08;
		}
		if((sndPCMSupport(SND_PCM_FMT_S16_LE)>0	/*AFMT_S16_LE*/) && bytespersmpl > 1)
		{
			WOutDev[0].caps.dwFormats |= WAVE_FORMAT_2M16;
			if(WOutDev[0].caps.wChannels > 1)
				WOutDev[0].caps.dwFormats |= WAVE_FORMAT_2S16;
		}
		
	}
	
	smplrate = 11025;
	if(testRate(audio,smplrate)==0)
	{
		if(sndPCMSupport(SND_PCM_FMT_U8)>0)	//AFMT_U8)
		{
			WOutDev[0].caps.dwFormats |= WAVE_FORMAT_1M08;
			if(WOutDev[0].caps.wChannels > 1)
				WOutDev[0].caps.dwFormats |= WAVE_FORMAT_1S08;
		}
		if((sndPCMSupport(SND_PCM_FMT_S16_LE)>0	/*AFMT_S16_LE*/) && bytespersmpl > 1)
		{
			WOutDev[0].caps.dwFormats |= WAVE_FORMAT_1M16;
			if(WOutDev[0].caps.wChannels > 1)
				WOutDev[0].caps.dwFormats |= WAVE_FORMAT_1S16;
		}
	}
	
	
	return 0;
}//LONG OSS_WaveInit(void)

 /**************************************************************************
 * 				MMSYSTEM_DevIDToIndex	[internal]
 */
 int MMSYSTEM_DevIDToIndex(UINT16 wDevID)
 {
	 return wDevID - MMSYSTEM_MAGIC;
 }//int MMSYSTEM_DevIDToIndex(UINT16 wDevID)
 
  /**************************************************************************
  * 				MMSYSTEM_FirstDevId	[internal]
 */
 UINT16 MMSYSTEM_FirstDevID(void)
 {
	 return MMSYSTEM_MAGIC;
 }//UINT16 MMSYSTEM_FirstDevID(void)
 
  /**************************************************************************
  * 				MMSYSTEM_NextDevId	[internal]
 */
 UINT16 MMSYSTEM_NextDevID(UINT16 wDevID)
 {
	 return wDevID + 1;
 }//UINT16 MMSYSTEM_NextDevID(UINT16 wDevID)
 
  /**************************************************************************
  * 			OSS_NotifyClient			[internal]
 */
 static DWORD OSS_NotifyClient(UINT16 wDevID, WORD wMsg, DWORD dwParam1, DWORD dwParam2)
 {
	 //	fprintf(stderr, "OSS_NotifyClient: wDevID = %04X wMsg = %d dwParm1 = %04lX dwParam2 = %04lX\n",wDevID, wMsg, dwParam1, dwParam2);
	 
	 switch(wMsg)
	 {
	 case WOM_OPEN:
	 case WOM_CLOSE:
	 case WOM_DONE:
		 if(wDevID >= MAX_WAVEOUTDRV) return MCIERR_INTERNAL;
		 
		 if(WOutDev[wDevID].wFlags != DCB_NULL &&
			 !DriverCallback(WOutDev[wDevID].waveDesc.dwCallback,
			 WOutDev[wDevID].wFlags,
			 WOutDev[wDevID].waveDesc.hWave,
			 wMsg,
			 WOutDev[wDevID].waveDesc.dwInstance,
			 dwParam1,
			 dwParam2)) {
			 WARN("OSS_NotifyClient can't notify client !\n");
			 return MMSYSERR_NOERROR;
		 }
		 break;
		 
	 default:
		 FIXME("Unknown CB message %u\n", wMsg);
		 break;
	 }
	 return 0;
 }//static DWORD OSS_NotifyClient(UINT16 wDevID, WORD wMsg, DWORD dwParam1, DWORD dwParam2)
 
  /**************************************************************************
  * 				waveOutGetNumDevs
 */
 UINT16 waveOutGetNumDevs()
 {
	 UINT16    count = 0;
	 count += OSS_wodMessage( MMSYSTEM_FirstDevID(), WODM_GETNUMDEVS, 0L, 0L, 0L);
	 
	 return count;
 }//UINT16 waveOutGetNumDevs()
 
  /**************************************************************************
  * 				waveOutGetDevCaps
 */
 UINT32 waveOutGetDevCaps(UINT32 uDeviceID, LPWAVEOUTCAPS lpCaps, UINT32 uSize)
 {
	 
	 uDeviceID=0;
	 
	 if(uDeviceID > waveOutGetNumDevs() - 1)
	 {
		 return MMSYSERR_BADDEVICEID;
	 }
	 /* FIXME: do we have a wave mapper ? */
	 if(uDeviceID == (UINT16)WAVE_MAPPER)
	 {
		 return MMSYSERR_BADDEVICEID;
	 }
	 return OSS_wodMessage(uDeviceID, WODM_GETDEVCAPS, 0L, (DWORD)lpCaps, uSize);
	 
 }//UINT32 waveOutGetDevCaps(UINT32 uDeviceID, LPWAVEOUTCAPS lpCaps, UINT32 uSize)
 
  /**************************************************************************
  * 				waveGetErrorText
 */
 static UINT16 waveGetErrorText(UINT16 uError, LPSTR lpText, UINT16 uSize)
 {
	 LPSTR msgptr;
	 if((lpText == NULL) || (uSize < 1))	return(FALSE);
	 lpText[0] = '\0';
	 switch(uError) {
	 case MMSYSERR_NOERROR:
		 msgptr = "The specified command was carried out.";
		 break;
	 case MMSYSERR_ERROR:
		 msgptr = "Undefined external error.";
		 break;
	 case MMSYSERR_BADDEVICEID:
		 msgptr = "A device ID has been used that is out of range for your system.";
		 break;
	 case MMSYSERR_NOTENABLED:
		 msgptr = "The driver was not enabled.";
		 break;
	 case MMSYSERR_ALLOCATED:
		 msgptr = "The specified device is already in use. Wait until it is free, and then try again.";
		 break;
	 case MMSYSERR_INVALHANDLE:
		 msgptr = "The specified device handle is invalid.";
		 break;
	 case MMSYSERR_NODRIVER:
		 msgptr = "There is no driver installed on your system !\n";
		 break;
	 case MMSYSERR_NOMEM:
		 msgptr = "Not enough memory available for this task. Quit one or more applications to increase available memory, and then try again.";
		 break;
	 case MMSYSERR_NOTSUPPORTED:
		 msgptr = "This function is not supported. Use the Capabilities function to determine which functions and messages the driver supports.";
		 break;
	 case MMSYSERR_BADERRNUM:
		 msgptr = "An error number was specified that is not defined in the system.";
		 break;
	 case MMSYSERR_INVALFLAG:
		 msgptr = "An invalid flag was passed to a system function.";
		 break;
	 case MMSYSERR_INVALPARAM:
		 msgptr = "An invalid parameter was passed to a system function.";
		 break;
	 case WAVERR_BADFORMAT:
		 msgptr = "The specified format is not supported or cannot be translated. Use the Capabilities function to determine the supported formats";
		 break;
	 case WAVERR_STILLPLAYING:
		 msgptr = "Cannot perform this operation while media data is still playing. Reset the device, or wait until the data is finished playing.";
		 break;
	 case WAVERR_UNPREPARED:
		 msgptr = "The wave header was not prepared. Use the Prepare function to prepare the header, and then try again.";
		 break;
	 case WAVERR_SYNC:
		 msgptr = "Cannot open the device without using the WAVE_ALLOWSYNC flag. Use the flag, and then try again.";
		 break;
	 default:
		 msgptr = "Unknown MMSYSTEM Error !\n";
		 break;
	 }
	 strncpy(lpText, msgptr, uSize);
	 return TRUE;
 }//static UINT16 waveGetErrorText(UINT16 uError, LPSTR lpText, UINT16 uSize)
 
  /**************************************************************************
  * 				waveOutGetErrorText
 */
 UINT16 waveOutGetErrorText(UINT16 uError, LPSTR lpText, UINT16 uSize)
 {
	 return(waveGetErrorText(uError, lpText, uSize));
 }//UINT16 waveOutGetErrorText(UINT16 uError, LPSTR lpText, UINT16 uSize)
 
 
  /**************************************************************************
  *			waveOutOpen			[MMSYSTEM.404]
 */
 UINT16 waveOutOpen(LPHWAVEOUT lphWaveOut, UINT16 uDeviceID, const LPWAVEFORMATEX lpFormat, DWORD dwCallback, DWORD dwInstance, DWORD dwFlags)
 {
	 HWAVEOUT  hWaveOut;
	 LPWAVEOPENDESC    lpDesc;
	 DWORD     dwRet = 0;
	 BOOL32        bMapperFlg = FALSE;
	 
#ifdef _DEBUG
	 fprintf(stderr,"Linux ONLY: waveOutOpen\n");
	 if(dwFlags & WAVE_FORMAT_QUERY)
		 fprintf(stderr, "WAVE_FORMAT_QUERY requested !\n");
#endif
	 if (uDeviceID == (UINT16)WAVE_MAPPER) {
#ifdef _DEBUG		
		 fprintf(stderr, "WAVE_MAPPER mode requested !\n");
#endif		
		 bMapperFlg = TRUE;
		 uDeviceID = 0;
	 }
	 if(lpFormat == NULL) return WAVERR_BADFORMAT;
	 
	 hWaveOut = (int) malloc(sizeof(WAVEOPENDESC));
	 if(lphWaveOut != NULL) *lphWaveOut = hWaveOut;
	 lpDesc = (LPWAVEOPENDESC) hWaveOut;
	 if(lpDesc == NULL) return MMSYSERR_NOMEM;
	 lpDesc->hWave = hWaveOut;
	 lpDesc->lpFormat = (LPWAVEFORMATEX)lpFormat;  /* should the struct be copied iso pointer? */
	 lpDesc->dwCallback = dwCallback;
	 lpDesc->dwInstance = dwInstance;
	 
	 if(uDeviceID >= MAXWAVEDRIVERS)
		 uDeviceID = 0;
	 while(uDeviceID < MAXWAVEDRIVERS) {
		 dwRet = OSS_wodMessage(uDeviceID, WODM_OPEN,
			 lpDesc->dwInstance, (DWORD)lpDesc, dwFlags);
		 if(dwRet == MMSYSERR_NOERROR) break;
		 if(!bMapperFlg)	break;
		 uDeviceID++;
#ifdef _DEBUG
		 fprintf(stderr, "WAVE_MAPPER mode ! try next driver...\n");
#endif		
	 }
	 lpDesc->uMappedDeviceID = uDeviceID;  /* save physical Device ID */
	 if(dwFlags & WAVE_FORMAT_QUERY) {
#ifdef _DEBUG
		 fprintf(stderr, "End of WAVE_FORMAT_QUERY !\n");
#endif	
		 free((void *)hWaveOut);
	 }
	 return dwRet;
 }//UINT16 waveOutOpen(LPHWAVEOUT lphWaveOut, UINT16 uDeviceID, const LPWAVEFORMATEX lpFormat, DWORD dwCallback, DWORD dwInstance, DWORD dwFlags)
 
 
  /**************************************************************************
  * 				waveOutClose	
 */
 UINT16 waveOutClose(HWAVEOUT hWaveOut)
 {
	 LPWAVEOPENDESC  lpDesc;
	 
#ifdef _DEBUG
	 fprintf(stderr,"Linux ONLY: waveOutClose");
	 fprintf(stderr, "(%04X)\n", hWaveOut);
#endif
	 lpDesc = (LPWAVEOPENDESC) hWaveOut;
	 if(lpDesc == NULL) return MMSYSERR_INVALHANDLE;
	 return OSS_wodMessage( lpDesc->uMappedDeviceID, WODM_CLOSE, lpDesc->dwInstance, 0L, 0L);
 }//UINT16 waveOutClose(HWAVEOUT hWaveOut)
 
  /**************************************************************************
  * 				waveOutPrepareHeader
 */
 UINT32 waveOutPrepareHeader(HWAVEOUT hWaveOut, WAVEHDR * lpWaveOutHdr, UINT32 uSize)
 {
	 LPWAVEOPENDESC  lpDesc;
	 
#ifdef _DEBUG
	 fprintf(stderr, "Linux ONLY: waveOutPrepareHeader");
	 fprintf(stderr, "(%04X, %p, %u);\n",
		 hWaveOut, lpWaveOutHdr, uSize);
#endif
	 lpDesc = (LPWAVEOPENDESC) USER_HEAP_LIN_ADDR(hWaveOut);
	 if(lpDesc == NULL) return MMSYSERR_INVALHANDLE;
	 return OSS_wodMessage( lpDesc->uMappedDeviceID, WODM_PREPARE, lpDesc->dwInstance,
						   (DWORD)lpWaveOutHdr,uSize);
 }//UINT32 waveOutPrepareHeader(HWAVEOUT hWaveOut, WAVEHDR * lpWaveOutHdr, UINT32 uSize)
 
 
  /**************************************************************************
  * 				waveOutUnprepareHeader
 */
 UINT32 waveOutUnprepareHeader(HWAVEOUT hWaveOut,
				 WAVEHDR * lpWaveOutHdr, UINT32 uSize)
 {
	 LPWAVEOPENDESC  lpDesc;
	 
#ifdef _DEBUG
	 fprintf(stderr, "Linux ONLY: waveOutUnprepareHeader");
	 fprintf(stderr, "(%04X, %p, %u);\n",
		 hWaveOut, lpWaveOutHdr, uSize);
#endif
	 lpDesc = (LPWAVEOPENDESC) USER_HEAP_LIN_ADDR(hWaveOut);
	 if(lpDesc == NULL) return MMSYSERR_INVALHANDLE;
	 return OSS_wodMessage(lpDesc->uMappedDeviceID,WODM_UNPREPARE,lpDesc->dwInstance,
		 (DWORD)lpWaveOutHdr, uSize);
 }//UINT32 waveOutUnprepareHeader(HWAVEOUT hWaveOut, WAVEHDR * lpWaveOutHdr, UINT32 uSize)
 
 
  /**************************************************************************
  * 				waveOutWrite
 */
 UINT32 waveOutWrite(HWAVEOUT hWaveOut, WAVEHDR * lpWaveOutHdr, UINT32 uSize)
 {
	 LPWAVEOPENDESC  lpDesc;
	 
#ifdef _DEBUG
	 fprintf(stderr, "Linux ONLY: waveOutWrite");
	 fprintf(stderr, "(%04X, %p, %u);\n", hWaveOut, lpWaveOutHdr, uSize);
#endif	
	 
	 lpDesc = (LPWAVEOPENDESC) USER_HEAP_LIN_ADDR(hWaveOut);
	 if(lpDesc == NULL) return MMSYSERR_INVALHANDLE;
	 lpWaveOutHdr->reserved = (DWORD)lpWaveOutHdr->lpData;
	 return OSS_wodMessage( lpDesc->uMappedDeviceID, WODM_WRITE, lpDesc->dwInstance, (DWORD)lpWaveOutHdr, uSize);
 }//UINT32 waveOutWrite(HWAVEOUT hWaveOut, WAVEHDR * lpWaveOutHdr, UINT32 uSize)
 
  /**************************************************************************
  * 				waveOutPause
 */
 UINT16 waveOutPause(HWAVEOUT hWaveOut)
 {
	 LPWAVEOPENDESC  lpDesc;
	 
#ifdef _DEBUG
	 fprintf(stderr, "Linux ONLY: waveOutPause");
	 fprintf(stderr, "(%04X)\n", hWaveOut);
#endif	
	 
	 lpDesc = (LPWAVEOPENDESC) USER_HEAP_LIN_ADDR(hWaveOut);
	 if(lpDesc == NULL) return MMSYSERR_INVALHANDLE;
	 return OSS_wodMessage( lpDesc->uMappedDeviceID, WODM_PAUSE, lpDesc->dwInstance, 0L, 0L);
 }//UINT16 waveOutPause(HWAVEOUT hWaveOut)
 
 
  /**************************************************************************
  * 				waveOutRestart
 */
 UINT16 waveOutRestart(HWAVEOUT hWaveOut)
 {
	 LPWAVEOPENDESC  lpDesc;
	 
#ifdef _DEBUG
	 fprintf(stderr, "Linux ONLY: waveOutRestart");
	 fprintf(stderr, "(%04X)\n", hWaveOut);
#endif	
	 
	 lpDesc = (LPWAVEOPENDESC) USER_HEAP_LIN_ADDR(hWaveOut);
	 if(lpDesc == NULL) return MMSYSERR_INVALHANDLE;
	 return OSS_wodMessage( lpDesc->uMappedDeviceID, WODM_RESTART, lpDesc->dwInstance, 0L, 0L);
 }//UINT16 waveOutRestart(HWAVEOUT hWaveOut)
 
 
  /**************************************************************************
  * 				waveOutReset
 */
 UINT16 waveOutReset(HWAVEOUT hWaveOut)
 {
	 LPWAVEOPENDESC  lpDesc;
	 
#ifdef _DEBUG
	 fprintf(stderr, "Linux ONLY: waveOutReset");
	 fprintf(stderr, "(%04X)\n", hWaveOut);
#endif
	 
	 lpDesc = (LPWAVEOPENDESC) USER_HEAP_LIN_ADDR(hWaveOut);
	 if(lpDesc == NULL) return MMSYSERR_INVALHANDLE;
	 return OSS_wodMessage( lpDesc->uMappedDeviceID, WODM_RESET, lpDesc->dwInstance, 0L, 0L);
 }//UINT16 waveOutReset(HWAVEOUT hWaveOut)
 
  /**************************************************************************
  * 				waveOutRestart
 */
 UINT16 waveOutResstart(HWAVEOUT hWaveOut)
 {
	 LPWAVEOPENDESC  lpDesc;
	 
#ifdef _DEBUG
	 fprintf(stderr, "Linux ONLY: waveOutReset");
	 fprintf(stderr, "(%04X)\n", hWaveOut);
#endif
	 
	 lpDesc = (LPWAVEOPENDESC) USER_HEAP_LIN_ADDR(hWaveOut);
	 if(lpDesc == NULL) return MMSYSERR_INVALHANDLE;
	 return OSS_wodMessage( lpDesc->uMappedDeviceID, WODM_RESTART, lpDesc->dwInstance, 0L, 0L);
 }//UINT16 waveOutResstart(HWAVEOUT hWaveOut)
 
 
 
  /**************************************************************************
  * 				waveOutGetVolume
 */
 UINT16 waveOutGetVolume(HWAVEOUT hWaveOut, LPDWORD pdwVolume )
 {
	 LPWAVEOPENDESC  lpDesc;
	 
#ifdef _DEBUG
	 fprintf(stderr, "Linux ONLY: waveOutGetVolume");
	 fprintf(stderr, "(%04X)\n", hWaveOut);
#endif
	 
	 lpDesc = (LPWAVEOPENDESC) USER_HEAP_LIN_ADDR(hWaveOut);
	 //if (lpDesc == NULL) return MMSYSERR_INVALHANDLE;
	 if(lpDesc == NULL)
		 return OSS_wodMessage( 65535, WODM_GETVOLUME, 0, (int)pdwVolume, 0L);
	 return OSS_wodMessage( lpDesc->uMappedDeviceID, WODM_GETVOLUME, lpDesc->dwInstance,
						   (int)pdwVolume, 0L);
 }//UINT16 waveOutGetVolume(HWAVEOUT hWaveOut, LPDWORD pdwVolume )
 
  /**************************************************************************
  * 				waveOutSetVolume
 */
 UINT16 waveOutSetVolume(HWAVEOUT hWaveOut, DWORD dwVolume )
 {
	 LPWAVEOPENDESC  lpDesc;
	 
#ifdef _DEBUG
	 fprintf(stderr, "Linux ONLY: waveOutSetVolume");
	 fprintf(stderr, "(%04X)\n", hWaveOut);
#endif
	 
	 lpDesc = (LPWAVEOPENDESC) USER_HEAP_LIN_ADDR(hWaveOut);
	 //if (lpDesc == NULL) return MMSYSERR_INVALHANDLE;
	 if(lpDesc == NULL)
		 return OSS_wodMessage( 65535, WODM_SETVOLUME, 0, dwVolume, 0L);
	 return OSS_wodMessage( lpDesc->uMappedDeviceID, WODM_SETVOLUME, lpDesc->dwInstance,
						   dwVolume, 0L);
 }//UINT16 waveOutSetVolume(HWAVEOUT hWaveOut, DWORD dwVolume )
 
  /**************************************************************************
  * 				waveOutGetPosition
 */
 UINT16 waveOutGetPosition(HWAVEOUT hWaveOut,LPMMTIME lpTime, UINT16 uSize)
 {
	 LPWAVEOPENDESC  lpDesc;
	 
#ifdef _DEBUG
	 fprintf(stderr, "Linux ONLY: waveOutGetPosition");
	 fprintf(stderr, "(%04X, %p, %u);\n", hWaveOut, lpTime, uSize);
#endif
	 
	 lpDesc = (LPWAVEOPENDESC) USER_HEAP_LIN_ADDR(hWaveOut);
	 if(lpDesc == NULL) return MMSYSERR_INVALHANDLE;
	 return OSS_wodMessage( lpDesc->uMappedDeviceID, WODM_GETPOS, lpDesc->dwInstance,
						   (DWORD)lpTime, (DWORD)uSize);
 }//UINT16 waveOutGetPosition(HWAVEOUT hWaveOut,LPMMTIME lpTime, UINT16 uSize)
 
#define WAVEOUT_SHORTCUT_1(xx,XX,atype) \
	UINT16 waveOut##xx(HWAVEOUT hWaveOut, atype x)       \
 {									\
	LPWAVEOPENDESC	lpDesc;                                         \
	lpDesc = (LPWAVEOPENDESC) USER_HEAP_LIN_ADDR(hWaveOut);		\
	if (lpDesc == NULL) return MMSYSERR_INVALHANDLE;		\
	return OSS_wodMessage(lpDesc->uMappedDeviceID, WODM_##XX, lpDesc->dwInstance,\
	(DWORD)x, 0L);				\
 }
 
//WAVEOUT_SHORTCUT_1(GetPitch,GETPITCH,DWORD*)
//WAVEOUT_SHORTCUT_1(SetPitch,SETPITCH,DWORD)
//WAVEOUT_SHORTCUT_1(GetPlaybackRate,GETPLAYBACKRATE,DWORD*)
//WAVEOUT_SHORTCUT_1(SetPlaybackRate,SETPLAYBACKRATE,DWORD)
	 
#define WAVEOUT_SHORTCUT_2(xx,XX,atype) \
	UINT16 waveOut##xx##16(UINT16 devid, atype x)		\
 {									\
	return OSS_wodMessage(devid, WODM_##XX, 0L,	(DWORD)x, 0L);		\
 }
	 
	 
	 WAVEOUT_SHORTCUT_2(GetVolume,GETVOLUME,DWORD*)
	 WAVEOUT_SHORTCUT_2(SetVolume,SETVOLUME,DWORD)
	 
	 
	 /**************************************************************************
	 * 				waveOutBreakLoop
	 */
	 UINT16 waveOutBreakLoop(HWAVEOUT hWaveOut)
 {
	 return MMSYSERR_INVALHANDLE;
 }//UINT16 waveOutBreakLoop(HWAVEOUT hWaveOut)
 
  /**************************************************************************
  * 				waveOutGetID
 */
 UINT32 waveOutGetID(HWAVEOUT hWaveOut, UINT32 * lpuDeviceID)
 {
	 LPWAVEOPENDESC  lpDesc;
	 
#ifdef _DEBUG
	 fprintf(stderr, "Linux ONLY: waveOutGetID");
	 fprintf(stderr, "(%04X, %p);\n", hWaveOut, lpuDeviceID);
#endif
	 
	 lpDesc = (LPWAVEOPENDESC) USER_HEAP_LIN_ADDR(hWaveOut);
	 if(lpDesc == NULL) return MMSYSERR_INVALHANDLE;
	 if(lpuDeviceID == NULL)	return MMSYSERR_INVALHANDLE;
	 *lpuDeviceID = lpDesc->uMappedDeviceID;
	 return 0;
 }//UINT32 waveOutGetID(HWAVEOUT hWaveOut, UINT32 * lpuDeviceID)
 
  /*======================================================================*
  *                  Low level WAVE OUT implementation			*
 *======================================================================*/

int write_qnx_audio(snd_pcm_t *audio,LPBYTE lpData,int count)
{
	int ret=-1;
	while (ret<0)
	{
		ret=snd_pcm_write(audio,lpData,count);
		if (ret>0 && ret<count)
		{
			if((snd_pcm_channel_prepare (audio, SND_PCM_CHANNEL_PLAYBACK)) < 0)
			{
				perror ("setRate channel_prepare:2");
				return -1;
			}
		}
		if (ret==-EINVAL)
		{
			if((snd_pcm_channel_prepare (audio, SND_PCM_CHANNEL_PLAYBACK)) < 0)
			{
				perror ("setRate channel_prepare:2");
				return -1;
			}
		}
		else if (ret==-EIO)
		{
			if (snd_pcm_playback_drain(audio)<0)
			{
				perror("couldn't drain");
				return(-1);
			}
			if((snd_pcm_channel_prepare (audio, SND_PCM_CHANNEL_PLAYBACK)) < 0)
			{
				perror ("setRate channel_prepare:3");
				return -1;
			}
		}
		else
		{
			return(ret);
		}
	}
	return(ret);
}

 
 /**************************************************************************
 * 				wodPlayer_WriteFragments	[internal]
 *
 * wodPlayer helper. Writes as many fragments as it can to unixdev.
 * Returns TRUE in case of buffer underrun.
 */
 
 static  BOOL    wodPlayer_WriteFragments(WINE_WAVEOUT* wwo)
 {
	 LPWAVEHDR     lpWaveHdr;
	 LPBYTE        lpData;
	 int           count=-1;
	 audio_buf_info    info;
        snd_pcm_channel_setup_t setup;
	snd_pcm_channel_status_t status;

	 for(;;)
	 {
#if 0 // geb
		 if(ioctl(wwo->unixdev, SNDCTL_DSP_GETOSPACE, &info) < 0)
		 {
			 ERR("ioctl failed (%s)\n", strerror(errno));
			 return FALSE;
		 }
		 
		 
		 if(!info.fragments)	   /* output queue is full, wait a bit */
			 return FALSE;
#endif
                //MGS faked fragment info so it wold have the data

		count=snd_pcm_channel_status(wwo->unixdev,&status);

                //count = snd_pcm_channel_setup(wwo->unixdev, &setup);
                if (count >= 0) {
                        info.fragments = status.free/568;
                        info.fragsize = 568;
                        info.fragstotal = 8;
                        info.bytes = status.free;
                } else {
                        info.fragments = 3;
                        info.fragsize = 568;
                        info.fragstotal = 8;
                        info.bytes = 12406;
                }


		if (!info.fragments)
		{
			return(FALSE);
		}
		 
		 lpWaveHdr = wwo->lpPlayPtr;
		 if (!lpWaveHdr) {
			 if(wwo->dwRemain > 0 &&		 /* still data to send to complete current fragment */
				 wwo->dwLastFragDone &&	 /* first fragment has been played */
				 info.fragments + 2 > info.fragstotal) {	/* done with all waveOutWrite()' fragments */
				 /* FIXME: should do better handling here */
				 WARN("Oooch, buffer underrun !\n");
				 return TRUE; /* force resetting of waveOut device */
			 }
			 return FALSE; /* wait a bit */
		 }
		 
		 if (wwo->dwOffCurrHdr == 0) {
			 if (lpWaveHdr->dwFlags & WHDR_BEGINLOOP) {
				 if (wwo->lpLoopPtr) {
					 WARN("Already in a loop. Discarding loop on this header (%p)\n", lpWaveHdr);
				 } else {
					 wwo->lpLoopPtr = lpWaveHdr;
				 }
			 }
		 }
		 
		 lpData = lpWaveHdr->lpData;
		 
		 /* finish current wave hdr ? */
		 if (wwo->dwOffCurrHdr + wwo->dwRemain >= lpWaveHdr->dwBufferLength) {
			 DWORD toWrite = lpWaveHdr->dwBufferLength - wwo->dwOffCurrHdr;
			 
			 /* write end of current wave hdr */
			 count = write_qnx_audio (wwo->unixdev, (lpData + wwo->dwOffCurrHdr ), toWrite);
			 //OP_Sleep(1);
			 
			 if (count > 0 || toWrite == 0) {
				 DWORD   tc = GetTickCount();
				 
				 if(wwo->dwLastFragDone /* + guard time ?? */ < tc)
					 wwo->dwLastFragDone = tc;
				 wwo->dwLastFragDone += (toWrite * 1000) / wwo->format.wf.nAvgBytesPerSec;
				 
				 lpWaveHdr->reserved = wwo->dwLastFragDone;
				 
				 /* WAVEHDR written, go to next one */
				 if ((lpWaveHdr->dwFlags & WHDR_ENDLOOP) && wwo->lpLoopPtr) {
					 if (--wwo->lpLoopPtr->dwLoops > 0) {
						 wwo->lpPlayPtr = wwo->lpLoopPtr;
					 } else {
						 /* last one played */
						 if (wwo->lpLoopPtr != lpWaveHdr && (lpWaveHdr->dwFlags & WHDR_BEGINLOOP)) {
							 FIXME("Correctly handled case ? (ending loop buffer also starts a new loop)\n");
							 /* shall we consider the END flag for the closing loop or for
							 * the opening one or for both ???
							 * code assumes for closing loop only
							 */
							 wwo->lpLoopPtr = lpWaveHdr;
						 } else {
							 wwo->lpLoopPtr = NULL;
						 }
						 wwo->lpPlayPtr = lpWaveHdr->lpNext;
					 }
				 } else {
					 wwo->lpPlayPtr = lpWaveHdr->lpNext;
				 }
				 wwo->dwOffCurrHdr = 0;
				 if ((wwo->dwRemain -= count) == 0) {
					 wwo->dwRemain = wwo->dwFragmentSize;
				 }
			 }
			 continue; /* try to go to use next wavehdr */
		 } else {
			 count = write_qnx_audio (wwo->unixdev, lpData + wwo->dwOffCurrHdr, wwo->dwRemain);
			 
			 //OP_Sleep(1);
			 if (count > 0) {
				 DWORD   tc = GetTickCount();
				 
				 if(wwo->dwLastFragDone /* + guard time ?? */ < tc)
					 wwo->dwLastFragDone = tc;
				 wwo->dwLastFragDone += (wwo->dwRemain * 1000) / wwo->format.wf.nAvgBytesPerSec;
				 
				 wwo->dwOffCurrHdr += count;
				 wwo->dwRemain = wwo->dwFragmentSize;
			 }
		 }
	}
}//static  BOOL    wodPlayer_WriteFragments(WINE_WAVEOUT* wwo)


int wodPlayer_Message(WINE_WAVEOUT *wwo, int msg, DWORD param)
{
	EnterCriticalSection(&wwo->msg_crst);
	if((wwo->msg_tosave == wwo->msg_toget) /* buffer overflow ? */
		&&  (wwo->messages[wwo->msg_toget].msg))
	{
		ERR("buffer overflow !?\n");
		LeaveCriticalSection(&wwo->msg_crst);
		return 0;
	}
	
	wwo->messages[wwo->msg_tosave].msg = msg;
	wwo->messages[wwo->msg_tosave].param = param;
	wwo->msg_tosave++;
	if(wwo->msg_tosave > WWO_RING_BUFFER_SIZE-1)
		wwo->msg_tosave = 0;
	LeaveCriticalSection(&wwo->msg_crst);
	/* signal a new message */
	SetEvent(wwo->msg_event);
	return 1;
}//int wodPlayer_Message(WINE_WAVEOUT *wwo, int msg, DWORD param)

int wodPlayer_RetrieveMessage(WINE_WAVEOUT *wwo, int *msg, DWORD *param)
{
	EnterCriticalSection(&wwo->msg_crst);
	
	if(wwo->msg_toget == wwo->msg_tosave) /* buffer empty ? */
	{
		LeaveCriticalSection(&wwo->msg_crst);
		return 0;
	}
	
	*msg = wwo->messages[wwo->msg_toget].msg;
	wwo->messages[wwo->msg_toget].msg = 0;
	*param = wwo->messages[wwo->msg_toget].param;
	wwo->msg_toget++;
	if(wwo->msg_toget > WWO_RING_BUFFER_SIZE-1)
		wwo->msg_toget = 0;
	LeaveCriticalSection(&wwo->msg_crst);
	return 1;
}//int wodPlayer_RetrieveMessage(WINE_WAVEOUT *wwo, int *msg, DWORD *param)

 /**************************************************************************
 * 				wodPlayer_Notify		[internal]
 *
 * wodPlayer helper. Notifies (and remove from queue) all the wavehdr which content
 * have been played (actually to speaker, not to unixdev fd).
*/
static  void    wodPlayer_Notify(WINE_WAVEOUT* wwo, WORD uDevID, BOOL force)
{
	LPWAVEHDR     lpWaveHdr;
	DWORD     tc = GetTickCount();
	
	while(wwo->lpQueuePtr &&
		(force ||
		(wwo->lpQueuePtr != wwo->lpPlayPtr && wwo->lpQueuePtr != wwo->lpLoopPtr)))
	{
		lpWaveHdr = wwo->lpQueuePtr;
		
		if(lpWaveHdr->reserved > tc && !force) break;
		
		wwo->dwPlayedTotal += lpWaveHdr->dwBufferLength;
		wwo->lpQueuePtr = lpWaveHdr->lpNext;
		
		lpWaveHdr->dwFlags &= ~WHDR_INQUEUE;
		lpWaveHdr->dwFlags |= WHDR_DONE;
		
		if(OSS_NotifyClient(uDevID, WOM_DONE, (DWORD)lpWaveHdr, 0) != MMSYSERR_NOERROR)
		{
			WARN("can't notify client !\n");
		}
	}
}//static  void    wodPlayer_Notify(WINE_WAVEOUT* wwo, WORD uDevID, BOOL force)

 /**************************************************************************
 * 				wodPlayer_Reset			[internal]
 *
 * wodPlayer helper. Resets current output stream.
*/
static  void    wodPlayer_Reset(WINE_WAVEOUT* wwo, WORD uDevID, BOOL reset)
{
	/* updates current notify list */
	wodPlayer_Notify(wwo, uDevID, FALSE);
	/* flush all possible output */
	if(snd_pcm_playback_drain(wwo->unixdev)<0)
	{
		perror("ioctl SNDCTL_DSP_RESET");
		wwo->hThread = 0;
		wwo->state = WINE_WS_STOPPED;
		ExitThread((void *)-1);
	}
	
	wwo->dwOffCurrHdr = 0;
	wwo->dwRemain = wwo->dwFragmentSize;
	if (reset) {
		/* empty notify list */
		wodPlayer_Notify(wwo, uDevID, TRUE);
		
		wwo->lpPlayPtr = wwo->lpQueuePtr = wwo->lpLoopPtr = NULL;
		wwo->state = WINE_WS_STOPPED;
		wwo->dwPlayedTotal = 0;
	} else {
		/* FIXME: this is not accurate when looping, but can be do better ? */
		wwo->lpPlayPtr = (wwo->lpLoopPtr) ? wwo->lpLoopPtr : wwo->lpQueuePtr;
		wwo->state = WINE_WS_PAUSED;
	}
}//static  void    wodPlayer_Reset(WINE_WAVEOUT* wwo, WORD uDevID, BOOL reset)

 /**************************************************************************
 * 				wodPlayer			[internal]
*/
void wodPlayer(LPVOID pmt)
{
	WORD      uDevID = (DWORD)pmt;
	WINE_WAVEOUT* wwo = (WINE_WAVEOUT*)&WOutDev[uDevID];
	WAVEHDR*      lpWaveHdr;
	DWORD     dwSleepTime;
	int           msg;
	DWORD     param;
	DWORD     tc;
	
	wwo->state = WINE_WS_STOPPED;
	
	wwo->dwLastFragDone = 0;
	wwo->dwOffCurrHdr = 0;
	wwo->dwRemain = wwo->dwFragmentSize;
	wwo->lpQueuePtr = wwo->lpPlayPtr = wwo->lpLoopPtr = NULL;
	wwo->dwPlayedTotal = 0;
	
	SetEvent(wwo->hEvent);
	
	for (;;) {
	/* wait for dwSleepTime or an event in thread's queue
	* FIXME:
	* - is wait time calculation optimal ?
	* - these 100 ms parts should be changed, but Eric reports
	*   that the wodPlayer thread might lock up if we use INFINITE
		*   (strange !), so I better don't change that now... */
		if(wwo->state != WINE_WS_PLAYING)
			dwSleepTime = 100;
		else
		{
			tc = GetTickCount();
			if(tc < wwo->dwLastFragDone)
			{
			/* calculate sleep time depending on when the last fragment
				will be played */
				dwSleepTime = (wwo->dwLastFragDone - tc)*7/10;
				if(dwSleepTime > 50)
					dwSleepTime = 50;
			}
			else
				dwSleepTime	= 0;
		}
		
		if (dwSleepTime) {
			WaitForSingleObject(wwo->msg_event, dwSleepTime);
		}
		while (wodPlayer_RetrieveMessage(wwo, &msg, &param)) {
			switch (msg) {
			case WINE_WM_PAUSING:
				wodPlayer_Reset(wwo, uDevID, FALSE);
				wwo->state = WINE_WS_PAUSED;
				SetEvent(wwo->hEvent);
				break;
			case WINE_WM_RESTARTING:
				wwo->state = WINE_WS_PLAYING;
				SetEvent(wwo->hEvent);
				break;
			case WINE_WM_HEADER:
				lpWaveHdr = (LPWAVEHDR)param;
				
				/* insert buffer at the end of queue */
				{
					LPWAVEHDR*    wh;
					for(wh = &(wwo->lpQueuePtr); *wh; wh = &((*wh)->lpNext));
					*wh = lpWaveHdr;
				}
				if(!wwo->lpPlayPtr)	wwo->lpPlayPtr = lpWaveHdr;
				if(wwo->state == WINE_WS_STOPPED)
					wwo->state = WINE_WS_PLAYING;
				break;
			case WINE_WM_RESETTING:
				wodPlayer_Reset(wwo, uDevID, TRUE);
				SetEvent(wwo->hEvent);
				break;
			case WINE_WM_CLOSING:
				/* sanity check: this should not happen since the device must have been reset before */
				if(wwo->lpQueuePtr || wwo->lpPlayPtr) ERR("out of sync\n");
				wwo->hThread = 0;
				wwo->state = WINE_WS_CLOSED;
				SetEvent(wwo->hEvent);
				ExitThread(0);
				/* shouldn't go here */
			default:
				FIXME("unknown message %d\n", msg);
				break;
			}
		}
		if (wwo->state == WINE_WS_PLAYING) {
			wodPlayer_WriteFragments(wwo);
		}
		wodPlayer_Notify(wwo, uDevID, FALSE);
		
	}
	ExitThread(0);
	/* just for not generating compilation warnings... should never be executed */
	return ;
}//void wodPlayer(LPVOID pmt)



 /********************************************************
 *   wodMessage functions:
 */
 
 /**************************************************************************
 * 			wodGetDevCaps				[internal]
 */
 static DWORD wodGetDevCaps(UINT16 wDevID, LPWAVEOUTCAPS lpCaps, DWORD dwSize)
 {
	 
	 if(lpCaps == NULL) return MMSYSERR_NOTENABLED;
	 
	 if(wDevID >= MAX_WAVEOUTDRV)
	 {
		 return MMSYSERR_BADDEVICEID;
	 }
	 
	 memcpy(lpCaps, &WOutDev[wDevID].caps, min(dwSize, sizeof(*lpCaps)));
	 return MMSYSERR_NOERROR;
 }//static DWORD wodGetDevCaps(UINT16 wDevID, LPWAVEOUTCAPS lpCaps, DWORD dwSize)
 
 
  /**************************************************************************
  * 				wodOpen				[internal]
 */
 static DWORD wodOpen(UINT16 wDevID, LPWAVEOPENDESC lpDesc, DWORD dwFlags)
 {
	 snd_pcm_t *audio;
	 int rtn=0, card=0, dev=0;
	 //	int         audio;
	 int         format, rerror=0;
	 int         sample_rate;
	 int         dsp_stereo;
	 int         fragment_size;
	 int         audio_fragment;
	 char        audio_dev[500]={0};
	 WINE_WAVEOUT*   wwo;
	int count;
	 snd_pcm_channel_setup_t setup;
	snd_pcm_channel_info_t pcm_info;
	snd_pcm_channel_params_t pp;
	 
	 
	 if(lpDesc == NULL)
	 {
		 WARN("Invalid Parameter !\n");
		 return MMSYSERR_INVALPARAM;
	 }
#if 0
	 if(wDevID >= MAX_WAVEOUTDRV)
	 {
		 return MMSYSERR_ALLOCATED; // is BADDEVICEID IN NEW CODE
	 }
#endif
	 /* only PCM format is supported so far... */
	 if(lpDesc->lpFormat->wFormatTag != WAVE_FORMAT_PCM ||
		 lpDesc->lpFormat->nChannels == 0 ||
		 lpDesc->lpFormat->nSamplesPerSec == 0)
	 {
		 WARN("Bad format: tag=%04X nChannels=%d nSamplesPerSec=%ld !\n",
			 lpDesc->lpFormat->wFormatTag, lpDesc->lpFormat->nChannels,
			 lpDesc->lpFormat->nSamplesPerSec);
		 return WAVERR_BADFORMAT;
	 }
	 
	 if(dwFlags & WAVE_FORMAT_QUERY)
	 {
		 WARN("Query format: tag=%04X nChannels=%d nSamplesPerSec=%ld !\n",
			 lpDesc->lpFormat->wFormatTag, lpDesc->lpFormat->nChannels,
			 lpDesc->lpFormat->nSamplesPerSec);
		 return MMSYSERR_NOERROR;
	 }
	 
	 wwo = &WOutDev[wDevID];
	 
	 GetAudioDev(audio_dev);
	 
	 if((rtn = snd_pcm_open_preferred (&audio, &card, &dev, SND_PCM_OPEN_PLAYBACK)) < 0)
	 {
		 WARN("can't open sound device %s (%s)!\n", audio_dev, strerror(errno));
		 return MMSYSERR_ALLOCATED;
	 }
	 
	 //	fcntl(audio, F_SETFD, 1); /* set close on exec flag */
	 wwo->unixdev = audio;
	 wwo->wFlags = HIWORD(dwFlags & CALLBACK_TYPEMASK);
	 
	 memcpy(&wwo->waveDesc, lpDesc,       sizeof(WAVEOPENDESC));
	 memcpy(&wwo->format,   lpDesc->lpFormat, sizeof(PCMWAVEFORMAT));
	 
	 if(wwo->format.wBitsPerSample == 0 || (wwo->format.wBitsPerSample >16 ))
	 {
		 WARN("Resetting zeroed wBitsPerSample\n");
		 wwo->format.wBitsPerSample = 8 *
			 (wwo->format.wf.nAvgBytesPerSec /
			 wwo->format.wf.nSamplesPerSec) /
			 wwo->format.wf.nChannels;
	 }
	 
	 /* shockwave player uses only 4 1k-fragments at a rate of 22050 bytes/sec
	 * thus leading to 46ms per fragment, and a turnaround time of 185ms
	 */
	 /* 16 fragments max, 2^10=1024 bytes per fragment */
//	 audio_fragment = 0x000F000A;
	 
	 
	 sample_rate = wwo->format.wf.nSamplesPerSec;
	 dsp_stereo = (wwo->format.wf.nChannels > 1) ? 2 : 1;
	 format = (wwo->format.wBitsPerSample == 16) ? 16 : 8;
	 
	memset (&pp, 0, sizeof (pp));
	
	pp.mode = SND_PCM_MODE_BLOCK;
	pp.channel = SND_PCM_CHANNEL_PLAYBACK;
	pp.start_mode = SND_PCM_START_DATA;
	pp.stop_mode = SND_PCM_STOP_STOP;
	
	pp.buf.block.frag_size = 568;
	pp.buf.block.frags_max = 32;
	pp.buf.block.frags_min = 1;
	
	pp.format.interleave = 0;
	pp.format.rate = sample_rate;
	pp.format.voices = 1;
	pp.format.format = SND_PCM_SFMT_S16_LE;
	
	if((rtn = snd_pcm_channel_params (audio, &pp)) < 0)
	{
		perror ("setRate channel_params:1");
		return -1;
	}
	
	       //MGS add this so it will write a useful amount of information
         count = snd_pcm_channel_setup(wwo->unixdev, &setup);
        if (count >= 0) {
                wwo->dwFragmentSize = setup.buf.block.frag_size;        /* set t
                                                                         * value
        } else {
                wwo->dwFragmentSize = 568;     /* set this to a useful value */
        }

	//if(rtn=snd_pcm_nonblock_mode(audio,1))
	//{
		//perror ("setnonblock channel:1");
		//return -1;
	//}
 
	if((rtn = snd_pcm_channel_prepare (audio, SND_PCM_CHANNEL_PLAYBACK)) < 0)
	{
		perror ("setRate channel_prepare:1");
		return -1;
	}
	
	 wwo->msg_toget = 0;
	 wwo->msg_tosave = 0;
	 wwo->msg_event = CreateEvent(NULL, FALSE, FALSE, NULL);
	 memset(wwo->messages, 0, sizeof(WWO_MSG)*WWO_RING_BUFFER_SIZE);

	 InitializeCriticalSection(&wwo->msg_crst);
	 
	 if(!(dwFlags & WAVE_DIRECTSOUND))
	 {
		 wwo->hEvent = CreateEvent(NULL, FALSE, FALSE, NULL);
		 wwo->hThread = CreateThread(NULL, 0, wodPlayer, (LPVOID)(DWORD)wDevID, 0, &(wwo->dwThreadID));
		 //wwo->hThread = OP_CreateThread(0, (THREAD_PROCEDURE_T)wodPlayer, (LPVOID)(DWORD)wDevID );
		 WaitForSingleObject(wwo->hEvent, INFINITE);
	 }
	 else
	 {
		 wwo->hEvent = (HEVENT_T) INVALID_HANDLE_VALUE;
		 wwo->hThread = (HTHREAD_T)INVALID_HANDLE_VALUE;
		 wwo->dwThreadID = 0;
	 }
	 
	 //	fprintf(stderr, "fd=%d fragmentSize=%ld\n", wwo->unixdev, wwo->dwFragmentSize);
	 if(wwo->dwFragmentSize % wwo->format.wf.nBlockAlign)
		 ERR("Fragment doesn't contain an integral number of data blocks\n");
	 
	 //	fprintf(stderr, "wBitsPerSample=%u, nAvgBytesPerSec=%lu, nSamplesPerSec=%lu, nChannels=%u nBlockAlign=%u!\n",
	 //		  wwo->format.wBitsPerSample, wwo->format.wf.nAvgBytesPerSec,
	 //		  wwo->format.wf.nSamplesPerSec, wwo->format.wf.nChannels,
	 //		  wwo->format.wf.nBlockAlign);
	 
	 if(OSS_NotifyClient(wDevID, WOM_OPEN, 0L, 0L) != MMSYSERR_NOERROR)
	 {
		 WARN("can't notify client !\n");
		 return MMSYSERR_INVALPARAM;
	 }
	 return MMSYSERR_NOERROR;
}//static DWORD wodOpen(UINT16 wDevID, LPWAVEOPENDESC lpDesc, DWORD dwFlags)

 /**************************************************************************
 * 				wodClose			[internal]
 */
 static DWORD wodClose(WORD wDevID)
 {
	 DWORD       ret = MMSYSERR_NOERROR;
	 WINE_WAVEOUT*   wwo;
	 
	 
	 if(wDevID >= MAX_WAVEOUTDRV || WOutDev[wDevID].unixdev == -1)
	 {
		 WARN("bad device ID !\n");
		 return MMSYSERR_BADDEVICEID;
	 }
	 
	 wwo = &WOutDev[wDevID];
	 if(wwo->lpQueuePtr)
	 {
		 WARN("buffers still playing !\n");
		 ret = WAVERR_STILLPLAYING;
	 }
	 else
	 {
		 if(wwo->hEvent != (HEVENT_T)INVALID_HANDLE_VALUE)
		 {
			 wodPlayer_Message(wwo, WINE_WM_CLOSING, 0);
			 WaitForSingleObject(wwo->hEvent, INFINITE);
			 OP_DestroyEvent(wwo->hEvent);
		 }
		 if(wwo->mapping)
		 {
			 munmap(wwo->mapping, wwo->maplen);
			 wwo->mapping = NULL;
		 }
		 
		 snd_pcm_close (wwo->unixdev);
		 //		close(wwo->unixdev);
		 wwo->unixdev = -1;
		 wwo->dwFragmentSize = 0;
		 if(OSS_NotifyClient(wDevID, WOM_CLOSE, 0L, 0L) != MMSYSERR_NOERROR)
		 {
			 WARN("can't notify client !\n");
			 ret = MMSYSERR_INVALPARAM;
		 }
	 }
	 return ret;
 }//static DWORD wodClose(WORD wDevID)
 
  /**************************************************************************
  * 				wodWrite			[internal]
  *
 */
 static DWORD wodWrite(WORD wDevID, LPWAVEHDR lpWaveHdr, DWORD dwSize)
 {
	 
	 /* first, do the sanity checks... */
	 if(wDevID >= MAX_WAVEOUTDRV || WOutDev[wDevID].unixdev == -1)
	 {
		 WARN("bad dev ID !\n");
		 return MMSYSERR_BADDEVICEID;
	 }
	 
	 if(lpWaveHdr->lpData == NULL || !(lpWaveHdr->dwFlags & WHDR_PREPARED))
		 return WAVERR_UNPREPARED;
	 
	 if(lpWaveHdr->dwFlags & WHDR_INQUEUE)
		 return WAVERR_STILLPLAYING;
	 
	 lpWaveHdr->dwFlags &= ~WHDR_DONE;
	 lpWaveHdr->dwFlags |= WHDR_INQUEUE;
	 lpWaveHdr->lpNext = 0;
	 
	 //	fprintf(stderr, "imhere[3-HEADER]\n");
	 wodPlayer_Message(&WOutDev[wDevID], WINE_WM_HEADER, (DWORD)lpWaveHdr);
	 
	 return MMSYSERR_NOERROR;
 }//static DWORD wodWrite(WORD wDevID, LPWAVEHDR lpWaveHdr, DWORD dwSize)
 
  /**************************************************************************
  * 				wodPrepare			[internal]
 */
 static DWORD wodPrepare(WORD wDevID, LPWAVEHDR lpWaveHdr, DWORD dwSize)
 {
	 
	 if(wDevID >= MAX_WAVEOUTDRV)
	 {
		 WARN("bad device ID !\n");
		 return MMSYSERR_BADDEVICEID;
	 }
	 
	 if(lpWaveHdr->dwFlags & WHDR_INQUEUE)
		 return WAVERR_STILLPLAYING;
	 
	 lpWaveHdr->dwFlags |= WHDR_PREPARED;
	 lpWaveHdr->dwFlags &= ~WHDR_DONE;
	 return MMSYSERR_NOERROR;
 }//static DWORD wodPrepare(WORD wDevID, LPWAVEHDR lpWaveHdr, DWORD dwSize)
 
  /**************************************************************************
  * 				wodUnprepare			[internal]
 */
 static DWORD wodUnprepare(WORD wDevID, LPWAVEHDR lpWaveHdr, DWORD dwSize)
 {
	 
	 if(wDevID >= MAX_WAVEOUTDRV)
	 {
		 WARN("bad device ID !\n");
		 return MMSYSERR_BADDEVICEID;
	 }
	 
	 if(lpWaveHdr->dwFlags & WHDR_INQUEUE)
		 return WAVERR_STILLPLAYING;
	 
	 lpWaveHdr->dwFlags &= ~WHDR_PREPARED;
	 lpWaveHdr->dwFlags |= WHDR_DONE;
	 
	 return MMSYSERR_NOERROR;
 }//static DWORD wodUnprepare(WORD wDevID, LPWAVEHDR lpWaveHdr, DWORD dwSize)
 
  /**************************************************************************
  * 			wodPause				[internal]
 */
 static DWORD wodPause(WORD wDevID)
 {
	 
	 if(wDevID >= MAX_WAVEOUTDRV || WOutDev[wDevID].unixdev == -1)
	 {
		 WARN("bad device ID !\n");
		 return MMSYSERR_BADDEVICEID;
	 }
	 
	 wodPlayer_Message(&WOutDev[wDevID], WINE_WM_PAUSING, 0);
	 WaitForSingleObject(WOutDev[wDevID].hEvent, INFINITE);
	 
	 return MMSYSERR_NOERROR;
 }//static DWORD wodPause(WORD wDevID)
 
  /**************************************************************************
  * 			wodRestart				[internal]
 */
 static DWORD wodRestart(WORD wDevID)
 {
	 
	 if(wDevID >= MAX_WAVEOUTDRV || WOutDev[wDevID].unixdev == -1)
	 {
		 WARN("bad device ID !\n");
		 return MMSYSERR_BADDEVICEID;
	 }
	 
	 if(WOutDev[wDevID].state == WINE_WS_PAUSED)
	 {
		 wodPlayer_Message(&WOutDev[wDevID], WINE_WM_RESTARTING, 0);
		 WaitForSingleObject(WOutDev[wDevID].hEvent, INFINITE);
	 }
	 
	 /* FIXME: is NotifyClient with WOM_DONE right ? (Comet Busters 1.3.3 needs this notification) */
	 /* FIXME: Myst crashes with this ... hmm -MM
	 if (OSS_NotifyClient(wDevID, WOM_DONE, 0L, 0L) != MMSYSERR_NOERROR) {
	 WARN("can't notify client !\n");
	 return MMSYSERR_INVALPARAM;
	 }
	 */
	 
	 return MMSYSERR_NOERROR;
 }//static DWORD wodRestart(WORD wDevID)
 
  /**************************************************************************
  * 			wodReset				[internal]
 */
 static DWORD wodReset(WORD wDevID)
 {
	 
	 if(wDevID >= MAX_WAVEOUTDRV || WOutDev[wDevID].unixdev == -1)
	 {
		 WARN("bad device ID !\n");
		 return MMSYSERR_BADDEVICEID;
	 }
	 
	 wodPlayer_Message(&WOutDev[wDevID], WINE_WM_RESETTING, 0);
	 WaitForSingleObject(WOutDev[wDevID].hEvent, INFINITE);
	 
	 return MMSYSERR_NOERROR;
 }//static DWORD wodReset(WORD wDevID)
 
 
  /**************************************************************************
  * 				wodGetPosition			[internal]
 */
 static DWORD wodGetPosition(WORD wDevID, LPMMTIME lpTime, DWORD uSize)
 {
	 int     time;
	 DWORD       val;
	 WINE_WAVEOUT*   wwo;
	 
	 
	 if(wDevID >= MAX_WAVEOUTDRV || WOutDev[wDevID].unixdev == -1)
	 {
		 WARN("bad device ID !\n");
		 return MMSYSERR_BADDEVICEID;
	 }
	 
	 if(lpTime == NULL) return MMSYSERR_INVALPARAM;
	 
	 wwo = &WOutDev[wDevID];
	 val = wwo->dwPlayedTotal;
	 
	 TRACE( "wType=%04X wBitsPerSample=%u nSamplesPerSec=%lu nChannels=%u nAvgBytesPerSec=%lu\n",
		 lpTime->wType, wwo->format.wBitsPerSample,
		 wwo->format.wf.nSamplesPerSec, wwo->format.wf.nChannels,
		 wwo->format.wf.nAvgBytesPerSec);
	 
	 switch(lpTime->wType)
	 {
	 case TIME_BYTES:
		 lpTime->u.cb = val;
		 break;
	 case TIME_SAMPLES:
		 lpTime->u.sample = val * 8 / wwo->format.wBitsPerSample;
		 break;
	 case TIME_SMPTE:
		 time = val / (wwo->format.wf.nAvgBytesPerSec / 1000);
		 lpTime->u.smpte.hour = time / 108000;
		 time -= lpTime->u.smpte.hour * 108000;
		 lpTime->u.smpte.min = time / 1800;
		 time -= lpTime->u.smpte.min * 1800;
		 lpTime->u.smpte.sec = time / 30;
		 time -= lpTime->u.smpte.sec * 30;
		 lpTime->u.smpte.frame = time;
		 lpTime->u.smpte.fps = 30;
		 TRACE( "TIME_SMPTE=%02u:%02u:%02u:%02u\n",
			 lpTime->u.smpte.hour, lpTime->u.smpte.min,
			 lpTime->u.smpte.sec, lpTime->u.smpte.frame);
		 break;
	 default:
		 FIXME("Format %d not supported ! use TIME_MS !\n", lpTime->wType);
		 lpTime->wType = TIME_MS;
	 case TIME_MS:
		 lpTime->u.ms = val / (wwo->format.wf.nAvgBytesPerSec / 1000);
		 break;
	 }
	 return MMSYSERR_NOERROR;
 }//static DWORD wodGetPosition(WORD wDevID, LPMMTIME lpTime, DWORD uSize)
 
  /**************************************************************************
  * 				wodGetVolume			[internal]
 */
 static DWORD wodGetVolume(WORD wDevID, LPDWORD lpdwVol)
 {
	 int     mixer;
	 int     volume;
	 DWORD   left, right;
	 
	 
	 if(lpdwVol == NULL)
		 return MMSYSERR_NOTENABLED;
	 if((mixer = open(MIXER_DEV, O_RDONLY|O_NDELAY)) < 0)
	 {
		 WARN("mixer device not available !\n");
		 return MMSYSERR_NOTENABLED;
	 }
	 if(ioctl(mixer, SOUND_MIXER_READ_PCM, &volume) == -1)
	 {
		 WARN("unable read mixer !\n");
		 return MMSYSERR_NOTENABLED;
	 }
	 close(mixer);
	 left = LOBYTE(volume);
	 right = HIBYTE(volume);
	 //fprintf(stderr, "left=%ld right=%ld !\n", left, right);
	 *lpdwVol = ((left * 0xFFFFl) / 100) + (((right * 0xFFFFl) / 100) << 16);
	 return MMSYSERR_NOERROR;
 }//static DWORD wodGetVolume(WORD wDevID, LPDWORD lpdwVol)
 
 
  /**************************************************************************
  * 				wodSetVolume			[internal]
 */
 static DWORD wodSetVolume(WORD wDevID, DWORD dwParam)
 {
	 int     mixer;
	snd_mixer_t *mixer_handle;
	int card=-1;
	int dev=-1;
	snd_mixer_group_t group;
	int ret=0;

	 int     volume;
	 DWORD   left, right;

// MGS HELPME This needs tp be fixed
	 
	 left  = (LOWORD(dwParam) * 100) / 0xFFFFl;
	 right = (HIWORD(dwParam) * 100) / 0xFFFFl;
	 volume = left + (right << 8);
	if ((ret=snd_mixer_open(&mixer_handle,card,dev))<0)
	 {
		 WARN("mixer device not available !\n");
		 return MMSYSERR_NOTENABLED;
	 }
	ret=snd_mixer_group_read(mixer_handle,&group);
	if (ret<0)
	 {
		 WARN("unable set mixer !\n");
		snd_mixer_close(mixer_handle);
		 return MMSYSERR_NOTENABLED;
	 }
	 left  = (LOWORD(dwParam) * 100) / (group.max-group.min);
	 right = (HIWORD(dwParam) * 100) / (group.max-group.min);

	group.volume.names.front_left=left;
	group.volume.names.front_right=right;

	ret=snd_mixer_group_write(mixer_handle,&group);
	if (ret<0)
	 {
		 WARN("unable set mixer !\n");
		snd_mixer_close(mixer_handle);
		 return MMSYSERR_NOTENABLED;
	 }
	
	snd_mixer_close(mixer_handle);
	 return MMSYSERR_NOERROR;
 }//static DWORD wodSetVolume(WORD wDevID, DWORD dwParam)
 
  /**************************************************************************
  * 				wodGetNumDevs			[internal]
 */
 static  DWORD   wodGetNumDevs(void)
 {
	int rval= -1;
	
	int number=1;
	int cards;
	int devices;
	int mode=SND_PCM_CHANNEL_PLAYBACK;
	int format=SND_PCM_FMT_S16_LE;
	
	rval = snd_pcm_find( (unsigned int)format,  &number,  &cards,  &devices,  mode );

	return number;
 }//static  DWORD   wodGetNumDevs(void)
 
  /**************************************************************************
  * 				wodMessage
 */
 DWORD OSS_wodMessage(UINT16 wDevID, UINT wMsg, DWORD dwUser, DWORD dwParam1, DWORD dwParam2)
 {
	 switch(wMsg)
	 {
	 case WODM_OPEN:
		 return wodOpen(wDevID, (LPWAVEOPENDESC)dwParam1, dwParam2);
	 case WODM_CLOSE:
		 return wodClose(wDevID);
	 case WODM_WRITE:
		 return wodWrite(wDevID, (LPWAVEHDR)dwParam1, dwParam2);
	 case WODM_PAUSE:
		 return wodPause     (wDevID);
	 case WODM_GETPOS:
		 return wodGetPosition(wDevID, (LPMMTIME)dwParam1, dwParam2);
	 case WODM_BREAKLOOP:
		 return MMSYSERR_NOTSUPPORTED;
	 case WODM_PREPARE:
		 return wodPrepare(wDevID, (LPWAVEHDR)dwParam1, dwParam2);
	 case WODM_UNPREPARE:
		 return wodUnprepare(wDevID, (LPWAVEHDR)dwParam1, dwParam2);
	 case WODM_GETDEVCAPS:
		 return wodGetDevCaps    (wDevID, (LPWAVEOUTCAPS)dwParam1,   dwParam2);
	 case WODM_GETNUMDEVS:
		 return wodGetNumDevs    ();
	 case WODM_GETPITCH:
		 return MMSYSERR_NOTSUPPORTED;
	 case WODM_SETPITCH:
		 return MMSYSERR_NOTSUPPORTED;
	 case WODM_GETPLAYBACKRATE:
		 return MMSYSERR_NOTSUPPORTED;
	 case WODM_SETPLAYBACKRATE:
		 return MMSYSERR_NOTSUPPORTED;
	 case WODM_GETVOLUME:
		 return wodGetVolume(wDevID, (LPDWORD)dwParam1);
	 case WODM_SETVOLUME:
		 return wodSetVolume(wDevID, dwParam1);
	 case WODM_RESTART:
		 return wodRestart(wDevID);
	 case WODM_RESET:
		 return wodReset(wDevID);
		 
	 default:
		 FIXME("unknown message %d!\n", wMsg);
	 }
	 return MMSYSERR_NOTSUPPORTED;
 }//DWORD OSS_wodMessage(UINT16 wDevID, UINT wMsg, DWORD dwUser, DWORD dwParam1, DWORD dwParam2)
 
 
 
 
 
  /**********************************************************************
  *           CALLBACK_CallDriverCallback
 */
 static LRESULT CallDriverCallback( FARPROC16 proc, HANDLE16 hDev, UINT16 msg, DWORD dwUser, LPARAM lp1, LPARAM lp2 )
 {
	 return proc( hDev, msg, dwUser, lp1, lp2 );
 }//static LRESULT CallDriverCallback( FARPROC16 proc, HANDLE16 hDev, UINT16 msg, DWORD dwUser, LPARAM lp1, LPARAM lp2 )
 
 const CALLBACKS_TABLE *Callbacks;
 
 /**************************************************************************
 * 				DriverCallback	[MMSYSTEM.31]
 */
 BOOL16 DriverCallback(DWORD dwCallBack, UINT16 uFlags, HANDLE16 hDev, WORD wMsg, DWORD dwUser, DWORD dwParam1, DWORD dwParam2)
 {
	 //LPWAVEOPENDESC	lpDesc; // MGS warning removal
	 
	 TRACE("DriverCallback:(dwCallback:%08lX, %04X, %04X, %04X, %08lX, %08lX, %08lX); !\n",
		 dwCallBack, uFlags, hDev, wMsg, dwUser, dwParam1, dwParam2);
	 switch(uFlags & DCB_TYPEMASK)
	 {
	 case DCB_NULL:
		 break;
	 case DCB_WINDOW:
		 //	if (!IsWindow32(dwCallBack)) return FALSE;
		 //	lpDesc = (LPWAVEOPENDESC) USER_HEAP_LIN_ADDR(hDev);
		 //	if (lpDesc == NULL) return FALSE;
		 
		 //			PostMessage16((HWND16)dwCallBack, wMsg, hDev, dwParam1);
		 break;
	 case DCB_TASK:
		 return FALSE;
	 case DCB_FUNCTION:
		 CallDriverCallback( (FARPROC16)dwCallBack,
			 hDev, wMsg, dwUser,
			 dwParam1, dwParam2 );
		 break;
	 case DCB_FUNC32:
		 //	((LPDRVCALLBACK32)dwCallBack)( hDev, wMsg, dwUser,
		 //                               dwParam1, dwParam2 );
		 break;
	 }
	 return TRUE;
 }//BOOL16 DriverCallback(DWORD dwCallBack, UINT16 uFlags, HANDLE16 hDev, WORD wMsg, DWORD dwUser, DWORD dwParam1, DWORD dwParam2)
 
 //#undef _DEBUG
#endif
#endif
 
