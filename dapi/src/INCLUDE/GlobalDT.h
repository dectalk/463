/*H_HEADER_FILE***************************************************************
FILE			: GlobalDT.h
DESC			: 
TABS			: 3
OWNER			: 
DATE CREATED: 6 Feb 2004

(C) Copyright 2004 All rights reserved.
This is an unpublished work, and is confidential and proprietary: 
technology and information of fonix corporation.  No part of this
code may be reproduced, used or disclosed without written consent of 
fonix corporation in each and every instance.

*END_HEADER******************************************************************/
#ifndef	GLOBALDT_H
#define	GLOBALDT_H

#include "kernel.h"

typedef struct 
{
	short* tBuffer;
	int tBufferCount;
	void* Vtm_t;
} vtmiontStruct;

typedef struct
{
	void* phTTS;
	char *g_user_dict;
	short *(*g_callback)(short *,long, void*);
	short *(*g_usercallback)(short *,long, void*);
	short* sm_buffer;
} simpleAPIStruct;

typedef struct
{
	void* gpDECtalkUserData;
	vtmiontStruct vtmData;
	simpleAPIStruct simpleData;
	void* Cmd_t;
	void* STphsettar;
	void* Dph_t;
	char* pDictPath;
	short cur_packet_number;	//services.c
	short max_packet_number;	//services.c
	struct spc_packet global_spc_pkt[1];	//services.c

} GlobalDT, *GlobalDTPtr;

#if defined(__cplusplus)
extern "C" {
#endif

GlobalDTPtr InitDTGlobals();
GlobalDTPtr GetGlobalDTPtr();

GlobalDTPtr NewDTTlsValue();
GlobalDTPtr GetDTTlsValue();
void DeleteDTTlsValue();

#if defined(__cplusplus)
}
#endif

#endif
