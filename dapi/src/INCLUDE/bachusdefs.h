#ifndef _BACHUSDEFS_DEFINED_
#define _BACHUSDEFS_DEFINED_
typedef enum {NULLNODE=0, ENDOFPATH=1, PATHRETURN, INITIALIZE, EPSILONNODE, 
	      NOPNODE,  BOUNDACTION,
	      STARTNODE, ALTNODE,  RIGHTNODE, TERMINAL,  NONTERMINAL,
	      LOOPNODE, JUMPNODE, UNBEKANNTE, SYLLABIFY, NEWPATH, TRIENAME,
	      LTRIENAME, OPERATORNAME, PROCESSNAME, SINGLEMORPH, WORDBOUNDARY,
	      SKIPNODE, SKIPLETTERNODE,
	      STATISTICS, DUMPTREE, DUMPALL, FILEDUMP} gnodetype;

typedef enum {
  OPlonger = 100,
  OPshorter = 101,
  OPstartvowel = 102,
  OPstartcons = 103,
  OPsyllabify = 200,
  OPgrammar = 300,
  OPspezial = 400,
  OPbreak  = 999
} operatornumber;

typedef enum {NOEXIT=0, 
	      FOUND = 1, 
	      ENDOFLEX=2,
	      REPEATABLE=3} tnodeinfo;

typedef enum {WORDSEPARATOR=0,
	      MORPHEME=1,
	      PROSODICMARKER=2,
	      LETTERTRIE=3} parserinfo;

typedef struct _gnodeinfo
{
  U16 status;                 // depends on type (e.g., loop state for loop)
  U16 counter;                // counts whatever we like
  U16 counterB;               // counts whatever we like
  U16 parameter;              // max loop count e.g.
} gnodeinfo;
  



#endif // _BACHUSDEFS_DEFINED_
