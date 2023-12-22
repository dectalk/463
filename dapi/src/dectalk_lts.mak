# Microsoft Developer Studio Generated NMAKE File, Based on dectalk_lts.dsp
!IF "$(CFG)" == ""
CFG=dectalk_lts - Win32 Debug French
!MESSAGE No configuration specified. Defaulting to dectalk_lts - Win32 Debug French.
!ENDIF 

!IF "$(CFG)" != "dectalk_lts - Win32 Release" && "$(CFG)" != "dectalk_lts - Win32 Debug" && "$(CFG)" != "dectalk_lts - Win32 Release Spanish" && "$(CFG)" != "dectalk_lts - Win32 Release German" && "$(CFG)" != "dectalk_lts - Win32 Release Latin American" && "$(CFG)" != "dectalk_lts - Win32 Debug Spanish" && "$(CFG)" != "dectalk_lts - Win32 Debug German" && "$(CFG)" != "dectalk_lts - Win32 Debug Latin American" && "$(CFG)" != "dectalk_lts - Win32 Release United Kingdom" && "$(CFG)" != "dectalk_lts - Win32 Debug United Kingdom" && "$(CFG)" != "dectalk_lts - Win32 Debug French" && "$(CFG)" != "dectalk_lts - Win32 Release French"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "dectalk_lts.mak" CFG="dectalk_lts - Win32 Debug French"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "dectalk_lts - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "dectalk_lts - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "dectalk_lts - Win32 Release Spanish" (based on "Win32 (x86) Static Library")
!MESSAGE "dectalk_lts - Win32 Release German" (based on "Win32 (x86) Static Library")
!MESSAGE "dectalk_lts - Win32 Release Latin American" (based on "Win32 (x86) Static Library")
!MESSAGE "dectalk_lts - Win32 Debug Spanish" (based on "Win32 (x86) Static Library")
!MESSAGE "dectalk_lts - Win32 Debug German" (based on "Win32 (x86) Static Library")
!MESSAGE "dectalk_lts - Win32 Debug Latin American" (based on "Win32 (x86) Static Library")
!MESSAGE "dectalk_lts - Win32 Release United Kingdom" (based on "Win32 (x86) Static Library")
!MESSAGE "dectalk_lts - Win32 Debug United Kingdom" (based on "Win32 (x86) Static Library")
!MESSAGE "dectalk_lts - Win32 Debug French" (based on "Win32 (x86) Static Library")
!MESSAGE "dectalk_lts - Win32 Release French" (based on "Win32 (x86) Static Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

OUTDIR=.\..\build\dectalk\us\release
INTDIR=.\..\build\dectalk\us\release\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\us\release
# End Custom Macros

ALL : "$(OUTDIR)\dectalk_lts_us.lib"


CLEAN :
	-@erase "$(INTDIR)\l_ac_con.obj"
	-@erase "$(INTDIR)\l_us_ad1.obj"
	-@erase "$(INTDIR)\l_us_con.obj"
	-@erase "$(INTDIR)\l_us_ma1.obj"
	-@erase "$(INTDIR)\l_us_pr1.obj"
	-@erase "$(INTDIR)\l_us_ru1.obj"
	-@erase "$(INTDIR)\l_us_sp1.obj"
	-@erase "$(INTDIR)\l_us_spe.obj"
	-@erase "$(INTDIR)\l_us_suf.obj"
	-@erase "$(INTDIR)\lsa_rta.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\dectalk_lts_us.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk_lts.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk_lts.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\dectalk_lts_us.lib" 
LIB32_OBJS= \
	"$(INTDIR)\l_ac_con.obj" \
	"$(INTDIR)\l_us_ad1.obj" \
	"$(INTDIR)\l_us_con.obj" \
	"$(INTDIR)\l_us_ma1.obj" \
	"$(INTDIR)\l_us_pr1.obj" \
	"$(INTDIR)\l_us_ru1.obj" \
	"$(INTDIR)\l_us_sp1.obj" \
	"$(INTDIR)\l_us_spe.obj" \
	"$(INTDIR)\l_us_suf.obj" \
	"$(INTDIR)\lsa_rta.obj"

"$(OUTDIR)\dectalk_lts_us.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

OUTDIR=.\..\build\dectalk\us\debug
INTDIR=.\..\build\dectalk\us\debug\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\us\debug
# End Custom Macros

ALL : "$(OUTDIR)\dectalk_lts_us.lib"


CLEAN :
	-@erase "$(INTDIR)\l_ac_con.obj"
	-@erase "$(INTDIR)\l_us_ad1.obj"
	-@erase "$(INTDIR)\l_us_con.obj"
	-@erase "$(INTDIR)\l_us_ma1.obj"
	-@erase "$(INTDIR)\l_us_pr1.obj"
	-@erase "$(INTDIR)\l_us_ru1.obj"
	-@erase "$(INTDIR)\l_us_sp1.obj"
	-@erase "$(INTDIR)\l_us_spe.obj"
	-@erase "$(INTDIR)\l_us_suf.obj"
	-@erase "$(INTDIR)\lsa_rta.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\dectalk_lts_us.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk_lts.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk_lts.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\dectalk_lts_us.lib" 
LIB32_OBJS= \
	"$(INTDIR)\l_ac_con.obj" \
	"$(INTDIR)\l_us_ad1.obj" \
	"$(INTDIR)\l_us_con.obj" \
	"$(INTDIR)\l_us_ma1.obj" \
	"$(INTDIR)\l_us_pr1.obj" \
	"$(INTDIR)\l_us_ru1.obj" \
	"$(INTDIR)\l_us_sp1.obj" \
	"$(INTDIR)\l_us_spe.obj" \
	"$(INTDIR)\l_us_suf.obj" \
	"$(INTDIR)\lsa_rta.obj"

"$(OUTDIR)\dectalk_lts_us.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

OUTDIR=.\..\build\dectalk\sp\release
INTDIR=.\..\build\dectalk\sp\release\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\sp\release
# End Custom Macros

ALL : "$(OUTDIR)\dectalk_lts_sp.lib"


CLEAN :
	-@erase "$(INTDIR)\l_sp_ad1.obj"
	-@erase "$(INTDIR)\l_sp_con.obj"
	-@erase "$(INTDIR)\l_sp_ma1.obj"
	-@erase "$(INTDIR)\l_sp_pr1.obj"
	-@erase "$(INTDIR)\l_sp_ru1.obj"
	-@erase "$(INTDIR)\l_sp_sp1.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\dectalk_lts_sp.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "SPANISH" /D "SPANISH_SP" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk_lts.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk_lts.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\dectalk_lts_sp.lib" 
LIB32_OBJS= \
	"$(INTDIR)\l_sp_ad1.obj" \
	"$(INTDIR)\l_sp_con.obj" \
	"$(INTDIR)\l_sp_ma1.obj" \
	"$(INTDIR)\l_sp_pr1.obj" \
	"$(INTDIR)\l_sp_ru1.obj" \
	"$(INTDIR)\l_sp_sp1.obj"

"$(OUTDIR)\dectalk_lts_sp.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

OUTDIR=.\..\build\dectalk\gr\release
INTDIR=.\..\build\dectalk\gr\release\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\gr\release
# End Custom Macros

ALL : "$(OUTDIR)\dectalk_lts_gr.lib"


CLEAN :
	-@erase "$(INTDIR)\allorules.obj"
	-@erase "$(INTDIR)\l_gr_ad1.obj"
	-@erase "$(INTDIR)\l_gr_con.obj"
	-@erase "$(INTDIR)\l_gr_ma1.obj"
	-@erase "$(INTDIR)\l_gr_pr1.obj"
	-@erase "$(INTDIR)\l_gr_rta.obj"
	-@erase "$(INTDIR)\l_gr_ru1.obj"
	-@erase "$(INTDIR)\l_gr_sp1.obj"
	-@erase "$(INTDIR)\l_gr_suf.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\walker.obj"
	-@erase "$(OUTDIR)\dectalk_lts_gr.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "GERMAN" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk_lts.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk_lts.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\dectalk_lts_gr.lib" 
LIB32_OBJS= \
	"$(INTDIR)\allorules.obj" \
	"$(INTDIR)\l_gr_ad1.obj" \
	"$(INTDIR)\l_gr_con.obj" \
	"$(INTDIR)\l_gr_ma1.obj" \
	"$(INTDIR)\l_gr_pr1.obj" \
	"$(INTDIR)\l_gr_rta.obj" \
	"$(INTDIR)\l_gr_ru1.obj" \
	"$(INTDIR)\l_gr_sp1.obj" \
	"$(INTDIR)\l_gr_suf.obj" \
	"$(INTDIR)\walker.obj"

"$(OUTDIR)\dectalk_lts_gr.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

OUTDIR=.\..\build\dectalk\la\release
INTDIR=.\..\build\dectalk\la\release\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\la\release
# End Custom Macros

ALL : "$(OUTDIR)\dectalk_lts_la.lib"


CLEAN :
	-@erase "$(INTDIR)\l_la_ad1.obj"
	-@erase "$(INTDIR)\l_la_con.obj"
	-@erase "$(INTDIR)\l_la_ma1.obj"
	-@erase "$(INTDIR)\l_la_pr1.obj"
	-@erase "$(INTDIR)\l_la_ru1.obj"
	-@erase "$(INTDIR)\l_la_sp1.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\dectalk_lts_la.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "SPANISH" /D "SPANISH_LA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk_lts.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk_lts.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\dectalk_lts_la.lib" 
LIB32_OBJS= \
	"$(INTDIR)\l_la_ad1.obj" \
	"$(INTDIR)\l_la_con.obj" \
	"$(INTDIR)\l_la_ma1.obj" \
	"$(INTDIR)\l_la_pr1.obj" \
	"$(INTDIR)\l_la_ru1.obj" \
	"$(INTDIR)\l_la_sp1.obj"

"$(OUTDIR)\dectalk_lts_la.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

OUTDIR=.\..\build\dectalk\sp\debug
INTDIR=.\..\build\dectalk\sp\debug\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\sp\debug
# End Custom Macros

ALL : "$(OUTDIR)\dectalk_lts_sp.lib"


CLEAN :
	-@erase "$(INTDIR)\l_sp_ad1.obj"
	-@erase "$(INTDIR)\l_sp_con.obj"
	-@erase "$(INTDIR)\l_sp_ma1.obj"
	-@erase "$(INTDIR)\l_sp_pr1.obj"
	-@erase "$(INTDIR)\l_sp_ru1.obj"
	-@erase "$(INTDIR)\l_sp_sp1.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\dectalk_lts_sp.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "SPANISH" /D "SPANISH_SP" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk_lts.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk_lts.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\dectalk_lts_sp.lib" 
LIB32_OBJS= \
	"$(INTDIR)\l_sp_ad1.obj" \
	"$(INTDIR)\l_sp_con.obj" \
	"$(INTDIR)\l_sp_ma1.obj" \
	"$(INTDIR)\l_sp_pr1.obj" \
	"$(INTDIR)\l_sp_ru1.obj" \
	"$(INTDIR)\l_sp_sp1.obj"

"$(OUTDIR)\dectalk_lts_sp.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

OUTDIR=.\..\build\dectalk\gr\debug
INTDIR=.\..\build\dectalk\gr\debug\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\gr\debug
# End Custom Macros

ALL : "$(OUTDIR)\dectalk_lts_gr.lib"


CLEAN :
	-@erase "$(INTDIR)\allorules.obj"
	-@erase "$(INTDIR)\l_gr_ad1.obj"
	-@erase "$(INTDIR)\l_gr_con.obj"
	-@erase "$(INTDIR)\l_gr_ma1.obj"
	-@erase "$(INTDIR)\l_gr_pr1.obj"
	-@erase "$(INTDIR)\l_gr_rta.obj"
	-@erase "$(INTDIR)\l_gr_ru1.obj"
	-@erase "$(INTDIR)\l_gr_sp1.obj"
	-@erase "$(INTDIR)\l_gr_suf.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\walker.obj"
	-@erase "$(OUTDIR)\dectalk_lts_gr.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "GERMAN" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk_lts.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk_lts.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\dectalk_lts_gr.lib" 
LIB32_OBJS= \
	"$(INTDIR)\allorules.obj" \
	"$(INTDIR)\l_gr_ad1.obj" \
	"$(INTDIR)\l_gr_con.obj" \
	"$(INTDIR)\l_gr_ma1.obj" \
	"$(INTDIR)\l_gr_pr1.obj" \
	"$(INTDIR)\l_gr_rta.obj" \
	"$(INTDIR)\l_gr_ru1.obj" \
	"$(INTDIR)\l_gr_sp1.obj" \
	"$(INTDIR)\l_gr_suf.obj" \
	"$(INTDIR)\walker.obj"

"$(OUTDIR)\dectalk_lts_gr.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

OUTDIR=.\..\build\dectalk\la\debug
INTDIR=.\..\build\dectalk\la\debug\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\la\debug
# End Custom Macros

ALL : "$(OUTDIR)\dectalk_lts_la.lib"


CLEAN :
	-@erase "$(INTDIR)\l_la_ad1.obj"
	-@erase "$(INTDIR)\l_la_con.obj"
	-@erase "$(INTDIR)\l_la_ma1.obj"
	-@erase "$(INTDIR)\l_la_pr1.obj"
	-@erase "$(INTDIR)\l_la_ru1.obj"
	-@erase "$(INTDIR)\l_la_sp1.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\dectalk_lts_la.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "SPANISH" /D "SPANISH_LA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk_lts.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk_lts.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\dectalk_lts_la.lib" 
LIB32_OBJS= \
	"$(INTDIR)\l_la_ad1.obj" \
	"$(INTDIR)\l_la_con.obj" \
	"$(INTDIR)\l_la_ma1.obj" \
	"$(INTDIR)\l_la_pr1.obj" \
	"$(INTDIR)\l_la_ru1.obj" \
	"$(INTDIR)\l_la_sp1.obj"

"$(OUTDIR)\dectalk_lts_la.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

OUTDIR=.\..\build\dectalk\uk\release
INTDIR=.\..\build\dectalk\uk\release\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\uk\release
# End Custom Macros

ALL : "$(OUTDIR)\dectalk_lts_uk.lib"


CLEAN :
	-@erase "$(INTDIR)\l_uk_ad1.obj"
	-@erase "$(INTDIR)\l_uk_con.obj"
	-@erase "$(INTDIR)\l_uk_ma1.obj"
	-@erase "$(INTDIR)\l_uk_pr1.obj"
	-@erase "$(INTDIR)\l_uk_rta.obj"
	-@erase "$(INTDIR)\l_uk_ru1.obj"
	-@erase "$(INTDIR)\l_uk_sp1.obj"
	-@erase "$(INTDIR)\l_uk_spe.obj"
	-@erase "$(INTDIR)\l_uk_suf.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\dectalk_lts_uk.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "ENGLISH_UK" /D "ENGLISH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk_lts.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk_lts.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\dectalk_lts_uk.lib" 
LIB32_OBJS= \
	"$(INTDIR)\l_uk_ad1.obj" \
	"$(INTDIR)\l_uk_con.obj" \
	"$(INTDIR)\l_uk_ma1.obj" \
	"$(INTDIR)\l_uk_pr1.obj" \
	"$(INTDIR)\l_uk_rta.obj" \
	"$(INTDIR)\l_uk_ru1.obj" \
	"$(INTDIR)\l_uk_sp1.obj" \
	"$(INTDIR)\l_uk_spe.obj" \
	"$(INTDIR)\l_uk_suf.obj"

"$(OUTDIR)\dectalk_lts_uk.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

OUTDIR=.\..\build\dectalk\uk\debug
INTDIR=.\..\build\dectalk\uk\debug\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\uk\debug
# End Custom Macros

ALL : "$(OUTDIR)\dectalk_lts_uk.lib"


CLEAN :
	-@erase "$(INTDIR)\l_uk_ad1.obj"
	-@erase "$(INTDIR)\l_uk_con.obj"
	-@erase "$(INTDIR)\l_uk_ma1.obj"
	-@erase "$(INTDIR)\l_uk_pr1.obj"
	-@erase "$(INTDIR)\l_uk_rta.obj"
	-@erase "$(INTDIR)\l_uk_ru1.obj"
	-@erase "$(INTDIR)\l_uk_sp1.obj"
	-@erase "$(INTDIR)\l_uk_spe.obj"
	-@erase "$(INTDIR)\l_uk_suf.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\dectalk_lts_uk.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "ENGLISH_UK" /D "ENGLISH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk_lts.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk_lts.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\dectalk_lts_uk.lib" 
LIB32_OBJS= \
	"$(INTDIR)\l_uk_ad1.obj" \
	"$(INTDIR)\l_uk_con.obj" \
	"$(INTDIR)\l_uk_ma1.obj" \
	"$(INTDIR)\l_uk_pr1.obj" \
	"$(INTDIR)\l_uk_rta.obj" \
	"$(INTDIR)\l_uk_ru1.obj" \
	"$(INTDIR)\l_uk_sp1.obj" \
	"$(INTDIR)\l_uk_spe.obj" \
	"$(INTDIR)\l_uk_suf.obj"

"$(OUTDIR)\dectalk_lts_uk.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

OUTDIR=.\..\build\dectalk\fr\debug
INTDIR=.\..\build\dectalk\fr\debug\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\fr\debug
# End Custom Macros

ALL : "$(OUTDIR)\dectalk_lts_fr.lib"


CLEAN :
	-@erase "$(INTDIR)\l_fr_con.obj"
	-@erase "$(INTDIR)\l_fr_ma1.obj"
	-@erase "$(INTDIR)\l_fr_pr1.obj"
	-@erase "$(INTDIR)\l_fr_rta.obj"
	-@erase "$(INTDIR)\l_fr_ru1.obj"
	-@erase "$(INTDIR)\l_fr_sp1.obj"
	-@erase "$(INTDIR)\l_fr_suf.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\dectalk_lts_fr.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "FRENCH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk_lts.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk_lts.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\dectalk_lts_fr.lib" 
LIB32_OBJS= \
	"$(INTDIR)\l_fr_con.obj" \
	"$(INTDIR)\l_fr_ma1.obj" \
	"$(INTDIR)\l_fr_pr1.obj" \
	"$(INTDIR)\l_fr_rta.obj" \
	"$(INTDIR)\l_fr_ru1.obj" \
	"$(INTDIR)\l_fr_sp1.obj" \
	"$(INTDIR)\l_fr_suf.obj"

"$(OUTDIR)\dectalk_lts_fr.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

OUTDIR=.\..\build\dectalk\fr\release
INTDIR=.\..\build\dectalk\fr\release\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\fr\release
# End Custom Macros

ALL : "$(OUTDIR)\dectalk_lts_fr.lib"


CLEAN :
	-@erase "$(INTDIR)\l_fr_con.obj"
	-@erase "$(INTDIR)\l_fr_ma1.obj"
	-@erase "$(INTDIR)\l_fr_pr1.obj"
	-@erase "$(INTDIR)\l_fr_rta.obj"
	-@erase "$(INTDIR)\l_fr_ru1.obj"
	-@erase "$(INTDIR)\l_fr_sp1.obj"
	-@erase "$(INTDIR)\l_fr_suf.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\dectalk_lts_fr.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "FRENCH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk_lts.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk_lts.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\dectalk_lts_fr.lib" 
LIB32_OBJS= \
	"$(INTDIR)\l_fr_con.obj" \
	"$(INTDIR)\l_fr_ma1.obj" \
	"$(INTDIR)\l_fr_pr1.obj" \
	"$(INTDIR)\l_fr_rta.obj" \
	"$(INTDIR)\l_fr_ru1.obj" \
	"$(INTDIR)\l_fr_sp1.obj" \
	"$(INTDIR)\l_fr_suf.obj"

"$(OUTDIR)\dectalk_lts_fr.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("dectalk_lts.dep")
!INCLUDE "dectalk_lts.dep"
!ELSE 
!MESSAGE Warning: cannot find "dectalk_lts.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "dectalk_lts - Win32 Release" || "$(CFG)" == "dectalk_lts - Win32 Debug" || "$(CFG)" == "dectalk_lts - Win32 Release Spanish" || "$(CFG)" == "dectalk_lts - Win32 Release German" || "$(CFG)" == "dectalk_lts - Win32 Release Latin American" || "$(CFG)" == "dectalk_lts - Win32 Debug Spanish" || "$(CFG)" == "dectalk_lts - Win32 Debug German" || "$(CFG)" == "dectalk_lts - Win32 Debug Latin American" || "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom" || "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom" || "$(CFG)" == "dectalk_lts - Win32 Debug French" || "$(CFG)" == "dectalk_lts - Win32 Release French"
SOURCE=.\LTS\allorules.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"


"$(INTDIR)\allorules.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"


"$(INTDIR)\allorules.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_ac_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"


"$(INTDIR)\l_ac_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"


"$(INTDIR)\l_ac_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_fr_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"


"$(INTDIR)\l_fr_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"


"$(INTDIR)\l_fr_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\LTS\l_fr_ma1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"


"$(INTDIR)\l_fr_ma1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"


"$(INTDIR)\l_fr_ma1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\LTS\l_fr_pr1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"


"$(INTDIR)\l_fr_pr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"


"$(INTDIR)\l_fr_pr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\LTS\l_fr_rta.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"


"$(INTDIR)\l_fr_rta.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"


"$(INTDIR)\l_fr_rta.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\LTS\l_fr_ru1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"


"$(INTDIR)\l_fr_ru1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"


"$(INTDIR)\l_fr_ru1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\LTS\l_fr_sp1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"


"$(INTDIR)\l_fr_sp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"


"$(INTDIR)\l_fr_sp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\LTS\l_fr_suf.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"


"$(INTDIR)\l_fr_suf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"


"$(INTDIR)\l_fr_suf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\LTS\l_gr_ad1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"


"$(INTDIR)\l_gr_ad1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"


"$(INTDIR)\l_gr_ad1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_gr_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"


"$(INTDIR)\l_gr_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"


"$(INTDIR)\l_gr_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_gr_ma1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"


"$(INTDIR)\l_gr_ma1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"


"$(INTDIR)\l_gr_ma1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_gr_pr1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"


"$(INTDIR)\l_gr_pr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"


"$(INTDIR)\l_gr_pr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_gr_rta.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"


"$(INTDIR)\l_gr_rta.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"


"$(INTDIR)\l_gr_rta.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_gr_ru1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"


"$(INTDIR)\l_gr_ru1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"


"$(INTDIR)\l_gr_ru1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_gr_sp1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"


"$(INTDIR)\l_gr_sp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"


"$(INTDIR)\l_gr_sp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_gr_suf.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"


"$(INTDIR)\l_gr_suf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"


"$(INTDIR)\l_gr_suf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_la_ad1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"


"$(INTDIR)\l_la_ad1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"


"$(INTDIR)\l_la_ad1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_la_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"


"$(INTDIR)\l_la_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"


"$(INTDIR)\l_la_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_la_ma1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"


"$(INTDIR)\l_la_ma1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"


"$(INTDIR)\l_la_ma1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_la_pr1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"


"$(INTDIR)\l_la_pr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"


"$(INTDIR)\l_la_pr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_la_ru1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"


"$(INTDIR)\l_la_ru1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"


"$(INTDIR)\l_la_ru1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_la_sp1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"


"$(INTDIR)\l_la_sp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"


"$(INTDIR)\l_la_sp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_sp_ad1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"


"$(INTDIR)\l_sp_ad1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"


"$(INTDIR)\l_sp_ad1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_sp_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"


"$(INTDIR)\l_sp_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"


"$(INTDIR)\l_sp_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_sp_ma1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"


"$(INTDIR)\l_sp_ma1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"


"$(INTDIR)\l_sp_ma1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_sp_pr1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"


"$(INTDIR)\l_sp_pr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"


"$(INTDIR)\l_sp_pr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_sp_ru1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"


"$(INTDIR)\l_sp_ru1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"


"$(INTDIR)\l_sp_ru1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_sp_sp1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"


"$(INTDIR)\l_sp_sp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"


"$(INTDIR)\l_sp_sp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_uk_ad1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"


"$(INTDIR)\l_uk_ad1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"


"$(INTDIR)\l_uk_ad1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_uk_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"


"$(INTDIR)\l_uk_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"


"$(INTDIR)\l_uk_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_uk_ma1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"


"$(INTDIR)\l_uk_ma1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"


"$(INTDIR)\l_uk_ma1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_uk_pr1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"


"$(INTDIR)\l_uk_pr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"


"$(INTDIR)\l_uk_pr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_uk_rta.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"


"$(INTDIR)\l_uk_rta.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"


"$(INTDIR)\l_uk_rta.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_uk_ru1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"


"$(INTDIR)\l_uk_ru1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"


"$(INTDIR)\l_uk_ru1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_uk_sp1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"


"$(INTDIR)\l_uk_sp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"


"$(INTDIR)\l_uk_sp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_uk_spe.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"


"$(INTDIR)\l_uk_spe.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"


"$(INTDIR)\l_uk_spe.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_uk_suf.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"


"$(INTDIR)\l_uk_suf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"


"$(INTDIR)\l_uk_suf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_us_ad1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"


"$(INTDIR)\l_us_ad1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"


"$(INTDIR)\l_us_ad1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_us_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"


"$(INTDIR)\l_us_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"


"$(INTDIR)\l_us_con.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_us_ma1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"


"$(INTDIR)\l_us_ma1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"


"$(INTDIR)\l_us_ma1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_us_pr1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"


"$(INTDIR)\l_us_pr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"


"$(INTDIR)\l_us_pr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_us_ru1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"


"$(INTDIR)\l_us_ru1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"


"$(INTDIR)\l_us_ru1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_us_sp1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"


"$(INTDIR)\l_us_sp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"


"$(INTDIR)\l_us_sp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_us_spe.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"


"$(INTDIR)\l_us_spe.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"


"$(INTDIR)\l_us_spe.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\l_us_suf.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"


"$(INTDIR)\l_us_suf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"


"$(INTDIR)\l_us_suf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\lsa_rta.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"


"$(INTDIR)\lsa_rta.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"


"$(INTDIR)\lsa_rta.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

SOURCE=.\LTS\walker.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"


"$(INTDIR)\walker.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"


"$(INTDIR)\walker.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 


!ENDIF 

