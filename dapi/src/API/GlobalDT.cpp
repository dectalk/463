/*C_HEADER_FILE***************************************************************
FILE			: GlobalDT.c
DESC			: 
TABS			: 4
OWNER			: 
DATE CREATED: 6 Feb 2004

(C) Copyright 2004 All rights reserved.
This is an unpublished work, and is confidential and proprietary: 
technology and information of fonix corporation.  No part of this
code may be reproduced, used or disclosed without written consent of 
fonix corporation in each and every instance.

*END_HEADER******************************************************************/

#include <e32std.h>
#include <e32uid.h>
#include "GlobalDT.h"

#if defined(__cplusplus)
extern "C" {
#endif

GlobalDTPtr NewDTTlsValue()
{
	GlobalDTPtr gp;

	gp = new GlobalDT;
	gp->gpDECtalkUserData = NULL;
	gp->Cmd_t = 0;
	gp->Dph_t = 0;
	gp->STphsettar = 0;
	gp->cur_packet_number = 0;
	gp->max_packet_number = 0;
	gp->pDictPath = 0;
	gp->simpleData.phTTS = 0;
	gp->simpleData.g_user_dict = NULL;
	gp->simpleData.g_callback = NULL;
	gp->vtmData.Vtm_t = 0;
	gp->vtmData.tBuffer = 0;

	Dll::SetTls(gp);

	return gp;

}

GlobalDTPtr GetDTTlsValue()
{
	GlobalDTPtr gp = STATIC_CAST(GlobalDTPtr, Dll::Tls());

	return gp;
}

void DeleteDTTlsValue()
{
	GlobalDTPtr gp = STATIC_CAST(GlobalDTPtr, Dll::Tls());

	if (gp)
	{
		delete gp->gpDECtalkUserData;
		gp->gpDECtalkUserData = NULL;
		delete gp->Cmd_t;
		gp->Cmd_t = NULL;
		delete gp->Dph_t;
		gp->Dph_t = NULL;

		delete gp->pDictPath;
		gp->pDictPath = NULL;

		delete gp->simpleData.g_user_dict;
		gp->simpleData.g_user_dict = NULL;
		
		delete gp;
		gp = NULL;
	}
}

GlobalDTPtr InitDTGlobals()
{
	GlobalDTPtr	gp;
	gp = NewDTTlsValue();

	return gp;
}

GlobalDTPtr GetGlobalDTPtr()
{
	GlobalDTPtr	gpDT = GetDTTlsValue();

	if (gpDT == NULL)
	{
		gpDT = InitDTGlobals();
	}
	return gpDT;
}

#if defined(__cplusplus)
}
#endif
