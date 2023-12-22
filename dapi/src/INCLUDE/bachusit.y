%{
#define  _this_is_main_bachus_
#include "bachusit.h"
#include <string.h>
#include <stdio.h>
%}
%union{
  int ival;
  char oper;
  char *string;
  struct symtab *sympt;
}
%token <sympt> NAME COMMENTLINE LTRIE TRIE RTRIE PROCESS TRIEFILE ENDTRIE MORPH SKIPWORD SKIPLETTER EMPTYNODE
%token <string> FILENAME BOUND OPERATOR
%token <ival>  INTEGER
%token <oper>  LBRAK RBRAK 
%left '+'
%left '-'
%%
STATEMENT:     RULE  '\n' {nextlexline(); }
          |  STATEMENT RULE '\n'{nextlexline();}
;
RULE:  /* EMPTY LINE */  {} 
       |  NAME '=' '>' {buildtree(STARTNODE,$1->name,$1->value,0); buildtree(NEWPATH,NULL,lex_line(),0); } RIGHTSIDE
       | RIGHTSIDE {}
       | DECLARATION {}
       | COMMENTLINE {}
;
RIGHTSIDE:   EXPRESSION {buildtree(ENDOFPATH,NULL,0,0);}
           | EXPRESSION {buildtree(ENDOFPATH,NULL,0,0);} '|'{buildtree(NEWPATH,NULL,lex_line(),0);} RIGHTSIDE
           | '|' {buildtree(NEWPATH,NULL,lex_line(),0);} RIGHTSIDE 
;
EXPRESSION: EXPRESSION '+' EXPRESSION {}
          | EXPRESSION '-' {buildtree(WORDBOUNDARY,0,0,0);} EXPRESSION {} 
          | REPEATED
          | NAME   { buildtree(RIGHTNODE,$1->name,$1->value,0);}
          | MORPH  { buildtree(SINGLEMORPH,$1->name,$1->value,0);}
          | BOUND { buildtree(BOUNDACTION,$1,0,0);}
          | OPERATOR { buildtree(OPERATORNAME,$1,0,0); printf("operator found %s\n",$1); }
          | EMPTYNODE  { buildtree(NOPNODE,0,0,0);}
          | SKIPWORD  { buildtree(SKIPNODE,0,0,0);}
          | SKIPLETTER  { buildtree(SKIPLETTERNODE,0,0,0);}
;
REPEATED:   LBRAK {buildtree(LOOPNODE,NULL,0,0);}  EXPRESSION  RBRAK '[' INTEGER ',' INTEGER ']' {buildtree(JUMPNODE,NULL,$6,$8);}
          | NAME {buildtree(LOOPNODE,NULL,0,0); buildtree(RIGHTNODE,$1->name,$1->value,0);} '['INTEGER ',' INTEGER ']' {buildtree(JUMPNODE,NULL,$4,$6);}
          | SKIPLETTER {buildtree(LOOPNODE,NULL,0,0); buildtree(SKIPLETTERNODE,0,0,0);} '['INTEGER ',' INTEGER ']' {buildtree(JUMPNODE,NULL,$4,$6);}
;
DECLARATION:  TRIE NAME '=' FILENAME {buildtree(TRIENAME,$4,$2->value,LONG_MORPH_FIRST); printf("TRIE FILE for symbol %s(%d) is %s\n",$2->name,$2->value,$4);}
          |   RTRIE NAME '=' FILENAME {buildtree(TRIENAME,$4,$2->value,LONG_MORPH_LAST); printf("RTRIE FILE for symbol %s(%d) is %s\n",$2->name,$2->value,$4);}
          |   LTRIE '.' INTEGER '.' NAME  '=' FILENAME {buildtree(LTRIENAME,$7,$5->value,$3); printf("LTRIE FILE for symbol %s(%d) is %s with arg %i\n",$5->name,$5->value,$7,$3);}
          |   PROCESS NAME {buildtree(PROCESSNAME,$2->name,0,0); printf("PROCESS FILE for symbol %s(%d)\n",$2->name,$2->value);}
          |   TRIEFILE '=' FILENAME {printf(" GENERATES FILE %s\n",$3);}
          |   ENDTRIE {printf("done\n"); return(1);}
;
%% 

static struct symtab *sp;
struct symtab *
symlook(s)
char *s;
{
	int count;
	count=0;
	for(sp = symtab; sp < &symtab[NSYMS]; sp++)        /* defined in bachus.h */
	  {
	    /* is it already here? */
	    count++;
	    if(sp->name && !strcmp(sp->name, s))  return sp;
	    /* is it free */
	    if(!sp->name) {
	      sp->name = strdup(s);
	      sp->value=count;
	      return sp;
	    }
	    /* otherwise continue to next */
	}
	yyerror("Too many symbols");
	exit(1);	/* cannot continue */
} /* symlook */



main(int ac, char **av)
{
  ASCIILETTER bp[100], outword[100], outphones[100];
  ASCIILETTER *retbuff;
  int eofcond=0;
  int ret;
  BOOL succ;
  extern FILE *yyin;
  char *nameextension;
  wordgrammarinfo WGinfo;
  int  ltriecount;
  lettertriename *ltf;

  FILE *wordsfid;

  if (ac>1)
    {
      if((yyin = fopen(av[1], "r")) == NULL) 
	{
	perror(av[1]);
	exit(1);
	}
      if (av[2] != NULL) nameextension = av[2];
      else nameextension = BACHUSSTRING;
    }
  else
    {
      if((yyin = fopen("experiment.ger", "r")) == NULL) 
	{
	perror(av[1]);
	exit(1);
	}
      nameextension = BACHUSSTRING;
    }
 

  //  yyin = fopen("wordgrammar.ger", "r");

  buildtree(INITIALIZE,NULL,0,0);  /* initialize the builder that's called as actions in the grammar, see above.*/


  yyparse();

  for (sp=symtab; sp < &symtab[NSYMS]; sp++) {
    if (sp->name) printf(" %d %s\n",sp->value,sp->name);}

  if (buildtree(DUMPALL,NULL,0,0) == 1)
    {
      make_ltries(); 
    }
  else
    {
      printf("Incomplete grammar - check missing declarations\n");
      exit(1);
    }

      
  buildtree(FILEDUMP,nameextension,0,0);

  ltriecount=0;

 for(ltf = LTrieFiles; ltf < &LTrieFiles[NTRIEFILES]; ltf++) 
    {
      if (ltf->triename)
	{
	  ltriecount++;
	}
    }

 printf("counted %i LTries\n",ltriecount);
 WGinfo.notries = ltriecount; /* not usually used*/

  WGinfo.nnodes = STGT.nnodes;
  WGinfo.GtNodes = STGT.Nodes;
  WGinfo.Ltreelist = LTrieList;
  WGinfo.MorphDict = &MorphDict;
  

#ifdef FROMTYPED
   while (!eofcond)
    {
      printf("BACHUS>");
/*      ret = scanf("%s",bp); */
      retbuff = fgets(bp,80,stdin);
      if (retbuff==NULL || strlen(retbuff)<=1)
	{
	  eofcond=1;
	}
      else
	{
	  ret = strlen(retbuff);
	  // printf("ret = %i\n",ret);
	  if (ret>0)  retbuff[ret-1]='\0';
	  if (ret==0)
	  {
	      eofcond=1;
	      break;
	  }
	  //  printf("  %s\n",retbuff);
	  //  walk_word(bp,&STGT,LTrieList,&MorphDict);
	  //  succ = morphemize_word(bp,outword,outphones, &WGinfo,&HyphenTOK);
	  succ = morphemize_phrase(retbuff,outword,outphones, &Walkercntxt, &WGinfo);

	  // if (succ) printf("%s [%s] -> /%s/ \n",retbuff,outword,outphones);
	  // else printf("## %s\n",retbuff);
	}
    }
#else
   wordsfid = fopen(av[2], "r");
   if (wordsfid == NULL)
     {
       printf("could not open file\n");
       exit(1);
     }
   while (!eofcond)
     {
       ret = fscanf(wordsfid,"%s",bp);
       if (strlen(bp)==0 | ret <= 0)
	 {
	   eofcond=1;
	 }
       else
	 {
	   //	   printf("%s\n",bp);
	  succ = morphemize_word(bp,outword,outphones, &WGinfo,&HyphenTOK);
	  //if (succ) printf("%s [%s] -> /%s/ \n",bp,outword,outphones);
	  //else printf("## %s\n",bp);	  
	 }
     }
#endif

#ifndef FROMTYPED
#ifdef GRAMMAR_EVALUATION
buildtree(STATISTICS,NULL,0,0);   // print how often a rule was used
#endif
#endif

}

yyerror(char *s)
{
  fprintf(stderr, "Error parsing line %d columns %d-%d : %s\n",lex_line(),lex_lastcol(),lex_column(), s);
}



