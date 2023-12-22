#ifdef MULTIPLE_LANGUAGES_LOADED
#include "tts.h"
#include "simpleapi.h"
#else
#define EPSON_ARM7
#define BLD_DECTALK_DLL
#define ARM7
#define ACNA
#define i386
#define ARM7_NOSWI
#define ENGLISH
#define ENGLISH_US

#include "epsonapi.h"
#endif

const unsigned char uk_main_dict[]= 
{ 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00};

void uk_lts_loop_2(LPTTS_HANDLE_T phTTS,unsigned short *input)
{
}

#ifdef MULTIPLE_LANGUAGES_LOADED
int uk_lts_main(LPTTS_HANDLE_T phTTS)
{
	return(1);
}

int uk_lts_language_loaded( void )
{
	return 1;
}
#else
int uk_lts_main(LPTTS_HANDLE_T phTTS)
{
	return(0);
}
#endif