/*
 ***********************************************************************
 *
 *                           Copyright ©
 *	  Copyright © 2002 Fonix Corporation. All rights reserved.
 *
 *    Restricted Rights: Use, duplication, or disclosure by the U.S.
 *    Government is subject to restrictions as set forth in subparagraph
 *    (c) (1) (ii) of DFARS 252.227-7013, or in FAR 52.227-19, or in FAR
 *    52.227-14 Alt. III, as applicable.
 *
 *    This software is proprietary to and embodies the confidential
 *    technology of Fonix Corporation and other parties.
 *    Possession, use, or copying of this software and media is authorized
 *    only pursuant to a valid written license from Fonix or an
 *    authorized sublicensor.
 *
 ***********************************************************************
 *    File Name:    lsw_main2.c
 *    Author:       Ellen Rasmussen
 *    Creation Date:09/26/2004
 *
 *    Functionality:
 *    delcaration of Lts_t when using MULTIPLE_LANGUAGES_LOADED define
 *
 ***********************************************************************
 *    Revision History:                    
 *
 *  Rev Who     Date        	Description
 *  --- -----   ----------- 	---------------------------------------
 ***************************************************************************/
#include "dectalkf.h"
#include "ls_def.h"
#include "tts.h"

#if defined MULTIPLE_LANGUAGES_LOADED && defined ARM7 && !defined EPSON_ARM7 && !defined ALLOC_MEMORY
LTS_T   Lts_t;
#endif
