/*
 ***********************************************************************
 *
 *                           Copyright ©
 *	  Copyright © 2000 Force Computers, Inc., a Solectron Company. All rights reserved.
 *    © Digital Equipment Corporation 1996,1999. All rights reserved.
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
 *    File Name:        udic_it.c
 *    Author:           Ginger Lin
 *    Creation Date:12/17/2004
 *
 *    Functionality:
 *		**WARNING** Changes in USERDIC.C will impact this file.
 *
 ***********************************************************************
 *    Revision History:
 *
 */

          
#ifndef NEW_PHONES
#define LATIN_USERDIC
#include "l_la_ph.h"
#endif

/*
 * general defines ...
 */

/*#define DEBUG 	1 */


unsigned char   it_arpa[] = {	/*Italian arpabet*/
	'_',    ' ',           /* 0  =  _ */            
	'a',    'p',           /* 1  =  a */	// distinct from English, no diphtong //
	'e',    'p',           /* 2  =  e */	// distinct from English, no diphtong //
	'i',    'y',           /* 3  =  i */
	'o',    'p',           /* 4  =  o */	// distinct from English, no diphtong //
	'u',    'w',           /* 5  =  u */
	'a',    'x',           /* 6  =  x */	// rare - (Not the same phoneme as in Sp_phon.tab. Sp_phon.tab has WX (pascii 83) in this placement //
	'y',    ' ',           /* 7  =  j */
	'r',    'r',           /* 8  =  R */
	'l',    ' ',           /* 9  =  l */

	'l',    'l',           /* 10  = L */
	'm',    ' ',           /* 11  = m */
	'n',    ' ',           /* 12  = n */
	'n',    'h',           /* 13  = h */	// palatal - distinct from the alveolar /ñ/  //
	'f',    ' ',           /* 14  = f */
	's',    ' ',           /* 15  = s */	// word initial or ss double, intervocalic //
	'e',    'h',           /* 16  = E */	// Sp_phon.tab this is J (69) //
	't',    'd',           /* 17  = T */	// unreleased, rare Not the same phoneme as in Sp_phon.tab. Sp_phon.tab has TH (pascii 59) in this placement//
	'b',    'd',           /* 18  = B */	// unreleased, rare Not the same phoneme as in Sp_phon.tab. Sp_phon.tab has BH (pascii 56) in this placement//
	'd',    'd',           /* 19  = D */	// unreleased, rare Not the same phoneme as in Sp_phon.tab. Sp_phon.tab has DH (pascii 60) in this placement//

	'g',    'd',           /* 20  = G */	// unreleased, rare Not the same phoneme as in Sp_phon.tab. Sp_phon.tab has GH (pascii 70) in this placement//
	'j',    'h',           /* 21  = 8 */	// Sp_phon.tab uses /YH/ (pascii 115) for this sound//
	'p',    ' ',           /* 22  = p */	
	'b',    ' ',           /* 23  = b */
	't',    ' ',           /* 24  = t */
	'd',    ' ',           /* 25  = d */
	'k',    ' ',           /* 26  = k */
	'g',    ' ',           /* 27  = g */
	'c',    'h',           /* 28  = 7 */
	'a',    'o',           /* 29  = c */	// Not the same phoneme as in Sp_phon.tab. Sp_phon.tab has (pascii 68) in this placement //

	'r',    ' ',           /* 30  = r */
	'k',    'd',           /* 31  = K */	// Not the same phoneme as in Sp_phon.tab. Sp_phon.tab has Q in this placement //
	'z',    ' ',           /* 32  = z */	// single s, intervocalic //
	'w',    ' ',           /* 33  = w */
	'n',    'x',           /* 34  = Q */	// this is the ng sound //
	'v',    ' ',           /* 35  = v */
	'n',    'd',           /* 36  = N */	// dental /n/  Not the same phoneme as in Sp_phon.tab. Sp_phon.tab has IX (pascii 3) in this placement //
	'm',    'f',           /* 37  = M */
	'p',    'd',           /* 38  = P */	// unreleased, rare Not the same phoneme as in Sp_phon.tab. Sp_phon.tab has PH (pascii 56) in this placement //
	'n',    'j',           /* 39  = H */	// palatalized /n/ Sp_phon.tab does not have a symbol here//

	's',    'h',           /* 40  = S */	// Sp_phon.tab does not have a symbol here//
	't',    's',           /* 41  = 9 */	// Sp_phon.tab does not have a symbol here//
	'd',	'z',           /* 42  = 0 */	// Sp_phon.tab does not have a symbol here//
	0,      0,             /* 43  = */
	0,      0,             /* 44  = */
	0,      0,             /* 45  = */
	0,      0,             /* 46  = */
	0,      0,             /* 47  = */
	0,      0,             /* 48  = */
	0,      0,             /* 49  = */

	0,      0,             /* 50  = */
	0,      0,             /* 51  = */
	0,      0,             /* 52  = */
	0,      0,             /* 53  = */
	0,      0,             /* 54  = */
	0,      0,             /* 55  = */
	0,      0,             /* 56  = */
	0,      0,             /* 57  = */
	0,      0,             /* 58  = */
	0,      0,             /* 59  = */

	0,      0,             /* 60  = */
	0,      0,             /* 61  = */
	0,      0,             /* 62  = */
	0,      0,             /* 63  = */
	0,      0,             /* 64  = */
	0,      0,             /* 65  = */
	0,      0,             /* 66  = */
	0,      0,             /* 67  = */
	0,      0,             /* 68  = */
	0,      0,             /* 69  = */

	0,      0,             /* 70  = */
	0,      0,             /* 71  = */
	0,      0,             /* 72  = */
	0,      0,             /* 73  = */
	0,      0,             /* 74  = */
	0,      0,             /* 75  = */
	0,      0,             /* 76  = */
	0,      0,             /* 77  = */
	0,      0,             /* 78  = */
	0,      0,             /* 79  = */

	0,      0,             /* 80  = */
	0,      0,             /* 81  = */
	0,      0,             /* 82  = */
	0,      0,             /* 83  = */
	0,      0,             /* 84  = */
	0,      0,             /* 85  = */
	0,      0,             /* 86  = */
	0,      0,             /* 87  = */
	0,      0,             /* 88  = */
	0,      0,             /* 89  = */

	0,      0,             /* 90  = */
	0,      0,             /* 91  = */
	0,      0,             /* 92  = */
	0,      0,             /* 93  = */
	0,      0,             /* 94  = */
	0,      0,             /* 95  = */
	0,      0,             /* 96  = */
	0,      0,             /* 97  = */
	0,      0,             /* 98  = */
	0x7F,      0,             /* 99  = */


	'~',	' ',	/* BLOCK_RULES =	~	*/
	'=',	' ',	/* S3 =  			=	*/
	'`',	' ',	/* S2 = 			` 	*/
	'\'',	' ',	/* S1 =				' 	*/
	'\"',	' ',	/* SEMPH =			"   */
	'/',	' ',	/* HAT_RISE  = 		/	*/
	'\\',	' ',	/* HAT_FALL  = 		\	*/
	'/',	'\\',	/* HAT_RF  = 		<	*/
	'-',	' ',	/* SBOUND  =		-	*/
	'*',	' ',	/* MBOUND  = 		*	*/
	'#',	' ',	/* HYPHEN  = 		#	*/
	' ',	' ',	/* WBOUND  = 	 		*/
	'(',	' ',	/* PPSTART =		(	*/
	')',	' ',	/* VPSTART = 		)	*/
	';',	' ',	/* RELSTART  = 		;	*/
	',',	' ',	/* COMMA  =			,	*/
	'.',	' ',	/* PERIOD =			.	*/
	'?',	' ',	/* QUEST  =			?	*/
	'!',	' ',	/* EXCLAIM  = 		!	*/
	'+',	' ',	/* NEW_PARAGRAPH =	+	*/
	'^',	' ',	/* SPECIALWORD =	^	*/
	'&',	' ',	/* LINKRWORD =		&	*/
	'>',	' '		/* DOUBLCONS =		>	*/
};                             
         




