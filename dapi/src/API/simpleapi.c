/* **********************************************************************************
 *                			Copyright                         
 *
 *    Copyright © 2002 Fonix Coporation. All rights reserved.
 *
 *    This is an unpublished work, and is confidential and proprietary: 
 *    technology and information of Fonix corporation.  No part of this
 *    code may be reproduced, used or disclosed without written consent of 
 *    Fonix corporation in each and every instance.
 * ***********************************************************************************
 *  Rev Name    Date        Description
 *  --- -----   ----------- --------------------------------------------
 *	001	CAB		05/15/2002	Added copyright info
 *	002	MGS		04/14/2003	Fix for Epson Bug 5_3_001
 */

#if !defined OS_PALM && !defined CASIO_SH3
#include <stdio.h>
#endif
#include <string.h>

#include "kernel.h"
#include "tts.h"
#include "cm_def.h"
//#include "ph_def.h"
#include "ph_defs.h"
#include "ph_data.h"

#include "ls_def.h"   
#include "ls_prot.h"
#include "port.h"
extern int cmd_loop(LPTTS_HANDLE_T phTTS,char input);

#include "simpleapi.h"

extern int vtm_main(LPTTS_HANDLE_T phTTS);
extern int ph_main(LPTTS_HANDLE_T phTTS);
extern int lts_main(LPTTS_HANDLE_T phTTS);
extern int cmd_main(LPTTS_HANDLE_T phTTS);
extern void DTSetSampleRate( LPTTS_HANDLE_T phTTS, unsigned int uiSampRate );
#ifndef EPSON_ARM7
extern short cur_packet_number;
extern short max_packet_number;
#endif

#ifndef EPSON_ARM7
#ifndef OS_SYMBIAN
TTS_HANDLE_T hTTS;
LPTTS_HANDLE_T phTTS;
KSD_T Ksd_t;
#else
#include "GlobalDT.h"
#endif
#endif

//typedef unsigned char U8;
#ifndef OS_SYMBIAN
char *g_user_dict;
short *(*g_callback)(short *,long);
#endif


#ifdef _BIGENDIAN_
#define get_long_int(ptr) ((U32)\
                       ((((U8 *)(ptr))[0] << 24)  | \
                        (((U8 *)(ptr))[1] << 16)  | \
                        (((U8 *)(ptr))[2] << 8)  | \
                        (((U8 *)(ptr))[3])))

#else
#define get_long_int(ptr) ((U32)\
                       ((((U8 *)(ptr))[3] << 24)  | \
                        (((U8 *)(ptr))[2] << 16)  | \
                        (((U8 *)(ptr))[1] << 8)  | \
                        (((U8 *)(ptr))[0])))
#endif

#define PC_SAMPLE_RATE 11025
#define MULAW_SAMPLE_RATE 8000

#ifdef DICT_IN_MEMORY
extern const unsigned char main_dict[];

extern const unsigned char sp_main_dict[];
extern const unsigned char us_main_dict[];
extern const unsigned char gr_main_dict[];
extern const unsigned char la_main_dict[];
extern const unsigned char uk_main_dict[];
extern const unsigned char fr_main_dict[];
//currently there is no italian dictionary
//extern const unsigned char it_main_dict[];
#endif //DICT_IN_MEMORY

#ifdef OS_PALM
#pragma pcrelconstdata off
#endif
extern const short paul[];
extern const short us_paul_tune[];
extern const short fr_paul_tune[];
extern const short default_tune[];
extern const short fr_default_tune[];
#ifdef OS_PALM
#pragma pcrelconstdata on
#endif

extern void us_lts_loop_2(LPTTS_HANDLE_T phTTS,unsigned short *input);
extern void uk_lts_loop_2(LPTTS_HANDLE_T phTTS,unsigned short *input);
extern void gr_lts_loop_2(LPTTS_HANDLE_T phTTS,unsigned short *input);
extern void fr_lts_loop_2(LPTTS_HANDLE_T phTTS,unsigned short *input);
extern void sp_lts_loop_2(LPTTS_HANDLE_T phTTS,unsigned short *input);
extern void la_lts_loop_2(LPTTS_HANDLE_T phTTS,unsigned short *input);
extern void it_lts_loop_2(LPTTS_HANDLE_T phTTS,unsigned short *input);

extern int us_lts_main(LPTTS_HANDLE_T phTTS);
extern int uk_lts_main(LPTTS_HANDLE_T phTTS);
extern int gr_lts_main(LPTTS_HANDLE_T phTTS);
extern int fr_lts_main(LPTTS_HANDLE_T phTTS);
extern int sp_lts_main(LPTTS_HANDLE_T phTTS);
extern int la_lts_main(LPTTS_HANDLE_T phTTS);
extern int it_lts_main(LPTTS_HANDLE_T phTTS);

extern int us_lts_language_loaded( void );
extern int uk_lts_language_loaded( void );
extern int gr_lts_language_loaded( void );
extern int fr_lts_language_loaded( void );
extern int sp_lts_language_loaded( void );
extern int la_lts_language_loaded( void );
extern int it_lts_language_loaded( void );

#ifdef EPSON_ARM7

/* ******************************************************************
 *      Function Name: TextToSpeechInitTTP()
 *
 *      Description: 
 *
 *      Arguments:	short *(*callback)(short*,long)
 *					void *user_dict
 *
 *      Return Value: int
 *
 *      Comments:
 *
 * *****************************************************************/
int TextToSpeechInitTTP(LPTTS_HANDLE_T phTTS, PKSD_T pKsd_t, 
						PCMD_T pCmd_t, PLTS_T pLts_t, void *user_dict,
						U16 lang_id,U16 reset_all)
{
	int return_code;
	int i;
	int new_lang=0;

	char *maindict;

//	PKSD_T pKsd_t;
	if (reset_all)
	{
		memset(phTTS,0,sizeof(TTS_HANDLE_T));
		memset(pKsd_t,0,sizeof(KSD_T));
	}
	
//	phTTS->EmbCallbackRoutine=callback;
	phTTS->pKernelShareData=pKsd_t;
	phTTS->pCMDThreadData=pCmd_t;
	phTTS->pLTSThreadData=pLts_t;

//	g_callback=callback;
	g_user_dict=(char *)user_dict;

	if (pKsd_t->lang_curr !=lang_id)
		new_lang=1;

	pKsd_t->lang_curr=lang_id;

	switch (pKsd_t->lang_curr)
	{

	case LANG_english:
		phTTS->main_lts_loop=us_lts_loop_2;
		break;
	case LANG_french:
		phTTS->main_lts_loop=fr_lts_loop_2;
		break;
	case LANG_german:
		phTTS->main_lts_loop=gr_lts_loop_2;
		break;
	case LANG_spanish:
		phTTS->main_lts_loop=sp_lts_loop_2;
		break;
	case LANG_british:
		phTTS->main_lts_loop=uk_lts_loop_2;
		break;
	case LANG_latin_american:
		phTTS->main_lts_loop=la_lts_loop_2;
		break;
	}


	
//	for (i=0; i < MAX_languages; ++i)
	{
		i=lang_id;
		pKsd_t->adic_index[i] = 0;
		pKsd_t->udic_index[i] = 0;
		pKsd_t->fdic_index[i] = 0;
		pKsd_t->adic_data[i] = 0;
		pKsd_t->udic_data[i] = 0;
		pKsd_t->fdic_data[i] = 0;
		pKsd_t->adic_bytes[i] = 0;
		pKsd_t->udic_bytes[i] = 0;
		pKsd_t->fdic_bytes[i] = 0;
		pKsd_t->adic_entries[i] = 0;
		pKsd_t->udic_entries[i] = 0;
		pKsd_t->fdic_entries[i] = 0;
		pKsd_t->fdic_fc_entry[i]=0;
		pKsd_t->fdic_fc_entries[i]=0;
	}
	
	/* user dictionary load */
	if (user_dict)
	{
		pKsd_t->udic_entries[lang_id]=get_long_int((char *)user_dict);
		if (pKsd_t->udic_entries[lang_id])
		{
			pKsd_t->udic_bytes[lang_id]=get_long_int((char *)user_dict+4);
			pKsd_t->udic_index[lang_id]=((char *)user_dict)+8;
			pKsd_t->udic_data[lang_id]=((char *)user_dict)+(pKsd_t->udic_entries[0]*4)+8;
		}
	}
	
	switch (lang_id)
	{	
	case LANG_ENGLISH_US:
		maindict=us_main_dict;
		break;
	case LANG_SPANISH:
		maindict=sp_main_dict;
		break;
	case LANG_GERMAN:
		maindict=gr_main_dict;
		break;
	case LANG_LATIN_AMERICAN:
		maindict=la_main_dict;
		break;
	case LANG_ENGLISH_UK:
		maindict=uk_main_dict;
		break;
	case LANG_FRENCH:
		maindict=fr_main_dict;
		break;
	}


	/* main dictioanry load */
	if (maindict)
	{
		pKsd_t->fdic_entries[lang_id]=get_long_int(maindict);
		if (pKsd_t->fdic_entries[lang_id])
		{
			pKsd_t->fdic_bytes[lang_id]=get_long_int(maindict+4);
			pKsd_t->fdic_fc_entries[lang_id]=get_long_int(maindict+8);
			pKsd_t->fdic_fc_entry[lang_id]=(maindict+12);
			pKsd_t->fdic_index[lang_id]=(maindict+12+((pKsd_t->fdic_fc_entries[lang_id])*4));
			pKsd_t->fdic_data[lang_id]=(maindict+((pKsd_t->fdic_entries[lang_id]+3)*4) + ((pKsd_t->fdic_fc_entries[lang_id])*4));
		}
	}

	pKsd_t->phTTS = phTTS;
	
	if (reset_all)
	{
	pKsd_t->cmd_flush = FALSE;
	pKsd_t->spc_flush = FALSE;
	pKsd_t->halting = FALSE;
	pKsd_t->logflag  = 0;
	/* GL 11/15/1996 set defaulted Spanish to Latin */
	pKsd_t->modeflag = MODE_CITATION;
	pKsd_t->sayflag = SAY_CLAUSE;
	pKsd_t->pronflag = 0;
	pKsd_t->wbreak = FALSE;
	pKsd_t->text_flush = FALSE;
	pKsd_t->async_change = FALSE;
	pKsd_t->SamplePeriod = 9.07029478458E-5 ;  /* Initialize sample period */
	pKsd_t->spc_pkt_save = NULL_SPC_PACKET;
	pKsd_t->loaded_languages = NULL;           //MVP:05/10/96 Fixed an exception(When DECtalk runs on a machine without audio card)
	pKsd_t->volume=100; //set volume to 100;
	pKsd_t->vol_att=100; //set volume to 100;
	pKsd_t->vol_tone=100; //set volume to 100;

	phTTS->uiCurrentMsgNumber = 1;
	phTTS->uiLastTextMsgNumber = 0;
	phTTS->uiFlushMsgNumber = 0;
	}
	
#ifndef EPSON_ARM7
#ifndef OS_SYMBIAN
	cur_packet_number=0;
	max_packet_number=0;
#else
	GetGlobalDTPtr()->cur_packet_number = 0;
	GetGlobalDTPtr()->max_packet_number = 0;
#endif
#endif

//	return_code=vtm_main(phTTS);
//	if (return_code)
//		return(ERR_ERROR);
//	return_code=ph_main(phTTS);
//	if (return_code)
//		return(ERR_ERROR);
	// load_user_dictionary here...
	if (reset_all || new_lang)
	{
	switch (lang_id)
	{
	case LANG_ENGLISH_US:
		return_code=us_lts_main(phTTS);
		break;
	case LANG_SPANISH:
		return_code=sp_lts_main(phTTS);
		break;
	case LANG_ENGLISH_UK:
		return_code=uk_lts_main(phTTS);
		break;
	case LANG_GERMAN:
		return_code=gr_lts_main(phTTS);
		break;
	case LANG_LATIN_AMERICAN:
		return_code=la_lts_main(phTTS);
		break;
		/* Fix for Epson Bug 5_3_001 */
	case LANG_FRENCH:
		return_code=fr_lts_main(phTTS);
		break;
	}
	if (return_code)
		return(ERR_ERROR);
	}
	return_code=cmd_main(phTTS);
	if (return_code)
		return(ERR_ERROR);
//	DTSetSampleRate( phTTS, PC_SAMPLE_RATE );

	return(ERR_NOERROR);
}

int TextToSpeechInitPTS(LPTTS_HANDLE_T phTTS, PKSD_T pKsd_t, 
						PDPH_T pDph_t, PDPHSETTAR_ST pDphsettar,
						PVTM_T pVtm_t, SPEAKER_DEF_T **spdef_ptr, U16 output_format, 
						U16 reset_all)
{
	int return_code;
	int i;

//	PKSD_T pKsd_t;
//	memset(phTTS,0,sizeof(TTS_HANDLE_T));
//	memset(pKsd_t,0,sizeof(KSD_T));
	
//	phTTS->EmbCallbackRoutine=callback;
	phTTS->pKernelShareData=pKsd_t;
	phTTS->pPHThreadData=pDph_t;
	pDph_t->pSTphsettar=pDphsettar;
	phTTS->pVTMThreadData=pVtm_t;
	phTTS->PTS_location=0;
	phTTS->PTS_input_pos=0;

//	g_callback=callback;
//	g_user_dict=(char *)user_dict;
	

	pKsd_t->phTTS = phTTS;

#ifndef EPSON_ARM7
#ifndef OS_SYMBIAN
	cur_packet_number=0;
	max_packet_number=0;
#else
	GetGlobalDTPtr()->cur_packet_number = 0;
	GetGlobalDTPtr()->max_packet_number = 0;
#endif
#endif
	
	if (reset_all)
	{
		return_code=vtm_main(phTTS);
		if (return_code)
			return(ERR_ERROR);
		return_code=ph_main(phTTS);
		if (return_code)
			return(ERR_ERROR);
	}
	if (pKsd_t->lang_curr==LANG_FRENCH)
	{
		for (i=0;i<10;i++)
		{	
			if (spdef_ptr==NULL)
			{
				pDph_t->voidef[i]=paul;
				pDph_t->tunedef[i]=fr_paul_tune;
				pDph_t->voidef_8[i]=paul;
				pDph_t->tunedef_8[i]=fr_paul_tune;
			}
			else if (spdef_ptr[i]==NULL)
			{
				pDph_t->voidef[i]=paul;
				pDph_t->tunedef[i]=fr_paul_tune;
				pDph_t->voidef_8[i]=paul;
				pDph_t->tunedef_8[i]=fr_paul_tune;
			}
			else
			{
				pDph_t->voidef[i]=spdef_ptr[i];
				pDph_t->tunedef[i]=fr_default_tune;
				pDph_t->voidef_8[i]=spdef_ptr[i];
				pDph_t->tunedef_8[i]=fr_default_tune;
			}
		}
	}
	else
	{
		for (i=0;i<10;i++)
		{	
			if (spdef_ptr==NULL)
			{
				pDph_t->voidef[i]=paul;
				pDph_t->tunedef[i]=us_paul_tune;
				pDph_t->voidef_8[i]=paul;
				pDph_t->tunedef_8[i]=us_paul_tune;
			}
			else if (spdef_ptr[i]==NULL)
			{
				pDph_t->voidef[i]=paul;
				pDph_t->tunedef[i]=us_paul_tune;
				pDph_t->voidef_8[i]=paul;
				pDph_t->tunedef_8[i]=us_paul_tune;
			}
			else
			{
				pDph_t->voidef[i]=spdef_ptr[i];
				pDph_t->tunedef[i]=default_tune;
				pDph_t->voidef_8[i]=spdef_ptr[i];
				pDph_t->tunedef_8[i]=default_tune;
			}
		}
	}

	if (reset_all)
	{
		usevoice (phTTS, 0);
	}
	// load_user_dictionary here...
//	return_code=lts_main(phTTS);
//	if (return_code)
//		return(ERR_ERROR);
//	return_code=cmd_main(phTTS);
//	if (return_code)
//		return(ERR_ERROR);
		
//	DTSetSampleRate( phTTS, PC_SAMPLE_RATE );
	switch(output_format)
	{
		case WAVE_FORMAT_1M16:
			if (phTTS->pKernelShareData->uiSampleRate==MULAW_SAMPLE_RATE)
			{
				DTSetSampleRate( phTTS, PC_SAMPLE_RATE );
			}
			break;
		case WAVE_FORMAT_08M16:
			if (phTTS->pKernelShareData->uiSampleRate==PC_SAMPLE_RATE)
			{
				DTSetSampleRate( phTTS, MULAW_SAMPLE_RATE );
			}
			break;
	}

	((PDPH_T)(phTTS->pPHThreadData))->loadspdef=1;

	return(ERR_NOERROR);
}

#else
#ifdef MULTIPLE_LANGUAGES_LOADED
#ifdef NO_INITALIZED_GLOBALS
int ReInit;
#else
int ReInit = 0;
#endif
#endif
/* ******************************************************************
 *      Function Name: TextToSpeechInit()
 *
 *      Description: 
 *
 *      Arguments:	short *(*callback)(short*,long)
 *					void *user_dict
 *
 *      Return Value: int
 *
 *      Comments:
 *
 * *****************************************************************/
#ifndef OS_SYMBIAN
int TextToSpeechInit(short *(*callback)(short *,long), void *user_dict)
#else
int TextToSpeechInit(short *(*callback)(short *,long, void*), void *user_dict, void *user_data)
#endif
{
	int return_code;

#ifdef MULTIPLE_LANGUAGES_LOADED
	int prevLang = Ksd_t.lang_curr;
	int prevVoice = Ksd_t.last_voice;
#endif //MULTIPLE_LANGUAGES_LOADED

	PKSD_T pKsd_t;
#ifdef DICT_IN_MEMORY
	char *maindict;
	int i;
#endif //DICT_IN_MEMORY

#ifdef OS_SYMBIAN
	//	TTS_HANDLE_T* hTTS;
	LPTTS_HANDLE_T phTTS = NULL;
	KSD_T* Ksd_t = NULL;
	GlobalDTPtr	gpDT = NULL;
#ifdef DICT_IN_MEMORY
	PLTS_T pLts_t = NULL;
#endif //DICT_IN_MEMORY

	gpDT = GetGlobalDTPtr();

	if(!gpDT->simpleData.phTTS)
	{
		phTTS = (LPTTS_HANDLE_T)FNX_CALLOC(1, sizeof(TTS_HANDLE_T));
		phTTS->EmbCallbackRoutine=callback;
		phTTS->pUserData = user_data;

		Ksd_t = (KSD_T*)FNX_CALLOC(1, sizeof(KSD_T));
		phTTS->pKernelShareData=Ksd_t;
		pKsd_t=Ksd_t;

		gpDT->simpleData.phTTS = phTTS;
	}
	else //reset everything
	{
		phTTS = gpDT->simpleData.phTTS;
		pKsd_t = Ksd_t = phTTS->pKernelShareData;

/*		memset(phTTS,0,sizeof(TTS_HANDLE_T));
		memset(pKsd_t,0,sizeof(KSD_T));

		phTTS->EmbCallbackRoutine=callback;
		phTTS->pKernelShareData=pKsd_t;
		phTTS->pUserData = user_data;*/
	}

#ifdef DICT_IN_MEMORY
	memset(pLts_t,0,sizeof(LTS_T));
	phTTS->pLTSThreadData=pLts_t;
	gpDT->Lts_t = pLts_t;
#endif //DICT_IN_MEMORY

	gpDT->simpleData.g_callback = callback;

#else
	memset(&hTTS,0,sizeof(TTS_HANDLE_T));
	memset(&Ksd_t,0,sizeof(KSD_T));
	
	phTTS=&hTTS;
	phTTS->EmbCallbackRoutine=callback;
	phTTS->pKernelShareData=&Ksd_t;
	pKsd_t=&Ksd_t;

	g_callback=callback;
#endif //OS_SYMBIAN

#ifdef DICT_IN_MEMORY
#ifndef OS_SYMBIAN
	g_user_dict=(char *)user_dict;
#else
	gpDT->simpleData.g_user_dict=(char *)user_dict;
#endif
	
	for (i=0; i < MAX_languages; ++i)
	{
		pKsd_t->adic_index[i] = 0;
		pKsd_t->udic_index[i] = 0;
		pKsd_t->fdic_index[i] = 0;
		pKsd_t->adic_data[i] = 0;
		pKsd_t->udic_data[i] = 0;
		pKsd_t->fdic_data[i] = 0;
		pKsd_t->adic_bytes[i] = 0;
		pKsd_t->udic_bytes[i] = 0;
		pKsd_t->fdic_bytes[i] = 0;
		pKsd_t->adic_entries[i] = 0;
		pKsd_t->udic_entries[i] = 0;
		pKsd_t->fdic_entries[i] = 0;
		pKsd_t->fdic_fc_entry[i]=0;
		pKsd_t->fdic_fc_entries[i]=0;
	}
	
/*
GL 12/11/1996, set up the language flag pKsd_t->lang_curr
this flag will be used in CMD and phlog.c to pick up the language
depended code
*/
#ifdef MULTIPLE_LANGUAGES_LOADED
	if( !ReInit )
	{
		// order here determines the default order
		if( !us_lts_language_loaded() )
			pKsd_t->lang_curr = LANG_english;
		else if( !fr_lts_language_loaded() )
			pKsd_t->lang_curr = LANG_french;
		else if( !gr_lts_language_loaded() )
			pKsd_t->lang_curr = LANG_german;
		else if( !sp_lts_language_loaded() )
			pKsd_t->lang_curr = LANG_spanish;
		else if( !uk_lts_language_loaded() )
			pKsd_t->lang_curr = LANG_british;
		else if( !la_lts_language_loaded() )
			pKsd_t->lang_curr = LANG_latin_american;
		else if( !it_lts_language_loaded() )
			pKsd_t->lang_curr = LANG_italian;
		else
			return (1);
		ReInit = 1;
	}
	else
	{
		pKsd_t->lang_curr = prevLang;
		pKsd_t->last_voice = prevVoice;
	}
#else
	#ifdef ENGLISH_US
		pKsd_t->lang_curr = LANG_english;
	#endif	/* ENGLISH_US */
	#ifdef ENGLISH_UK
		pKsd_t->lang_curr = LANG_british;
	#endif	/* ENGLISH_UK */
	#ifdef SPANISH_SP
	  pKsd_t->lang_curr = LANG_spanish;
	#endif	/* SPANISH_SP */
	#ifdef SPANISH_LA
	  pKsd_t->lang_curr = LANG_latin_american;
	#endif	/* SPANISH_LA */
	#ifdef GERMAN
		pKsd_t->lang_curr = LANG_german;
	#endif	/* GERMAN */
	#ifdef FRENCH
		pKsd_t->lang_curr = LANG_french;
	#endif	/* FRENCH */
	#ifdef ITALIAN
		pKsd_t->lang_curr = LANG_italian;
	#endif	/* ITALIAN */
#endif //MULTIPLE_LANGUAGES_LOADED

	/* user dictionary load */
	if (user_dict)
	{
		pKsd_t->udic_entries[pKsd_t->lang_curr]=get_long_int((char *)user_dict);
		if (pKsd_t->udic_entries[pKsd_t->lang_curr])
		{
			pKsd_t->udic_bytes[pKsd_t->lang_curr]=get_long_int((char *)user_dict+4);
			pKsd_t->udic_index[pKsd_t->lang_curr]=(S32 *)((char *)user_dict)+8;
			pKsd_t->udic_data[pKsd_t->lang_curr] = ((unsigned char *)user_dict)+(pKsd_t->udic_entries[pKsd_t->lang_curr]*4)+8;
		}
	}
	
#ifdef MULTIPLE_LANGUAGES_LOADED
	switch( pKsd_t->lang_curr )
	{	
		case LANG_english:
			phTTS->main_lts_loop=(void *)&us_lts_loop_2;
			maindict = (char *)us_main_dict;
			break;
		case LANG_french:
			phTTS->main_lts_loop=(void *)&fr_lts_loop_2;
			maindict = (char *)fr_main_dict;
			break;
		case LANG_german:
			phTTS->main_lts_loop=(void *)&gr_lts_loop_2;
			maindict = (char *)gr_main_dict;
			break;
		case LANG_spanish:
			phTTS->main_lts_loop=(void *)&sp_lts_loop_2;
			maindict = (char *)sp_main_dict;
			break;
		case LANG_british:
			phTTS->main_lts_loop=(void *)&uk_lts_loop_2;
			maindict = (char *)uk_main_dict;
			break;
		case LANG_latin_american:
			phTTS->main_lts_loop=(void *)&la_lts_loop_2;
			maindict = (char *)la_main_dict;
			break;
		case LANG_italian:
			phTTS->main_lts_loop=(void *)&it_lts_loop_2;
			//currently there is no italian dictionary
//			maindict = (char *)it_main_dict;
			maindict = NULL;
			break;
	}
#else
		maindict = (char *)main_dict;
#endif //MULTIPLE_LANGUAGES_LOADED

	/* main dictionary load */
	if (maindict)
	{
		pKsd_t->fdic_entries[pKsd_t->lang_curr]=get_long_int(maindict);
		if (pKsd_t->fdic_entries[pKsd_t->lang_curr])
		{
			pKsd_t->fdic_bytes[pKsd_t->lang_curr]=get_long_int(maindict+4);
			pKsd_t->fdic_fc_entries[pKsd_t->lang_curr]=get_long_int(maindict+8);
			pKsd_t->fdic_fc_entry[pKsd_t->lang_curr]=((S32 *)(maindict+12));
			pKsd_t->fdic_index[pKsd_t->lang_curr]=((S32 *)(maindict+12+(pKsd_t->fdic_fc_entries[pKsd_t->lang_curr]*4)));
			pKsd_t->fdic_data[pKsd_t->lang_curr]=(unsigned char *)(maindict+((pKsd_t->fdic_entries[pKsd_t->lang_curr]+3)*4) + (pKsd_t->fdic_fc_entries[pKsd_t->lang_curr]*4));
		}
	}
#endif	//DICT_IN_MEMORY	
		
	pKsd_t->cmd_flush = FALSE;
	pKsd_t->spc_flush = FALSE;
	pKsd_t->halting = FALSE;
	pKsd_t->logflag  = 0;
	/* GL 11/15/1996 set defaulted Spanish to Latin */
	pKsd_t->modeflag = MODE_CITATION;
#ifdef SCI
	pKsd_t->modeflag |= MODE_READING ; 
#endif  //SCI
	pKsd_t->sayflag = SAY_CLAUSE;
	pKsd_t->pronflag = 0;
	pKsd_t->wbreak = FALSE;
	pKsd_t->text_flush = FALSE;
	pKsd_t->async_change = FALSE;
	pKsd_t->SamplePeriod = 9.07029478458E-5 ;  /* Initialize sample period */
	pKsd_t->spc_pkt_save = NULL_SPC_PACKET;
	pKsd_t->loaded_languages = NULL;           //MVP:05/10/96 Fixed an exception(When DECtalk runs on a machine without audio card)
	pKsd_t->volume=100; //set volume to 100;
	pKsd_t->vol_att=100; //set volume to 100;
	pKsd_t->vol_tone=100; //set volume to 100;

	pKsd_t->phTTS = phTTS;

	phTTS->uiCurrentMsgNumber = 1;
	phTTS->uiLastTextMsgNumber = 0;
	phTTS->uiFlushMsgNumber = 0;
	
#ifndef OS_SYMBIAN
	cur_packet_number=0;
	max_packet_number=0;
#else
	gpDT->cur_packet_number = 0;
	gpDT->max_packet_number = 0;
#endif
	
	return_code=vtm_main(phTTS);
	if (return_code)
		return(ERR_ERROR);
	return_code=ph_main(phTTS);
	if (return_code)
		return(ERR_ERROR);
	((PDPH_T)(phTTS->pPHThreadData))->loadspdef=1;
	
	// load_user_dictionary here...
#ifdef MULTIPLE_LANGUAGES_LOADED
	switch( pKsd_t->lang_curr )
	{
		case LANG_english:
			return_code=us_lts_main(phTTS);
			break;
		case LANG_french:
			return_code=fr_lts_main(phTTS);
			break;
		case LANG_german:
			return_code=gr_lts_main(phTTS);
			break;
		case LANG_spanish:
			return_code=sp_lts_main(phTTS);
			break;
		case LANG_british:
			return_code=uk_lts_main(phTTS);
			break;
		case LANG_latin_american:
			return_code=la_lts_main(phTTS);
			break;
		case LANG_italian:
			return_code=it_lts_main(phTTS);
			break;
	}

#else
#ifndef DICT_IN_MEMORY
	return_code=lts_main(phTTS);
#endif //DICT_IN_MEMORY
#endif //MULTIPLE_LANGUAGES_LOADED

	if (return_code)
		return(ERR_ERROR);
	return_code=cmd_main(phTTS);

#ifdef OS_SYMBIAN
	phTTS->pCMDThreadData=GetGlobalDTPtr()->Cmd_t;
#endif

	if (return_code)
		return(ERR_ERROR);
		
	DTSetSampleRate( phTTS, PC_SAMPLE_RATE );

	return(ERR_NOERROR);
}
#endif

#ifdef MULTIPLE_LANGUAGES_LOADED
/* ******************************************************************
 *      Function Name: TextToSpeechChangeLanguage()
 *
 *      Description: 
 *
 *      Arguments:	int LangId
 *					void *user_dict
 *
 *      Return Value: int
 *
 *      Comments:
 *
 * *****************************************************************/
int TextToSpeechChangeLanguage( int LangId, void *user_dict )
{
	int return_code = -1;
//	int i;
	char *maindict;
	PKSD_T pKsd_t = &Ksd_t;
	int prevLang = pKsd_t->lang_curr;

	pKsd_t->lang_curr = LangId;
	//check if language was loaded before switching
	switch( pKsd_t->lang_curr )
	{
		case LANG_english:
			return_code = us_lts_language_loaded( );
			break;
		case LANG_french:
			return_code = fr_lts_language_loaded( );
			break;
		case LANG_german:
			return_code = gr_lts_language_loaded( );
			break;
		case LANG_spanish:
			return_code = sp_lts_language_loaded( );
			break;
		case LANG_british:
			return_code = uk_lts_language_loaded( );
			break;
		case LANG_latin_american:
			return_code = la_lts_language_loaded( );
			break;
		case LANG_italian:
			return_code = it_lts_language_loaded( );
			break;
	}
	if( return_code )
	{
		pKsd_t->lang_curr = prevLang;
		return(ERR_ERROR);
	}

	g_user_dict = (char *)user_dict;

	// set user dictionary for new language
	if (user_dict)
	{
		pKsd_t->udic_entries[pKsd_t->lang_curr] = get_long_int((char *)user_dict);
		if (pKsd_t->udic_entries[pKsd_t->lang_curr])
		{
			pKsd_t->udic_bytes[pKsd_t->lang_curr] = get_long_int((char *)user_dict + 4);
			pKsd_t->udic_index[pKsd_t->lang_curr] = (S32 *)((char *)user_dict) + 8;
			pKsd_t->udic_data[pKsd_t->lang_curr] = ( (char *)user_dict) + (pKsd_t->udic_entries[pKsd_t->lang_curr] * 4 ) + 8;
		}
	}
	else
	{
		pKsd_t->udic_entries[pKsd_t->lang_curr] = 0;
		pKsd_t->udic_bytes[pKsd_t->lang_curr] = 0;
		pKsd_t->udic_index[pKsd_t->lang_curr] = 0;
		pKsd_t->udic_data[pKsd_t->lang_curr] = 0;
	}

	if( prevLang != pKsd_t->lang_curr )
	{
		switch( pKsd_t->lang_curr )
		{	
			case LANG_english:
				phTTS->main_lts_loop=(void *)&us_lts_loop_2;
				maindict = (char *)us_main_dict;
				break;
			case LANG_french:
				phTTS->main_lts_loop=(void *)&fr_lts_loop_2;
				maindict = (char *)fr_main_dict;
				break;
			case LANG_german:
				phTTS->main_lts_loop=(void *)&gr_lts_loop_2;
				maindict = (char *)gr_main_dict;
				break;
			case LANG_spanish:
				phTTS->main_lts_loop=(void *)&sp_lts_loop_2;
				maindict = (char *)sp_main_dict;
				break;
			case LANG_british:
				phTTS->main_lts_loop=(void *)&uk_lts_loop_2;
				maindict = (char *)uk_main_dict;
				break;
			case LANG_latin_american:
				phTTS->main_lts_loop=(void *)&la_lts_loop_2;
				maindict = (char *)la_main_dict;
				break;
			case LANG_italian:
				phTTS->main_lts_loop=(void *)&it_lts_loop_2;
				//currently there is no italian dictionary
//				maindict = (char *)it_main_dict;
				maindict = NULL;
				break;
		}

		/* main dictioanry load */
		if (maindict)
		{
			pKsd_t->fdic_entries[pKsd_t->lang_curr] = get_long_int(maindict);
			if (pKsd_t->fdic_entries[pKsd_t->lang_curr])
			{
				pKsd_t->fdic_bytes[pKsd_t->lang_curr] = get_long_int( maindict + 4 );
				pKsd_t->fdic_fc_entries[pKsd_t->lang_curr] = get_long_int( maindict + 8 );
				pKsd_t->fdic_fc_entry[pKsd_t->lang_curr] = ((S32 *)( maindict + 12 ));
				pKsd_t->fdic_index[pKsd_t->lang_curr] = ((S32 *)( maindict + 12 + (pKsd_t->fdic_fc_entries[pKsd_t->lang_curr] * 4 )));
				pKsd_t->fdic_data[pKsd_t->lang_curr] = (char *)( maindict + (( pKsd_t->fdic_entries[pKsd_t->lang_curr] + 3 ) * 4 ) + ( pKsd_t->fdic_fc_entries[pKsd_t->lang_curr] * 4 ));
			}
		}
			
		// load_user_dictionary here...
		// return_code=lts_main(phTTS);
		switch( pKsd_t->lang_curr )
		{
			case LANG_english:
				return_code=us_lts_main(phTTS);
				break;
			case LANG_french:
				return_code=fr_lts_main(phTTS);
				break;
			case LANG_german:
				return_code=gr_lts_main(phTTS);
				break;
			case LANG_spanish:
				return_code=sp_lts_main(phTTS);
				break;
			case LANG_british:
				return_code=uk_lts_main(phTTS);
				break;
			case LANG_latin_american:
				return_code=la_lts_main(phTTS);
				break;
			case LANG_italian:
				return_code=it_lts_main(phTTS);
				break;
		}
		if( return_code )
			return(ERR_ERROR);

		return_code=cmd_main(phTTS);
		if (return_code)
			return(ERR_ERROR);
	}
		
	DTSetSampleRate( phTTS, PC_SAMPLE_RATE );

	return(ERR_NOERROR);
}
#endif

/* ******************************************************************
 *      Function Name: TextToSpeechReset()
 *
 *      Description: 
 *
 *      Arguments:	void
 *
 *      Return Value: int
 *
 *      Comments:
 *
 * *****************************************************************/
#ifdef EPSON_ARM7
int TextToSpeechReset(LPTTS_HANDLE_T phTTS)
{
	phTTS->pKernelShareData->halting=1;
	return(ERR_NOERROR);
}
#else
int TextToSpeechReset(void)
{
#ifdef OS_SYMBIAN
	LPTTS_HANDLE_T phTTS = GetGlobalDTPtr()->simpleData.phTTS;
#endif
	phTTS->pKernelShareData->halting=1;
	return(ERR_NOERROR);
}
#endif

#ifdef EPSON_ARM7
/* ******************************************************************
 *      Function Name: TextToSpeechStart()
 *
 *      Description: 
 *
 *      Arguments:	char *input
 *					short *buffer
 *					int output_format
 *
 *      Return Value: int
 *
 *      Comments:
 *
 * *****************************************************************/
int TextToSpeechStartTTP(LPTTS_HANDLE_T phTTS,char *input_text, 
						 S16 *ctrl_phoneme_ptr, 
						 S16 ctrl_phoneme_buff_length, 
						 char **input_text_ptr)
{
	int i;
	
	if (phTTS->pKernelShareData->halting)
	{
		return -ERR_RESET;
	}
	phTTS->pKernelShareData->halting=0;
	phTTS->TTP_return_code=0;
	phTTS->TTP_return=0;
	cm_cmd_reset_comm(phTTS->pCMDThreadData, STATE_NORMAL);
	
	phTTS->TTP_phoneme_buf_len=ctrl_phoneme_buff_length;
	phTTS->TTP_phoneme_buf=ctrl_phoneme_ptr;

	*input_text_ptr=input_text;
	while (**input_text_ptr)
	{
		cmd_loop(phTTS,**input_text_ptr);
		(*input_text_ptr)++;
		if (phTTS->pKernelShareData->halting)
		{
//			TextToSpeechInit(g_callback,g_user_dict);
			return -ERR_RESET;
		}
		if (phTTS->TTP_return)
		{
			if (((PCMD_T)(phTTS->pCMDThreadData))->parse_state!=STATE_NORMAL)
			{
				continue;
			}
			return(phTTS->TTP_return_code);
		}
		if (phTTS->TTP_return_code>=ctrl_phoneme_buff_length)
		{
			return(-ERR_PHONEME_BUF_TOO_SHORT);
		}
	}
	cmd_loop(phTTS,0x0B); // force it
	if (phTTS->pKernelShareData->halting)
	{
//		TextToSpeechInit(g_callback,g_user_dict);
		return -ERR_RESET;
	}
	if (phTTS->TTP_return)
	{
		return(phTTS->TTP_return_code);
	}
	if (phTTS->TTP_return_code>=ctrl_phoneme_buff_length)
	{
		return(-ERR_PHONEME_BUF_TOO_SHORT);
	}
	return(phTTS->TTP_return_code);
}

#define PTS_BACKUP_ONE_PHONE	6
#define PTS_DONE_WITH_CLAUSE	5
#define PTS_BUFFER_FILLED		4
#define PTS_DONE_WITH_PHONEMES	3
#define PTS_SEND_PARS_LOOP		2
#define PTS_PH_LOOP				1
#define PTS_START				0

int TextToSpeechStartPTS(LPTTS_HANDLE_T phTTS,S16 *ctrl_phoneme_ptr,
						 S16 ctrl_phoneme_buff_length,
						 short *output_buffer)
{

	int i;
	int nextra;
	if (phTTS->pKernelShareData->halting)
	{
		return ERR_RESET;
	}
	phTTS->pKernelShareData->halting=0;

	if (phTTS->pKernelShareData->uiSampleRate==MULAW_SAMPLE_RATE)
	{
		memset(output_buffer,0,51*2);
	}
	else
	{
		memset(output_buffer,0,71*2);
	}

	if (ctrl_phoneme_buff_length==0)
	{
		return(PTS_DONE);
	}

	if (phTTS->PTS_location==PTS_DONE_WITH_PHONEMES || phTTS->PTS_location==PTS_START)
	{
		phTTS->PTS_phoneme_buf_len=ctrl_phoneme_buff_length;
		phTTS->PTS_phoneme_buf=ctrl_phoneme_ptr;
		phTTS->PTS_input_pos=0;
		phTTS->PTS_location=PTS_PH_LOOP;
	}
	
	phTTS->PTS_return_code=0;
	phTTS->PTS_return=0;


	phTTS->output_buffer=output_buffer;
	
	
	if (phTTS->PTS_location==PTS_PH_LOOP)
	{
		while (phTTS->PTS_input_pos<phTTS->PTS_phoneme_buf_len)
		{
			ph_loop(phTTS,&phTTS->PTS_phoneme_buf[phTTS->PTS_input_pos]);
			if (phTTS->PTS_special_change!=PTS_BACKUP_ONE_PHONE)
			{
				nextra=(((phTTS->PTS_phoneme_buf[phTTS->PTS_input_pos])&PNEXTRA) >> PSNEXTRA)+1;
				phTTS->PTS_input_pos+=nextra;
				phTTS->PTS_special_change=0;
			}
			if (phTTS->pKernelShareData->halting)
			{
//				TextToSpeechInit(g_callback,g_user_dict);
				return ERR_RESET;
			}
			if (phTTS->PTS_return_code==PTS_SEND_PARS_LOOP)
			{
				phTTS->PTS_location=PTS_SEND_PARS_LOOP;
				break;
			}
			if (phTTS->PTS_return_code==PTS_BUFFER_FILLED)
			{
				phTTS->PTS_location=PTS_SEND_PARS_LOOP;
				return(PTS_OUTPUT);
			}
			if (phTTS->PTS_input_pos>=phTTS->PTS_phoneme_buf_len)
			{
				phTTS->PTS_location=PTS_START;
				return(PTS_DONE);
			}
		}
	}
	if (phTTS->PTS_location==PTS_SEND_PARS_LOOP)
	{
		send_pars_loop(phTTS);
		if (phTTS->PTS_return_code==PTS_DONE_WITH_CLAUSE)
		{
			if (phTTS->PTS_input_pos>=phTTS->PTS_phoneme_buf_len)
			{
				phTTS->PTS_location=PTS_START;
				return(PTS_DONE);
			}
			else
			{
				phTTS->PTS_location=PTS_PH_LOOP;
				return(PTS_OUTPUT);
			}
			return(PTS_OUTPUT);
		}
		if (phTTS->PTS_return_code==PTS_BUFFER_FILLED)
		{
			return(PTS_OUTPUT);
		}
	}
	return ERR_ERROR;
}


#else
/* ******************************************************************
 *      Function Name: TextToSpeechStart()
 *
 *      Description: 
 *
 *      Arguments:	char *input
 *					short *buffer
 *					int output_format
 *
 *      Return Value: int
 *
 *      Comments:
 *
 * *****************************************************************/
int TextToSpeechStart(char *input, short *buffer, int output_format)
{
	int i;
	int oldrate=0;
	int old_sprate=0;
	int oldspeaker=0;
#ifdef OS_SYMBIAN
	LPTTS_HANDLE_T phTTS = GetGlobalDTPtr()->simpleData.phTTS;
	char* g_user_dict = GetGlobalDTPtr()->simpleData.g_user_dict;
	short *(*g_callback)(short *,long, void*) = GetGlobalDTPtr()->simpleData.g_callback;
#endif
	
// You will only go into this code if you call TextToSpeechReset
	if (phTTS->pKernelShareData->halting)
	{
		oldrate=phTTS->pKernelShareData->uiSampleRate;
#ifndef OS_SYMBIAN		
		TextToSpeechInit(g_callback,g_user_dict);
#else
		TextToSpeechInit(g_callback,g_user_dict, phTTS->pUserData);
#endif
		if (oldrate!=phTTS->pKernelShareData->uiSampleRate &&
		    output_format==0)
		{
			DTSetSampleRate( phTTS, MULAW_SAMPLE_RATE );
		}
	}

	((PDPH_T)(phTTS->pPHThreadData))->loadspdef=1;

	phTTS->output_buffer=buffer;
	phTTS->pKernelShareData->halting=0;
	cm_cmd_reset_comm(phTTS->pCMDThreadData, STATE_NORMAL);
	
	switch(output_format)
	{
		case WAVE_FORMAT_1M16:
			memset(buffer,0,71*2);
			if (phTTS->pKernelShareData->uiSampleRate==MULAW_SAMPLE_RATE)
			{
				DTSetSampleRate( phTTS, PC_SAMPLE_RATE );
			}
			break;
		case WAVE_FORMAT_08M16:
			memset(buffer,0,51*2);
			if (phTTS->pKernelShareData->uiSampleRate==PC_SAMPLE_RATE)
			{
				DTSetSampleRate( phTTS, MULAW_SAMPLE_RATE );
			}
			break;
	}

	i=0;
	while (input[i])
	{
		cmd_loop(phTTS,input[i]);
		if (phTTS->pKernelShareData->halting)
		{
			old_sprate=phTTS->pKernelShareData->sprate;
			oldrate=phTTS->pKernelShareData->uiSampleRate;
			oldspeaker=phTTS->pKernelShareData->last_voice;

#ifndef OS_SYMBIAN
			TextToSpeechInit(g_callback,g_user_dict);
#else
			TextToSpeechInit(g_callback,g_user_dict, phTTS->pUserData);
#endif
			phTTS->pKernelShareData->sprate=old_sprate;
			DTSetSampleRate(phTTS, oldrate);
			usevoice (phTTS, oldspeaker);
			phTTS->pKernelShareData->last_voice=oldspeaker;
			phTTS->pKernelShareData->async_voice=oldspeaker;

			return ERR_RESET;
		}
		i++;
	}
	cmd_loop(phTTS,0x0B); // force it
	if (phTTS->pKernelShareData->halting)
	{
		old_sprate=phTTS->pKernelShareData->sprate;
		oldrate=phTTS->pKernelShareData->uiSampleRate;
		oldspeaker=phTTS->pKernelShareData->last_voice;

#ifndef OS_SYMBIAN
		TextToSpeechInit(g_callback,g_user_dict);
#else
		TextToSpeechInit(g_callback,g_user_dict, phTTS->pUserData);
#endif
		phTTS->pKernelShareData->sprate=old_sprate;
		DTSetSampleRate(phTTS, oldrate);
		usevoice (phTTS, oldspeaker);
		phTTS->pKernelShareData->last_voice=oldspeaker;
		phTTS->pKernelShareData->async_voice=oldspeaker;

		return ERR_RESET;
	}
	return ERR_NOERROR;
}

#endif

#ifndef DICT_IN_MEMORY
int TextToSpeechUnloadUserDictionary()
{
#ifdef OS_SYMBIAN
	GlobalDTPtr gp = GetGlobalDTPtr();
	 LPTTS_HANDLE_T phTTS = gp->simpleData.phTTS;
#endif
	/********************************************************************/
	/*  Return error if invalid handle.                                 */
	/********************************************************************/
	
	if ( phTTS == 0)
		return( -1 );	

	unload_dictionary((void **)&(phTTS->pKernelShareData->fdic_index[phTTS->pKernelShareData->lang_curr]),
		(void **)&(phTTS->pKernelShareData->fdic_data[phTTS->pKernelShareData->lang_curr]),
		(unsigned int *)&(phTTS->pKernelShareData->fdic_entries[phTTS->pKernelShareData->lang_curr]),
		(unsigned int *)&(phTTS->pKernelShareData->fdic_bytes[phTTS->pKernelShareData->lang_curr]),
		NULL,
		NULL,
		NULL,
		MEMMAP_OFF 
		);
	
	return( 0 );
}
#endif

#ifdef OS_SYMBIAN
void CleanupMemory()
{
	GlobalDTPtr gp = GetGlobalDTPtr();

	if(gp)
	{
		TTS_HANDLE_T* phTTS = gp->simpleData.phTTS;
		KSD_T* Ksd_t = phTTS->pKernelShareData;
		// this needs to be fixed for multiple language (if that ever happens)
		free(Ksd_t->loaded_languages);
		free(Ksd_t);
		Ksd_t = NULL;

		if(phTTS->pVTMThreadData)
		{
			free(phTTS->pVTMThreadData);
			phTTS->pVTMThreadData = NULL;
		}
		if(phTTS->pPHThreadData)
		{
			PDPH_T pDph_t = phTTS->pPHThreadData;
			if (pDph_t->pSTphsettar)
			{
				free (pDph_t->pSTphsettar);
				pDph_t->pSTphsettar = NULL;
			}
 
			if(pDph_t->delaypars)
				spcfree(pDph_t->delaypars);
		}
		phTTS->pPHThreadData = NULL;
		if(phTTS->pLTSThreadData)
			free(phTTS->pLTSThreadData);
		phTTS->pLTSThreadData = NULL;

		free(gp->simpleData.phTTS);
		gp->simpleData.phTTS = NULL;
		
		free(gp->simpleData.g_user_dict);
		gp->simpleData.g_user_dict = NULL;
		
		free(gp->vtmData.tBuffer);
		gp->vtmData.tBuffer = NULL;
	}
}
#endif

#ifdef EPSON_ARM7
void fill_TTP_buffer(LPTTS_HANDLE_T phTTS,short *phone,int count)
{
	int i;
	for (i=0;i<count;i++)
	{
		if (phTTS->TTP_return_code<phTTS->TTP_phoneme_buf_len)
		{
			phTTS->TTP_phoneme_buf[phTTS->TTP_return_code++]=phone[i];
		}
	}
}


int TextToSpeechGetSpeakerDef(SPEAKER_DEF_T *speaker_def_ptr)
{
	int i;
	short *spdef;

	spdef=(short *)speaker_def_ptr;

	for (i=0;i<37;i++)
	{
		spdef[i]=paul[i]+us_paul_tune[i];
	}
	speaker_def_ptr->HL_B1m=70;
	speaker_def_ptr->HL_B2m=90;
	speaker_def_ptr->HL_B3m=130;
	speaker_def_ptr->HL_B4m=180;
	speaker_def_ptr->HL_B5m=200;
	speaker_def_ptr->HL_B2F=250;
	speaker_def_ptr->HL_B3F=320;
	speaker_def_ptr->HL_B4F=260;
	speaker_def_ptr->HL_B5F=270;
	speaker_def_ptr->HL_F6=4800;
	speaker_def_ptr->HL_B6F=600;
	speaker_def_ptr->stress_step=10;
	speaker_def_ptr->unstress_pressure=80;
	speaker_def_ptr->stress_pressure=100;
	speaker_def_ptr->nom_sub_pressure=800;
	speaker_def_ptr->nom_fricative_opening=100;
	speaker_def_ptr->nom_glot_stop_area=0;
	speaker_def_ptr->vot_speed=1;
	speaker_def_ptr->endofphrase_spread=30;
	speaker_def_ptr->HL_num_formants=5;
	speaker_def_ptr->HL_f1_hi_shift=1800;
	speaker_def_ptr->HL_acd_f1_break=600;
	
	return(0);

}


#endif
