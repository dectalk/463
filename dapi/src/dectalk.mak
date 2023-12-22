# Microsoft Developer Studio Generated NMAKE File, Based on dectalk.dsp
!IF "$(CFG)" == ""
CFG=DECTALK - WIN32 DEBUG
!MESSAGE No configuration specified. Defaulting to DECTALK - WIN32 DEBUG.
!ENDIF 

!IF "$(CFG)" != "dectalk - Win32 Release" && "$(CFG)" != "dectalk - Win32 Debug" && "$(CFG)" != "dectalk - Win32 Release Spanish" && "$(CFG)" != "dectalk - Win32 Release German" && "$(CFG)" != "dectalk - Win32 Release Latin American" && "$(CFG)" != "dectalk - Win32 Debug Spanish" && "$(CFG)" != "dectalk - Win32 Debug German" && "$(CFG)" != "dectalk - Win32 Debug Latin American" && "$(CFG)" != "dectalk - Win32 Release United Kingdom" && "$(CFG)" != "dectalk - Win32 Debug United Kingdom" && "$(CFG)" != "dectalk - Win32 Debug French" && "$(CFG)" != "dectalk - Win32 Release French"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "dectalk.mak" CFG="DECTALK - WIN32 DEBUG"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "dectalk - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "dectalk - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "dectalk - Win32 Release Spanish" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "dectalk - Win32 Release German" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "dectalk - Win32 Release Latin American" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "dectalk - Win32 Debug Spanish" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "dectalk - Win32 Debug German" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "dectalk - Win32 Debug Latin American" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "dectalk - Win32 Release United Kingdom" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "dectalk - Win32 Debug United Kingdom" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "dectalk - Win32 Debug French" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "dectalk - Win32 Release French" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "dectalk - Win32 Release"

OUTDIR=.\..\build\dectalk\us\release
INTDIR=.\..\build\dectalk\us\release\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\us\release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\dectalk.dll"

!ELSE 

ALL : "dectalk_lts - Win32 Release" "$(OUTDIR)\dectalk.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"dectalk_lts - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acxf1c.obj"
	-@erase "$(INTDIR)\brent.obj"
	-@erase "$(INTDIR)\circuit.obj"
	-@erase "$(INTDIR)\cm_char.obj"
	-@erase "$(INTDIR)\cm_cmd.obj"
	-@erase "$(INTDIR)\cm_copt.obj"
	-@erase "$(INTDIR)\cm_main.obj"
	-@erase "$(INTDIR)\cm_pars.obj"
	-@erase "$(INTDIR)\cm_phon.obj"
	-@erase "$(INTDIR)\cm_text.obj"
	-@erase "$(INTDIR)\cm_util.obj"
	-@erase "$(INTDIR)\Cmd_init.obj"
	-@erase "$(INTDIR)\cmd_wav.obj"
	-@erase "$(INTDIR)\CRYPT2.OBJ"
	-@erase "$(INTDIR)\dbgwins.obj"
	-@erase "$(INTDIR)\DECSTD97.OBJ"
	-@erase "$(INTDIR)\hlframe.obj"
	-@erase "$(INTDIR)\inithl.obj"
	-@erase "$(INTDIR)\l_us_cha.obj"
	-@erase "$(INTDIR)\loaddict.obj"
	-@erase "$(INTDIR)\log10table.obj"
	-@erase "$(INTDIR)\ls_adju.obj"
	-@erase "$(INTDIR)\ls_dict.obj"
	-@erase "$(INTDIR)\ls_homo.obj"
	-@erase "$(INTDIR)\ls_math.obj"
	-@erase "$(INTDIR)\ls_rule.obj"
	-@erase "$(INTDIR)\ls_rule2.obj"
	-@erase "$(INTDIR)\ls_spel.obj"
	-@erase "$(INTDIR)\ls_suff.obj"
	-@erase "$(INTDIR)\ls_task.obj"
	-@erase "$(INTDIR)\ls_util.obj"
	-@erase "$(INTDIR)\lsa_us.obj"
	-@erase "$(INTDIR)\lsa_util.obj"
	-@erase "$(INTDIR)\lsw_main.obj"
	-@erase "$(INTDIR)\mmalloc.obj"
	-@erase "$(INTDIR)\nasalf1x.obj"
	-@erase "$(INTDIR)\opthread.obj"
	-@erase "$(INTDIR)\p_fr_sr1.obj"
	-@erase "$(INTDIR)\p_fr_st1.obj"
	-@erase "$(INTDIR)\p_fr_sy1.obj"
	-@erase "$(INTDIR)\p_fr_tim.obj"
	-@erase "$(INTDIR)\p_gr_sr1.obj"
	-@erase "$(INTDIR)\p_gr_st1.obj"
	-@erase "$(INTDIR)\p_gr_tim.obj"
	-@erase "$(INTDIR)\p_la_sr1.obj"
	-@erase "$(INTDIR)\p_la_st1.obj"
	-@erase "$(INTDIR)\p_la_sy1.obj"
	-@erase "$(INTDIR)\p_la_tim.obj"
	-@erase "$(INTDIR)\p_sp_sr1.obj"
	-@erase "$(INTDIR)\p_sp_st1.obj"
	-@erase "$(INTDIR)\p_sp_sy1.obj"
	-@erase "$(INTDIR)\p_sp_tim.obj"
	-@erase "$(INTDIR)\P_UK_SR1.OBJ"
	-@erase "$(INTDIR)\p_uk_st1.obj"
	-@erase "$(INTDIR)\P_UK_SY1.OBJ"
	-@erase "$(INTDIR)\p_uk_tim.obj"
	-@erase "$(INTDIR)\p_us_sr1.obj"
	-@erase "$(INTDIR)\p_us_st1.obj"
	-@erase "$(INTDIR)\p_us_sy1.obj"
	-@erase "$(INTDIR)\p_us_tim.obj"
	-@erase "$(INTDIR)\par_ambi.obj"
	-@erase "$(INTDIR)\Par_char.obj"
	-@erase "$(INTDIR)\Par_dict.obj"
	-@erase "$(INTDIR)\par_pars1.obj"
	-@erase "$(INTDIR)\par_rule.obj"
	-@erase "$(INTDIR)\ph_aloph.obj"
	-@erase "$(INTDIR)\ph_claus.obj"
	-@erase "$(INTDIR)\ph_draw.obj"
	-@erase "$(INTDIR)\Ph_drwt02.obj"
	-@erase "$(INTDIR)\Ph_fr_inton2.obj"
	-@erase "$(INTDIR)\ph_inton1.obj"
	-@erase "$(INTDIR)\ph_main.obj"
	-@erase "$(INTDIR)\ph_romi.obj"
	-@erase "$(INTDIR)\ph_setar.obj"
	-@erase "$(INTDIR)\ph_sort.obj"
	-@erase "$(INTDIR)\ph_sort2.obj"
	-@erase "$(INTDIR)\ph_sttr2.obj"
	-@erase "$(INTDIR)\ph_syl.obj"
	-@erase "$(INTDIR)\ph_syntx.obj"
	-@erase "$(INTDIR)\ph_task.obj"
	-@erase "$(INTDIR)\ph_timng.obj"
	-@erase "$(INTDIR)\ph_vdefi.obj"
	-@erase "$(INTDIR)\ph_vset.obj"
	-@erase "$(INTDIR)\phinit.obj"
	-@erase "$(INTDIR)\phlog.obj"
	-@erase "$(INTDIR)\phprint.obj"
	-@erase "$(INTDIR)\PIPE.OBJ"
	-@erase "$(INTDIR)\playaud.obj"
	-@erase "$(INTDIR)\PLAYTONE.OBJ"
	-@erase "$(INTDIR)\SERVICES.OBJ"
	-@erase "$(INTDIR)\SPC.OBJ"
	-@erase "$(INTDIR)\sqrttable.obj"
	-@erase "$(INTDIR)\SYNC.OBJ"
	-@erase "$(INTDIR)\ttsapi.obj"
	-@erase "$(INTDIR)\USA_INIT.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vtm3.obj"
	-@erase "$(INTDIR)\VTMIONT.OBJ"
	-@erase "$(OUTDIR)\dectalk.dll"
	-@erase "$(OUTDIR)\dectalk.exp"
	-@erase "$(OUTDIR)\dectalk.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /pdb:none /machine:I386 /def:".\DECTALK.DEF" /out:"$(OUTDIR)\dectalk.dll" /implib:"$(OUTDIR)\dectalk.lib" 
DEF_FILE= \
	".\DECTALK.DEF"
LINK32_OBJS= \
	"$(INTDIR)\acxf1c.obj" \
	"$(INTDIR)\brent.obj" \
	"$(INTDIR)\circuit.obj" \
	"$(INTDIR)\cm_char.obj" \
	"$(INTDIR)\cm_cmd.obj" \
	"$(INTDIR)\cm_copt.obj" \
	"$(INTDIR)\cm_main.obj" \
	"$(INTDIR)\cm_pars.obj" \
	"$(INTDIR)\cm_phon.obj" \
	"$(INTDIR)\cm_text.obj" \
	"$(INTDIR)\cm_util.obj" \
	"$(INTDIR)\Cmd_init.obj" \
	"$(INTDIR)\cmd_wav.obj" \
	"$(INTDIR)\CRYPT2.OBJ" \
	"$(INTDIR)\dbgwins.obj" \
	"$(INTDIR)\DECSTD97.OBJ" \
	"$(INTDIR)\hlframe.obj" \
	"$(INTDIR)\inithl.obj" \
	"$(INTDIR)\l_us_cha.obj" \
	"$(INTDIR)\loaddict.obj" \
	"$(INTDIR)\log10table.obj" \
	"$(INTDIR)\ls_adju.obj" \
	"$(INTDIR)\ls_dict.obj" \
	"$(INTDIR)\ls_homo.obj" \
	"$(INTDIR)\ls_math.obj" \
	"$(INTDIR)\ls_rule.obj" \
	"$(INTDIR)\ls_rule2.obj" \
	"$(INTDIR)\ls_spel.obj" \
	"$(INTDIR)\ls_suff.obj" \
	"$(INTDIR)\ls_task.obj" \
	"$(INTDIR)\ls_util.obj" \
	"$(INTDIR)\lsa_us.obj" \
	"$(INTDIR)\lsa_util.obj" \
	"$(INTDIR)\lsw_main.obj" \
	"$(INTDIR)\mmalloc.obj" \
	"$(INTDIR)\nasalf1x.obj" \
	"$(INTDIR)\opthread.obj" \
	"$(INTDIR)\p_fr_sr1.obj" \
	"$(INTDIR)\p_fr_st1.obj" \
	"$(INTDIR)\p_fr_sy1.obj" \
	"$(INTDIR)\p_fr_tim.obj" \
	"$(INTDIR)\p_gr_sr1.obj" \
	"$(INTDIR)\p_gr_st1.obj" \
	"$(INTDIR)\p_gr_tim.obj" \
	"$(INTDIR)\p_la_sr1.obj" \
	"$(INTDIR)\p_la_st1.obj" \
	"$(INTDIR)\p_la_sy1.obj" \
	"$(INTDIR)\p_la_tim.obj" \
	"$(INTDIR)\p_sp_sr1.obj" \
	"$(INTDIR)\p_sp_st1.obj" \
	"$(INTDIR)\p_sp_sy1.obj" \
	"$(INTDIR)\p_sp_tim.obj" \
	"$(INTDIR)\P_UK_SR1.OBJ" \
	"$(INTDIR)\p_uk_st1.obj" \
	"$(INTDIR)\P_UK_SY1.OBJ" \
	"$(INTDIR)\p_uk_tim.obj" \
	"$(INTDIR)\p_us_sr1.obj" \
	"$(INTDIR)\p_us_st1.obj" \
	"$(INTDIR)\p_us_sy1.obj" \
	"$(INTDIR)\p_us_tim.obj" \
	"$(INTDIR)\par_ambi.obj" \
	"$(INTDIR)\Par_char.obj" \
	"$(INTDIR)\Par_dict.obj" \
	"$(INTDIR)\par_pars1.obj" \
	"$(INTDIR)\par_rule.obj" \
	"$(INTDIR)\ph_aloph.obj" \
	"$(INTDIR)\ph_claus.obj" \
	"$(INTDIR)\ph_draw.obj" \
	"$(INTDIR)\Ph_drwt02.obj" \
	"$(INTDIR)\Ph_fr_inton2.obj" \
	"$(INTDIR)\ph_inton1.obj" \
	"$(INTDIR)\ph_main.obj" \
	"$(INTDIR)\ph_romi.obj" \
	"$(INTDIR)\ph_setar.obj" \
	"$(INTDIR)\ph_sort.obj" \
	"$(INTDIR)\ph_sort2.obj" \
	"$(INTDIR)\ph_sttr2.obj" \
	"$(INTDIR)\ph_syl.obj" \
	"$(INTDIR)\ph_syntx.obj" \
	"$(INTDIR)\ph_task.obj" \
	"$(INTDIR)\ph_timng.obj" \
	"$(INTDIR)\ph_vdefi.obj" \
	"$(INTDIR)\ph_vset.obj" \
	"$(INTDIR)\phinit.obj" \
	"$(INTDIR)\phlog.obj" \
	"$(INTDIR)\phprint.obj" \
	"$(INTDIR)\PIPE.OBJ" \
	"$(INTDIR)\playaud.obj" \
	"$(INTDIR)\PLAYTONE.OBJ" \
	"$(INTDIR)\SERVICES.OBJ" \
	"$(INTDIR)\SPC.OBJ" \
	"$(INTDIR)\sqrttable.obj" \
	"$(INTDIR)\SYNC.OBJ" \
	"$(INTDIR)\ttsapi.obj" \
	"$(INTDIR)\USA_INIT.OBJ" \
	"$(INTDIR)\vtm3.obj" \
	"$(INTDIR)\VTMIONT.OBJ" \
	"$(OUTDIR)\dectalk_lts_us.lib"

"$(OUTDIR)\dectalk.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

OUTDIR=.\..\build\dectalk\us\debug
INTDIR=.\..\build\dectalk\us\debug\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\us\debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\dectalk.dll"

!ELSE 

ALL : "dectalk_lts - Win32 Debug" "$(OUTDIR)\dectalk.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"dectalk_lts - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acxf1c.obj"
	-@erase "$(INTDIR)\brent.obj"
	-@erase "$(INTDIR)\circuit.obj"
	-@erase "$(INTDIR)\cm_char.obj"
	-@erase "$(INTDIR)\cm_cmd.obj"
	-@erase "$(INTDIR)\cm_copt.obj"
	-@erase "$(INTDIR)\cm_main.obj"
	-@erase "$(INTDIR)\cm_pars.obj"
	-@erase "$(INTDIR)\cm_phon.obj"
	-@erase "$(INTDIR)\cm_text.obj"
	-@erase "$(INTDIR)\cm_util.obj"
	-@erase "$(INTDIR)\Cmd_init.obj"
	-@erase "$(INTDIR)\cmd_wav.obj"
	-@erase "$(INTDIR)\CRYPT2.OBJ"
	-@erase "$(INTDIR)\dbgwins.obj"
	-@erase "$(INTDIR)\DECSTD97.OBJ"
	-@erase "$(INTDIR)\hlframe.obj"
	-@erase "$(INTDIR)\inithl.obj"
	-@erase "$(INTDIR)\l_us_cha.obj"
	-@erase "$(INTDIR)\loaddict.obj"
	-@erase "$(INTDIR)\log10table.obj"
	-@erase "$(INTDIR)\ls_adju.obj"
	-@erase "$(INTDIR)\ls_dict.obj"
	-@erase "$(INTDIR)\ls_homo.obj"
	-@erase "$(INTDIR)\ls_math.obj"
	-@erase "$(INTDIR)\ls_rule.obj"
	-@erase "$(INTDIR)\ls_rule2.obj"
	-@erase "$(INTDIR)\ls_spel.obj"
	-@erase "$(INTDIR)\ls_suff.obj"
	-@erase "$(INTDIR)\ls_task.obj"
	-@erase "$(INTDIR)\ls_util.obj"
	-@erase "$(INTDIR)\lsa_us.obj"
	-@erase "$(INTDIR)\lsa_util.obj"
	-@erase "$(INTDIR)\lsw_main.obj"
	-@erase "$(INTDIR)\mmalloc.obj"
	-@erase "$(INTDIR)\nasalf1x.obj"
	-@erase "$(INTDIR)\opthread.obj"
	-@erase "$(INTDIR)\p_fr_sr1.obj"
	-@erase "$(INTDIR)\p_fr_st1.obj"
	-@erase "$(INTDIR)\p_fr_sy1.obj"
	-@erase "$(INTDIR)\p_fr_tim.obj"
	-@erase "$(INTDIR)\p_gr_sr1.obj"
	-@erase "$(INTDIR)\p_gr_st1.obj"
	-@erase "$(INTDIR)\p_gr_tim.obj"
	-@erase "$(INTDIR)\p_la_sr1.obj"
	-@erase "$(INTDIR)\p_la_st1.obj"
	-@erase "$(INTDIR)\p_la_sy1.obj"
	-@erase "$(INTDIR)\p_la_tim.obj"
	-@erase "$(INTDIR)\p_sp_sr1.obj"
	-@erase "$(INTDIR)\p_sp_st1.obj"
	-@erase "$(INTDIR)\p_sp_sy1.obj"
	-@erase "$(INTDIR)\p_sp_tim.obj"
	-@erase "$(INTDIR)\P_UK_SR1.OBJ"
	-@erase "$(INTDIR)\p_uk_st1.obj"
	-@erase "$(INTDIR)\P_UK_SY1.OBJ"
	-@erase "$(INTDIR)\p_uk_tim.obj"
	-@erase "$(INTDIR)\p_us_sr1.obj"
	-@erase "$(INTDIR)\p_us_st1.obj"
	-@erase "$(INTDIR)\p_us_sy1.obj"
	-@erase "$(INTDIR)\p_us_tim.obj"
	-@erase "$(INTDIR)\par_ambi.obj"
	-@erase "$(INTDIR)\Par_char.obj"
	-@erase "$(INTDIR)\Par_dict.obj"
	-@erase "$(INTDIR)\par_pars1.obj"
	-@erase "$(INTDIR)\par_rule.obj"
	-@erase "$(INTDIR)\ph_aloph.obj"
	-@erase "$(INTDIR)\ph_claus.obj"
	-@erase "$(INTDIR)\ph_draw.obj"
	-@erase "$(INTDIR)\Ph_drwt02.obj"
	-@erase "$(INTDIR)\Ph_fr_inton2.obj"
	-@erase "$(INTDIR)\ph_inton1.obj"
	-@erase "$(INTDIR)\ph_main.obj"
	-@erase "$(INTDIR)\ph_romi.obj"
	-@erase "$(INTDIR)\ph_setar.obj"
	-@erase "$(INTDIR)\ph_sort.obj"
	-@erase "$(INTDIR)\ph_sort2.obj"
	-@erase "$(INTDIR)\ph_sttr2.obj"
	-@erase "$(INTDIR)\ph_syl.obj"
	-@erase "$(INTDIR)\ph_syntx.obj"
	-@erase "$(INTDIR)\ph_task.obj"
	-@erase "$(INTDIR)\ph_timng.obj"
	-@erase "$(INTDIR)\ph_vdefi.obj"
	-@erase "$(INTDIR)\ph_vset.obj"
	-@erase "$(INTDIR)\phinit.obj"
	-@erase "$(INTDIR)\phlog.obj"
	-@erase "$(INTDIR)\phprint.obj"
	-@erase "$(INTDIR)\PIPE.OBJ"
	-@erase "$(INTDIR)\playaud.obj"
	-@erase "$(INTDIR)\PLAYTONE.OBJ"
	-@erase "$(INTDIR)\SERVICES.OBJ"
	-@erase "$(INTDIR)\SPC.OBJ"
	-@erase "$(INTDIR)\sqrttable.obj"
	-@erase "$(INTDIR)\SYNC.OBJ"
	-@erase "$(INTDIR)\ttsapi.obj"
	-@erase "$(INTDIR)\USA_INIT.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\vtm3.obj"
	-@erase "$(INTDIR)\VTMIONT.OBJ"
	-@erase "$(OUTDIR)\dectalk.dll"
	-@erase "$(OUTDIR)\dectalk.exp"
	-@erase "$(OUTDIR)\dectalk.ilk"
	-@erase "$(OUTDIR)\dectalk.lib"
	-@erase "$(OUTDIR)\dectalk.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD WARNINGS /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\dectalk.pdb" /debug /debugtype:both /machine:IX86 /def:".\DECTALK.DEF" /out:"$(OUTDIR)\dectalk.dll" /implib:"$(OUTDIR)\dectalk.lib" 
DEF_FILE= \
	".\DECTALK.DEF"
LINK32_OBJS= \
	"$(INTDIR)\acxf1c.obj" \
	"$(INTDIR)\brent.obj" \
	"$(INTDIR)\circuit.obj" \
	"$(INTDIR)\cm_char.obj" \
	"$(INTDIR)\cm_cmd.obj" \
	"$(INTDIR)\cm_copt.obj" \
	"$(INTDIR)\cm_main.obj" \
	"$(INTDIR)\cm_pars.obj" \
	"$(INTDIR)\cm_phon.obj" \
	"$(INTDIR)\cm_text.obj" \
	"$(INTDIR)\cm_util.obj" \
	"$(INTDIR)\Cmd_init.obj" \
	"$(INTDIR)\cmd_wav.obj" \
	"$(INTDIR)\CRYPT2.OBJ" \
	"$(INTDIR)\dbgwins.obj" \
	"$(INTDIR)\DECSTD97.OBJ" \
	"$(INTDIR)\hlframe.obj" \
	"$(INTDIR)\inithl.obj" \
	"$(INTDIR)\l_us_cha.obj" \
	"$(INTDIR)\loaddict.obj" \
	"$(INTDIR)\log10table.obj" \
	"$(INTDIR)\ls_adju.obj" \
	"$(INTDIR)\ls_dict.obj" \
	"$(INTDIR)\ls_homo.obj" \
	"$(INTDIR)\ls_math.obj" \
	"$(INTDIR)\ls_rule.obj" \
	"$(INTDIR)\ls_rule2.obj" \
	"$(INTDIR)\ls_spel.obj" \
	"$(INTDIR)\ls_suff.obj" \
	"$(INTDIR)\ls_task.obj" \
	"$(INTDIR)\ls_util.obj" \
	"$(INTDIR)\lsa_us.obj" \
	"$(INTDIR)\lsa_util.obj" \
	"$(INTDIR)\lsw_main.obj" \
	"$(INTDIR)\mmalloc.obj" \
	"$(INTDIR)\nasalf1x.obj" \
	"$(INTDIR)\opthread.obj" \
	"$(INTDIR)\p_fr_sr1.obj" \
	"$(INTDIR)\p_fr_st1.obj" \
	"$(INTDIR)\p_fr_sy1.obj" \
	"$(INTDIR)\p_fr_tim.obj" \
	"$(INTDIR)\p_gr_sr1.obj" \
	"$(INTDIR)\p_gr_st1.obj" \
	"$(INTDIR)\p_gr_tim.obj" \
	"$(INTDIR)\p_la_sr1.obj" \
	"$(INTDIR)\p_la_st1.obj" \
	"$(INTDIR)\p_la_sy1.obj" \
	"$(INTDIR)\p_la_tim.obj" \
	"$(INTDIR)\p_sp_sr1.obj" \
	"$(INTDIR)\p_sp_st1.obj" \
	"$(INTDIR)\p_sp_sy1.obj" \
	"$(INTDIR)\p_sp_tim.obj" \
	"$(INTDIR)\P_UK_SR1.OBJ" \
	"$(INTDIR)\p_uk_st1.obj" \
	"$(INTDIR)\P_UK_SY1.OBJ" \
	"$(INTDIR)\p_uk_tim.obj" \
	"$(INTDIR)\p_us_sr1.obj" \
	"$(INTDIR)\p_us_st1.obj" \
	"$(INTDIR)\p_us_sy1.obj" \
	"$(INTDIR)\p_us_tim.obj" \
	"$(INTDIR)\par_ambi.obj" \
	"$(INTDIR)\Par_char.obj" \
	"$(INTDIR)\Par_dict.obj" \
	"$(INTDIR)\par_pars1.obj" \
	"$(INTDIR)\par_rule.obj" \
	"$(INTDIR)\ph_aloph.obj" \
	"$(INTDIR)\ph_claus.obj" \
	"$(INTDIR)\ph_draw.obj" \
	"$(INTDIR)\Ph_drwt02.obj" \
	"$(INTDIR)\Ph_fr_inton2.obj" \
	"$(INTDIR)\ph_inton1.obj" \
	"$(INTDIR)\ph_main.obj" \
	"$(INTDIR)\ph_romi.obj" \
	"$(INTDIR)\ph_setar.obj" \
	"$(INTDIR)\ph_sort.obj" \
	"$(INTDIR)\ph_sort2.obj" \
	"$(INTDIR)\ph_sttr2.obj" \
	"$(INTDIR)\ph_syl.obj" \
	"$(INTDIR)\ph_syntx.obj" \
	"$(INTDIR)\ph_task.obj" \
	"$(INTDIR)\ph_timng.obj" \
	"$(INTDIR)\ph_vdefi.obj" \
	"$(INTDIR)\ph_vset.obj" \
	"$(INTDIR)\phinit.obj" \
	"$(INTDIR)\phlog.obj" \
	"$(INTDIR)\phprint.obj" \
	"$(INTDIR)\PIPE.OBJ" \
	"$(INTDIR)\playaud.obj" \
	"$(INTDIR)\PLAYTONE.OBJ" \
	"$(INTDIR)\SERVICES.OBJ" \
	"$(INTDIR)\SPC.OBJ" \
	"$(INTDIR)\sqrttable.obj" \
	"$(INTDIR)\SYNC.OBJ" \
	"$(INTDIR)\ttsapi.obj" \
	"$(INTDIR)\USA_INIT.OBJ" \
	"$(INTDIR)\vtm3.obj" \
	"$(INTDIR)\VTMIONT.OBJ" \
	"$(OUTDIR)\dectalk_lts_us.lib"

"$(OUTDIR)\dectalk.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

OUTDIR=.\..\build\dectalk\sp\release
INTDIR=.\..\build\dectalk\sp\release\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\sp\release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\dectalk.dll"

!ELSE 

ALL : "dectalk_lts - Win32 Release Spanish" "$(OUTDIR)\dectalk.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"dectalk_lts - Win32 Release SpanishCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acxf1c.obj"
	-@erase "$(INTDIR)\brent.obj"
	-@erase "$(INTDIR)\circuit.obj"
	-@erase "$(INTDIR)\cm_char.obj"
	-@erase "$(INTDIR)\cm_cmd.obj"
	-@erase "$(INTDIR)\cm_copt.obj"
	-@erase "$(INTDIR)\cm_main.obj"
	-@erase "$(INTDIR)\cm_pars.obj"
	-@erase "$(INTDIR)\cm_phon.obj"
	-@erase "$(INTDIR)\cm_text.obj"
	-@erase "$(INTDIR)\cm_util.obj"
	-@erase "$(INTDIR)\Cmd_init.obj"
	-@erase "$(INTDIR)\cmd_wav.obj"
	-@erase "$(INTDIR)\CRYPT2.OBJ"
	-@erase "$(INTDIR)\dbgwins.obj"
	-@erase "$(INTDIR)\DECSTD97.OBJ"
	-@erase "$(INTDIR)\hlframe.obj"
	-@erase "$(INTDIR)\inithl.obj"
	-@erase "$(INTDIR)\l_us_cha.obj"
	-@erase "$(INTDIR)\loaddict.obj"
	-@erase "$(INTDIR)\log10table.obj"
	-@erase "$(INTDIR)\ls_adju.obj"
	-@erase "$(INTDIR)\ls_dict.obj"
	-@erase "$(INTDIR)\ls_homo.obj"
	-@erase "$(INTDIR)\ls_math.obj"
	-@erase "$(INTDIR)\ls_rule.obj"
	-@erase "$(INTDIR)\ls_rule2.obj"
	-@erase "$(INTDIR)\ls_spel.obj"
	-@erase "$(INTDIR)\ls_suff.obj"
	-@erase "$(INTDIR)\ls_task.obj"
	-@erase "$(INTDIR)\ls_util.obj"
	-@erase "$(INTDIR)\lsa_us.obj"
	-@erase "$(INTDIR)\lsa_util.obj"
	-@erase "$(INTDIR)\lsw_main.obj"
	-@erase "$(INTDIR)\mmalloc.obj"
	-@erase "$(INTDIR)\nasalf1x.obj"
	-@erase "$(INTDIR)\opthread.obj"
	-@erase "$(INTDIR)\p_fr_sr1.obj"
	-@erase "$(INTDIR)\p_fr_st1.obj"
	-@erase "$(INTDIR)\p_fr_sy1.obj"
	-@erase "$(INTDIR)\p_fr_tim.obj"
	-@erase "$(INTDIR)\p_gr_sr1.obj"
	-@erase "$(INTDIR)\p_gr_st1.obj"
	-@erase "$(INTDIR)\p_gr_tim.obj"
	-@erase "$(INTDIR)\p_la_sr1.obj"
	-@erase "$(INTDIR)\p_la_st1.obj"
	-@erase "$(INTDIR)\p_la_sy1.obj"
	-@erase "$(INTDIR)\p_la_tim.obj"
	-@erase "$(INTDIR)\p_sp_sr1.obj"
	-@erase "$(INTDIR)\p_sp_st1.obj"
	-@erase "$(INTDIR)\p_sp_sy1.obj"
	-@erase "$(INTDIR)\p_sp_tim.obj"
	-@erase "$(INTDIR)\P_UK_SR1.OBJ"
	-@erase "$(INTDIR)\p_uk_st1.obj"
	-@erase "$(INTDIR)\P_UK_SY1.OBJ"
	-@erase "$(INTDIR)\p_uk_tim.obj"
	-@erase "$(INTDIR)\p_us_sr1.obj"
	-@erase "$(INTDIR)\p_us_st1.obj"
	-@erase "$(INTDIR)\p_us_sy1.obj"
	-@erase "$(INTDIR)\p_us_tim.obj"
	-@erase "$(INTDIR)\par_ambi.obj"
	-@erase "$(INTDIR)\Par_char.obj"
	-@erase "$(INTDIR)\Par_dict.obj"
	-@erase "$(INTDIR)\par_pars1.obj"
	-@erase "$(INTDIR)\par_rule.obj"
	-@erase "$(INTDIR)\ph_aloph.obj"
	-@erase "$(INTDIR)\ph_claus.obj"
	-@erase "$(INTDIR)\ph_draw.obj"
	-@erase "$(INTDIR)\Ph_drwt02.obj"
	-@erase "$(INTDIR)\Ph_fr_inton2.obj"
	-@erase "$(INTDIR)\ph_inton1.obj"
	-@erase "$(INTDIR)\ph_main.obj"
	-@erase "$(INTDIR)\ph_romi.obj"
	-@erase "$(INTDIR)\ph_setar.obj"
	-@erase "$(INTDIR)\ph_sort.obj"
	-@erase "$(INTDIR)\ph_sort2.obj"
	-@erase "$(INTDIR)\ph_sttr2.obj"
	-@erase "$(INTDIR)\ph_syl.obj"
	-@erase "$(INTDIR)\ph_syntx.obj"
	-@erase "$(INTDIR)\ph_task.obj"
	-@erase "$(INTDIR)\ph_timng.obj"
	-@erase "$(INTDIR)\ph_vdefi.obj"
	-@erase "$(INTDIR)\ph_vset.obj"
	-@erase "$(INTDIR)\phinit.obj"
	-@erase "$(INTDIR)\phlog.obj"
	-@erase "$(INTDIR)\phprint.obj"
	-@erase "$(INTDIR)\PIPE.OBJ"
	-@erase "$(INTDIR)\playaud.obj"
	-@erase "$(INTDIR)\PLAYTONE.OBJ"
	-@erase "$(INTDIR)\SERVICES.OBJ"
	-@erase "$(INTDIR)\SPC.OBJ"
	-@erase "$(INTDIR)\sqrttable.obj"
	-@erase "$(INTDIR)\SYNC.OBJ"
	-@erase "$(INTDIR)\ttsapi.obj"
	-@erase "$(INTDIR)\USA_INIT.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vtm3.obj"
	-@erase "$(INTDIR)\VTMIONT.OBJ"
	-@erase "$(OUTDIR)\dectalk.dll"
	-@erase "$(OUTDIR)\dectalk.exp"
	-@erase "$(OUTDIR)\dectalk.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "SPANISH" /D "SPANISH_SP" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\dectalk.pdb" /machine:I386 /def:".\DECTALK.DEF" /out:"$(OUTDIR)\dectalk.dll" /implib:"$(OUTDIR)\dectalk.lib" 
DEF_FILE= \
	".\DECTALK.DEF"
LINK32_OBJS= \
	"$(INTDIR)\acxf1c.obj" \
	"$(INTDIR)\brent.obj" \
	"$(INTDIR)\circuit.obj" \
	"$(INTDIR)\cm_char.obj" \
	"$(INTDIR)\cm_cmd.obj" \
	"$(INTDIR)\cm_copt.obj" \
	"$(INTDIR)\cm_main.obj" \
	"$(INTDIR)\cm_pars.obj" \
	"$(INTDIR)\cm_phon.obj" \
	"$(INTDIR)\cm_text.obj" \
	"$(INTDIR)\cm_util.obj" \
	"$(INTDIR)\Cmd_init.obj" \
	"$(INTDIR)\cmd_wav.obj" \
	"$(INTDIR)\CRYPT2.OBJ" \
	"$(INTDIR)\dbgwins.obj" \
	"$(INTDIR)\DECSTD97.OBJ" \
	"$(INTDIR)\hlframe.obj" \
	"$(INTDIR)\inithl.obj" \
	"$(INTDIR)\l_us_cha.obj" \
	"$(INTDIR)\loaddict.obj" \
	"$(INTDIR)\log10table.obj" \
	"$(INTDIR)\ls_adju.obj" \
	"$(INTDIR)\ls_dict.obj" \
	"$(INTDIR)\ls_homo.obj" \
	"$(INTDIR)\ls_math.obj" \
	"$(INTDIR)\ls_rule.obj" \
	"$(INTDIR)\ls_rule2.obj" \
	"$(INTDIR)\ls_spel.obj" \
	"$(INTDIR)\ls_suff.obj" \
	"$(INTDIR)\ls_task.obj" \
	"$(INTDIR)\ls_util.obj" \
	"$(INTDIR)\lsa_us.obj" \
	"$(INTDIR)\lsa_util.obj" \
	"$(INTDIR)\lsw_main.obj" \
	"$(INTDIR)\mmalloc.obj" \
	"$(INTDIR)\nasalf1x.obj" \
	"$(INTDIR)\opthread.obj" \
	"$(INTDIR)\p_fr_sr1.obj" \
	"$(INTDIR)\p_fr_st1.obj" \
	"$(INTDIR)\p_fr_sy1.obj" \
	"$(INTDIR)\p_fr_tim.obj" \
	"$(INTDIR)\p_gr_sr1.obj" \
	"$(INTDIR)\p_gr_st1.obj" \
	"$(INTDIR)\p_gr_tim.obj" \
	"$(INTDIR)\p_la_sr1.obj" \
	"$(INTDIR)\p_la_st1.obj" \
	"$(INTDIR)\p_la_sy1.obj" \
	"$(INTDIR)\p_la_tim.obj" \
	"$(INTDIR)\p_sp_sr1.obj" \
	"$(INTDIR)\p_sp_st1.obj" \
	"$(INTDIR)\p_sp_sy1.obj" \
	"$(INTDIR)\p_sp_tim.obj" \
	"$(INTDIR)\P_UK_SR1.OBJ" \
	"$(INTDIR)\p_uk_st1.obj" \
	"$(INTDIR)\P_UK_SY1.OBJ" \
	"$(INTDIR)\p_uk_tim.obj" \
	"$(INTDIR)\p_us_sr1.obj" \
	"$(INTDIR)\p_us_st1.obj" \
	"$(INTDIR)\p_us_sy1.obj" \
	"$(INTDIR)\p_us_tim.obj" \
	"$(INTDIR)\par_ambi.obj" \
	"$(INTDIR)\Par_char.obj" \
	"$(INTDIR)\Par_dict.obj" \
	"$(INTDIR)\par_pars1.obj" \
	"$(INTDIR)\par_rule.obj" \
	"$(INTDIR)\ph_aloph.obj" \
	"$(INTDIR)\ph_claus.obj" \
	"$(INTDIR)\ph_draw.obj" \
	"$(INTDIR)\Ph_drwt02.obj" \
	"$(INTDIR)\Ph_fr_inton2.obj" \
	"$(INTDIR)\ph_inton1.obj" \
	"$(INTDIR)\ph_main.obj" \
	"$(INTDIR)\ph_romi.obj" \
	"$(INTDIR)\ph_setar.obj" \
	"$(INTDIR)\ph_sort.obj" \
	"$(INTDIR)\ph_sort2.obj" \
	"$(INTDIR)\ph_sttr2.obj" \
	"$(INTDIR)\ph_syl.obj" \
	"$(INTDIR)\ph_syntx.obj" \
	"$(INTDIR)\ph_task.obj" \
	"$(INTDIR)\ph_timng.obj" \
	"$(INTDIR)\ph_vdefi.obj" \
	"$(INTDIR)\ph_vset.obj" \
	"$(INTDIR)\phinit.obj" \
	"$(INTDIR)\phlog.obj" \
	"$(INTDIR)\phprint.obj" \
	"$(INTDIR)\PIPE.OBJ" \
	"$(INTDIR)\playaud.obj" \
	"$(INTDIR)\PLAYTONE.OBJ" \
	"$(INTDIR)\SERVICES.OBJ" \
	"$(INTDIR)\SPC.OBJ" \
	"$(INTDIR)\sqrttable.obj" \
	"$(INTDIR)\SYNC.OBJ" \
	"$(INTDIR)\ttsapi.obj" \
	"$(INTDIR)\USA_INIT.OBJ" \
	"$(INTDIR)\vtm3.obj" \
	"$(INTDIR)\VTMIONT.OBJ" \
	"$(OUTDIR)\dectalk_lts_sp.lib"

"$(OUTDIR)\dectalk.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

OUTDIR=.\..\build\dectalk\gr\release
INTDIR=.\..\build\dectalk\gr\release\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\gr\release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\dectalk.dll"

!ELSE 

ALL : "dectalk_lts - Win32 Release German" "$(OUTDIR)\dectalk.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"dectalk_lts - Win32 Release GermanCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acxf1c.obj"
	-@erase "$(INTDIR)\brent.obj"
	-@erase "$(INTDIR)\circuit.obj"
	-@erase "$(INTDIR)\cm_char.obj"
	-@erase "$(INTDIR)\cm_cmd.obj"
	-@erase "$(INTDIR)\cm_copt.obj"
	-@erase "$(INTDIR)\cm_main.obj"
	-@erase "$(INTDIR)\cm_pars.obj"
	-@erase "$(INTDIR)\cm_phon.obj"
	-@erase "$(INTDIR)\cm_text.obj"
	-@erase "$(INTDIR)\cm_util.obj"
	-@erase "$(INTDIR)\Cmd_init.obj"
	-@erase "$(INTDIR)\cmd_wav.obj"
	-@erase "$(INTDIR)\CRYPT2.OBJ"
	-@erase "$(INTDIR)\dbgwins.obj"
	-@erase "$(INTDIR)\DECSTD97.OBJ"
	-@erase "$(INTDIR)\hlframe.obj"
	-@erase "$(INTDIR)\inithl.obj"
	-@erase "$(INTDIR)\l_us_cha.obj"
	-@erase "$(INTDIR)\loaddict.obj"
	-@erase "$(INTDIR)\log10table.obj"
	-@erase "$(INTDIR)\ls_adju.obj"
	-@erase "$(INTDIR)\ls_dict.obj"
	-@erase "$(INTDIR)\ls_homo.obj"
	-@erase "$(INTDIR)\ls_math.obj"
	-@erase "$(INTDIR)\ls_rule.obj"
	-@erase "$(INTDIR)\ls_rule2.obj"
	-@erase "$(INTDIR)\ls_spel.obj"
	-@erase "$(INTDIR)\ls_suff.obj"
	-@erase "$(INTDIR)\ls_task.obj"
	-@erase "$(INTDIR)\ls_util.obj"
	-@erase "$(INTDIR)\lsa_us.obj"
	-@erase "$(INTDIR)\lsa_util.obj"
	-@erase "$(INTDIR)\lsw_main.obj"
	-@erase "$(INTDIR)\mmalloc.obj"
	-@erase "$(INTDIR)\nasalf1x.obj"
	-@erase "$(INTDIR)\opthread.obj"
	-@erase "$(INTDIR)\p_fr_sr1.obj"
	-@erase "$(INTDIR)\p_fr_st1.obj"
	-@erase "$(INTDIR)\p_fr_sy1.obj"
	-@erase "$(INTDIR)\p_fr_tim.obj"
	-@erase "$(INTDIR)\p_gr_sr1.obj"
	-@erase "$(INTDIR)\p_gr_st1.obj"
	-@erase "$(INTDIR)\p_gr_tim.obj"
	-@erase "$(INTDIR)\p_la_sr1.obj"
	-@erase "$(INTDIR)\p_la_st1.obj"
	-@erase "$(INTDIR)\p_la_sy1.obj"
	-@erase "$(INTDIR)\p_la_tim.obj"
	-@erase "$(INTDIR)\p_sp_sr1.obj"
	-@erase "$(INTDIR)\p_sp_st1.obj"
	-@erase "$(INTDIR)\p_sp_sy1.obj"
	-@erase "$(INTDIR)\p_sp_tim.obj"
	-@erase "$(INTDIR)\P_UK_SR1.OBJ"
	-@erase "$(INTDIR)\p_uk_st1.obj"
	-@erase "$(INTDIR)\P_UK_SY1.OBJ"
	-@erase "$(INTDIR)\p_uk_tim.obj"
	-@erase "$(INTDIR)\p_us_sr1.obj"
	-@erase "$(INTDIR)\p_us_st1.obj"
	-@erase "$(INTDIR)\p_us_sy1.obj"
	-@erase "$(INTDIR)\p_us_tim.obj"
	-@erase "$(INTDIR)\par_ambi.obj"
	-@erase "$(INTDIR)\Par_char.obj"
	-@erase "$(INTDIR)\Par_dict.obj"
	-@erase "$(INTDIR)\par_pars1.obj"
	-@erase "$(INTDIR)\par_rule.obj"
	-@erase "$(INTDIR)\ph_aloph.obj"
	-@erase "$(INTDIR)\ph_claus.obj"
	-@erase "$(INTDIR)\ph_draw.obj"
	-@erase "$(INTDIR)\Ph_drwt02.obj"
	-@erase "$(INTDIR)\Ph_fr_inton2.obj"
	-@erase "$(INTDIR)\ph_inton1.obj"
	-@erase "$(INTDIR)\ph_main.obj"
	-@erase "$(INTDIR)\ph_romi.obj"
	-@erase "$(INTDIR)\ph_setar.obj"
	-@erase "$(INTDIR)\ph_sort.obj"
	-@erase "$(INTDIR)\ph_sort2.obj"
	-@erase "$(INTDIR)\ph_sttr2.obj"
	-@erase "$(INTDIR)\ph_syl.obj"
	-@erase "$(INTDIR)\ph_syntx.obj"
	-@erase "$(INTDIR)\ph_task.obj"
	-@erase "$(INTDIR)\ph_timng.obj"
	-@erase "$(INTDIR)\ph_vdefi.obj"
	-@erase "$(INTDIR)\ph_vset.obj"
	-@erase "$(INTDIR)\phinit.obj"
	-@erase "$(INTDIR)\phlog.obj"
	-@erase "$(INTDIR)\phprint.obj"
	-@erase "$(INTDIR)\PIPE.OBJ"
	-@erase "$(INTDIR)\playaud.obj"
	-@erase "$(INTDIR)\PLAYTONE.OBJ"
	-@erase "$(INTDIR)\SERVICES.OBJ"
	-@erase "$(INTDIR)\SPC.OBJ"
	-@erase "$(INTDIR)\sqrttable.obj"
	-@erase "$(INTDIR)\SYNC.OBJ"
	-@erase "$(INTDIR)\ttsapi.obj"
	-@erase "$(INTDIR)\USA_INIT.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vtm3.obj"
	-@erase "$(INTDIR)\VTMIONT.OBJ"
	-@erase "$(OUTDIR)\dectalk.dll"
	-@erase "$(OUTDIR)\dectalk.exp"
	-@erase "$(OUTDIR)\dectalk.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "GERMAN" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /Zm200 /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\dectalk.pdb" /machine:I386 /def:".\DECTALK.DEF" /out:"$(OUTDIR)\dectalk.dll" /implib:"$(OUTDIR)\dectalk.lib" 
DEF_FILE= \
	".\DECTALK.DEF"
LINK32_OBJS= \
	"$(INTDIR)\acxf1c.obj" \
	"$(INTDIR)\brent.obj" \
	"$(INTDIR)\circuit.obj" \
	"$(INTDIR)\cm_char.obj" \
	"$(INTDIR)\cm_cmd.obj" \
	"$(INTDIR)\cm_copt.obj" \
	"$(INTDIR)\cm_main.obj" \
	"$(INTDIR)\cm_pars.obj" \
	"$(INTDIR)\cm_phon.obj" \
	"$(INTDIR)\cm_text.obj" \
	"$(INTDIR)\cm_util.obj" \
	"$(INTDIR)\Cmd_init.obj" \
	"$(INTDIR)\cmd_wav.obj" \
	"$(INTDIR)\CRYPT2.OBJ" \
	"$(INTDIR)\dbgwins.obj" \
	"$(INTDIR)\DECSTD97.OBJ" \
	"$(INTDIR)\hlframe.obj" \
	"$(INTDIR)\inithl.obj" \
	"$(INTDIR)\l_us_cha.obj" \
	"$(INTDIR)\loaddict.obj" \
	"$(INTDIR)\log10table.obj" \
	"$(INTDIR)\ls_adju.obj" \
	"$(INTDIR)\ls_dict.obj" \
	"$(INTDIR)\ls_homo.obj" \
	"$(INTDIR)\ls_math.obj" \
	"$(INTDIR)\ls_rule.obj" \
	"$(INTDIR)\ls_rule2.obj" \
	"$(INTDIR)\ls_spel.obj" \
	"$(INTDIR)\ls_suff.obj" \
	"$(INTDIR)\ls_task.obj" \
	"$(INTDIR)\ls_util.obj" \
	"$(INTDIR)\lsa_us.obj" \
	"$(INTDIR)\lsa_util.obj" \
	"$(INTDIR)\lsw_main.obj" \
	"$(INTDIR)\mmalloc.obj" \
	"$(INTDIR)\nasalf1x.obj" \
	"$(INTDIR)\opthread.obj" \
	"$(INTDIR)\p_fr_sr1.obj" \
	"$(INTDIR)\p_fr_st1.obj" \
	"$(INTDIR)\p_fr_sy1.obj" \
	"$(INTDIR)\p_fr_tim.obj" \
	"$(INTDIR)\p_gr_sr1.obj" \
	"$(INTDIR)\p_gr_st1.obj" \
	"$(INTDIR)\p_gr_tim.obj" \
	"$(INTDIR)\p_la_sr1.obj" \
	"$(INTDIR)\p_la_st1.obj" \
	"$(INTDIR)\p_la_sy1.obj" \
	"$(INTDIR)\p_la_tim.obj" \
	"$(INTDIR)\p_sp_sr1.obj" \
	"$(INTDIR)\p_sp_st1.obj" \
	"$(INTDIR)\p_sp_sy1.obj" \
	"$(INTDIR)\p_sp_tim.obj" \
	"$(INTDIR)\P_UK_SR1.OBJ" \
	"$(INTDIR)\p_uk_st1.obj" \
	"$(INTDIR)\P_UK_SY1.OBJ" \
	"$(INTDIR)\p_uk_tim.obj" \
	"$(INTDIR)\p_us_sr1.obj" \
	"$(INTDIR)\p_us_st1.obj" \
	"$(INTDIR)\p_us_sy1.obj" \
	"$(INTDIR)\p_us_tim.obj" \
	"$(INTDIR)\par_ambi.obj" \
	"$(INTDIR)\Par_char.obj" \
	"$(INTDIR)\Par_dict.obj" \
	"$(INTDIR)\par_pars1.obj" \
	"$(INTDIR)\par_rule.obj" \
	"$(INTDIR)\ph_aloph.obj" \
	"$(INTDIR)\ph_claus.obj" \
	"$(INTDIR)\ph_draw.obj" \
	"$(INTDIR)\Ph_drwt02.obj" \
	"$(INTDIR)\Ph_fr_inton2.obj" \
	"$(INTDIR)\ph_inton1.obj" \
	"$(INTDIR)\ph_main.obj" \
	"$(INTDIR)\ph_romi.obj" \
	"$(INTDIR)\ph_setar.obj" \
	"$(INTDIR)\ph_sort.obj" \
	"$(INTDIR)\ph_sort2.obj" \
	"$(INTDIR)\ph_sttr2.obj" \
	"$(INTDIR)\ph_syl.obj" \
	"$(INTDIR)\ph_syntx.obj" \
	"$(INTDIR)\ph_task.obj" \
	"$(INTDIR)\ph_timng.obj" \
	"$(INTDIR)\ph_vdefi.obj" \
	"$(INTDIR)\ph_vset.obj" \
	"$(INTDIR)\phinit.obj" \
	"$(INTDIR)\phlog.obj" \
	"$(INTDIR)\phprint.obj" \
	"$(INTDIR)\PIPE.OBJ" \
	"$(INTDIR)\playaud.obj" \
	"$(INTDIR)\PLAYTONE.OBJ" \
	"$(INTDIR)\SERVICES.OBJ" \
	"$(INTDIR)\SPC.OBJ" \
	"$(INTDIR)\sqrttable.obj" \
	"$(INTDIR)\SYNC.OBJ" \
	"$(INTDIR)\ttsapi.obj" \
	"$(INTDIR)\USA_INIT.OBJ" \
	"$(INTDIR)\vtm3.obj" \
	"$(INTDIR)\VTMIONT.OBJ" \
	"$(OUTDIR)\dectalk_lts_gr.lib"

"$(OUTDIR)\dectalk.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

OUTDIR=.\..\build\dectalk\la\release
INTDIR=.\..\build\dectalk\la\release\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\la\release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\dectalk.dll"

!ELSE 

ALL : "dectalk_lts - Win32 Release Latin American" "$(OUTDIR)\dectalk.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"dectalk_lts - Win32 Release Latin AmericanCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acxf1c.obj"
	-@erase "$(INTDIR)\brent.obj"
	-@erase "$(INTDIR)\circuit.obj"
	-@erase "$(INTDIR)\cm_char.obj"
	-@erase "$(INTDIR)\cm_cmd.obj"
	-@erase "$(INTDIR)\cm_copt.obj"
	-@erase "$(INTDIR)\cm_main.obj"
	-@erase "$(INTDIR)\cm_pars.obj"
	-@erase "$(INTDIR)\cm_phon.obj"
	-@erase "$(INTDIR)\cm_text.obj"
	-@erase "$(INTDIR)\cm_util.obj"
	-@erase "$(INTDIR)\Cmd_init.obj"
	-@erase "$(INTDIR)\cmd_wav.obj"
	-@erase "$(INTDIR)\CRYPT2.OBJ"
	-@erase "$(INTDIR)\dbgwins.obj"
	-@erase "$(INTDIR)\DECSTD97.OBJ"
	-@erase "$(INTDIR)\hlframe.obj"
	-@erase "$(INTDIR)\inithl.obj"
	-@erase "$(INTDIR)\l_us_cha.obj"
	-@erase "$(INTDIR)\loaddict.obj"
	-@erase "$(INTDIR)\log10table.obj"
	-@erase "$(INTDIR)\ls_adju.obj"
	-@erase "$(INTDIR)\ls_dict.obj"
	-@erase "$(INTDIR)\ls_homo.obj"
	-@erase "$(INTDIR)\ls_math.obj"
	-@erase "$(INTDIR)\ls_rule.obj"
	-@erase "$(INTDIR)\ls_rule2.obj"
	-@erase "$(INTDIR)\ls_spel.obj"
	-@erase "$(INTDIR)\ls_suff.obj"
	-@erase "$(INTDIR)\ls_task.obj"
	-@erase "$(INTDIR)\ls_util.obj"
	-@erase "$(INTDIR)\lsa_us.obj"
	-@erase "$(INTDIR)\lsa_util.obj"
	-@erase "$(INTDIR)\lsw_main.obj"
	-@erase "$(INTDIR)\mmalloc.obj"
	-@erase "$(INTDIR)\nasalf1x.obj"
	-@erase "$(INTDIR)\opthread.obj"
	-@erase "$(INTDIR)\p_fr_sr1.obj"
	-@erase "$(INTDIR)\p_fr_st1.obj"
	-@erase "$(INTDIR)\p_fr_sy1.obj"
	-@erase "$(INTDIR)\p_fr_tim.obj"
	-@erase "$(INTDIR)\p_gr_sr1.obj"
	-@erase "$(INTDIR)\p_gr_st1.obj"
	-@erase "$(INTDIR)\p_gr_tim.obj"
	-@erase "$(INTDIR)\p_la_sr1.obj"
	-@erase "$(INTDIR)\p_la_st1.obj"
	-@erase "$(INTDIR)\p_la_sy1.obj"
	-@erase "$(INTDIR)\p_la_tim.obj"
	-@erase "$(INTDIR)\p_sp_sr1.obj"
	-@erase "$(INTDIR)\p_sp_st1.obj"
	-@erase "$(INTDIR)\p_sp_sy1.obj"
	-@erase "$(INTDIR)\p_sp_tim.obj"
	-@erase "$(INTDIR)\P_UK_SR1.OBJ"
	-@erase "$(INTDIR)\p_uk_st1.obj"
	-@erase "$(INTDIR)\P_UK_SY1.OBJ"
	-@erase "$(INTDIR)\p_uk_tim.obj"
	-@erase "$(INTDIR)\p_us_sr1.obj"
	-@erase "$(INTDIR)\p_us_st1.obj"
	-@erase "$(INTDIR)\p_us_sy1.obj"
	-@erase "$(INTDIR)\p_us_tim.obj"
	-@erase "$(INTDIR)\par_ambi.obj"
	-@erase "$(INTDIR)\Par_char.obj"
	-@erase "$(INTDIR)\Par_dict.obj"
	-@erase "$(INTDIR)\par_pars1.obj"
	-@erase "$(INTDIR)\par_rule.obj"
	-@erase "$(INTDIR)\ph_aloph.obj"
	-@erase "$(INTDIR)\ph_claus.obj"
	-@erase "$(INTDIR)\ph_draw.obj"
	-@erase "$(INTDIR)\Ph_drwt02.obj"
	-@erase "$(INTDIR)\Ph_fr_inton2.obj"
	-@erase "$(INTDIR)\ph_inton1.obj"
	-@erase "$(INTDIR)\ph_main.obj"
	-@erase "$(INTDIR)\ph_romi.obj"
	-@erase "$(INTDIR)\ph_setar.obj"
	-@erase "$(INTDIR)\ph_sort.obj"
	-@erase "$(INTDIR)\ph_sort2.obj"
	-@erase "$(INTDIR)\ph_sttr2.obj"
	-@erase "$(INTDIR)\ph_syl.obj"
	-@erase "$(INTDIR)\ph_syntx.obj"
	-@erase "$(INTDIR)\ph_task.obj"
	-@erase "$(INTDIR)\ph_timng.obj"
	-@erase "$(INTDIR)\ph_vdefi.obj"
	-@erase "$(INTDIR)\ph_vset.obj"
	-@erase "$(INTDIR)\phinit.obj"
	-@erase "$(INTDIR)\phlog.obj"
	-@erase "$(INTDIR)\phprint.obj"
	-@erase "$(INTDIR)\PIPE.OBJ"
	-@erase "$(INTDIR)\playaud.obj"
	-@erase "$(INTDIR)\PLAYTONE.OBJ"
	-@erase "$(INTDIR)\SERVICES.OBJ"
	-@erase "$(INTDIR)\SPC.OBJ"
	-@erase "$(INTDIR)\sqrttable.obj"
	-@erase "$(INTDIR)\SYNC.OBJ"
	-@erase "$(INTDIR)\ttsapi.obj"
	-@erase "$(INTDIR)\USA_INIT.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vtm3.obj"
	-@erase "$(INTDIR)\VTMIONT.OBJ"
	-@erase "$(OUTDIR)\dectalk.dll"
	-@erase "$(OUTDIR)\dectalk.exp"
	-@erase "$(OUTDIR)\dectalk.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "SPANISH" /D "SPANISH_LA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\dectalk.pdb" /machine:I386 /def:".\DECTALK.DEF" /out:"$(OUTDIR)\dectalk.dll" /implib:"$(OUTDIR)\dectalk.lib" 
DEF_FILE= \
	".\DECTALK.DEF"
LINK32_OBJS= \
	"$(INTDIR)\acxf1c.obj" \
	"$(INTDIR)\brent.obj" \
	"$(INTDIR)\circuit.obj" \
	"$(INTDIR)\cm_char.obj" \
	"$(INTDIR)\cm_cmd.obj" \
	"$(INTDIR)\cm_copt.obj" \
	"$(INTDIR)\cm_main.obj" \
	"$(INTDIR)\cm_pars.obj" \
	"$(INTDIR)\cm_phon.obj" \
	"$(INTDIR)\cm_text.obj" \
	"$(INTDIR)\cm_util.obj" \
	"$(INTDIR)\Cmd_init.obj" \
	"$(INTDIR)\cmd_wav.obj" \
	"$(INTDIR)\CRYPT2.OBJ" \
	"$(INTDIR)\dbgwins.obj" \
	"$(INTDIR)\DECSTD97.OBJ" \
	"$(INTDIR)\hlframe.obj" \
	"$(INTDIR)\inithl.obj" \
	"$(INTDIR)\l_us_cha.obj" \
	"$(INTDIR)\loaddict.obj" \
	"$(INTDIR)\log10table.obj" \
	"$(INTDIR)\ls_adju.obj" \
	"$(INTDIR)\ls_dict.obj" \
	"$(INTDIR)\ls_homo.obj" \
	"$(INTDIR)\ls_math.obj" \
	"$(INTDIR)\ls_rule.obj" \
	"$(INTDIR)\ls_rule2.obj" \
	"$(INTDIR)\ls_spel.obj" \
	"$(INTDIR)\ls_suff.obj" \
	"$(INTDIR)\ls_task.obj" \
	"$(INTDIR)\ls_util.obj" \
	"$(INTDIR)\lsa_us.obj" \
	"$(INTDIR)\lsa_util.obj" \
	"$(INTDIR)\lsw_main.obj" \
	"$(INTDIR)\mmalloc.obj" \
	"$(INTDIR)\nasalf1x.obj" \
	"$(INTDIR)\opthread.obj" \
	"$(INTDIR)\p_fr_sr1.obj" \
	"$(INTDIR)\p_fr_st1.obj" \
	"$(INTDIR)\p_fr_sy1.obj" \
	"$(INTDIR)\p_fr_tim.obj" \
	"$(INTDIR)\p_gr_sr1.obj" \
	"$(INTDIR)\p_gr_st1.obj" \
	"$(INTDIR)\p_gr_tim.obj" \
	"$(INTDIR)\p_la_sr1.obj" \
	"$(INTDIR)\p_la_st1.obj" \
	"$(INTDIR)\p_la_sy1.obj" \
	"$(INTDIR)\p_la_tim.obj" \
	"$(INTDIR)\p_sp_sr1.obj" \
	"$(INTDIR)\p_sp_st1.obj" \
	"$(INTDIR)\p_sp_sy1.obj" \
	"$(INTDIR)\p_sp_tim.obj" \
	"$(INTDIR)\P_UK_SR1.OBJ" \
	"$(INTDIR)\p_uk_st1.obj" \
	"$(INTDIR)\P_UK_SY1.OBJ" \
	"$(INTDIR)\p_uk_tim.obj" \
	"$(INTDIR)\p_us_sr1.obj" \
	"$(INTDIR)\p_us_st1.obj" \
	"$(INTDIR)\p_us_sy1.obj" \
	"$(INTDIR)\p_us_tim.obj" \
	"$(INTDIR)\par_ambi.obj" \
	"$(INTDIR)\Par_char.obj" \
	"$(INTDIR)\Par_dict.obj" \
	"$(INTDIR)\par_pars1.obj" \
	"$(INTDIR)\par_rule.obj" \
	"$(INTDIR)\ph_aloph.obj" \
	"$(INTDIR)\ph_claus.obj" \
	"$(INTDIR)\ph_draw.obj" \
	"$(INTDIR)\Ph_drwt02.obj" \
	"$(INTDIR)\Ph_fr_inton2.obj" \
	"$(INTDIR)\ph_inton1.obj" \
	"$(INTDIR)\ph_main.obj" \
	"$(INTDIR)\ph_romi.obj" \
	"$(INTDIR)\ph_setar.obj" \
	"$(INTDIR)\ph_sort.obj" \
	"$(INTDIR)\ph_sort2.obj" \
	"$(INTDIR)\ph_sttr2.obj" \
	"$(INTDIR)\ph_syl.obj" \
	"$(INTDIR)\ph_syntx.obj" \
	"$(INTDIR)\ph_task.obj" \
	"$(INTDIR)\ph_timng.obj" \
	"$(INTDIR)\ph_vdefi.obj" \
	"$(INTDIR)\ph_vset.obj" \
	"$(INTDIR)\phinit.obj" \
	"$(INTDIR)\phlog.obj" \
	"$(INTDIR)\phprint.obj" \
	"$(INTDIR)\PIPE.OBJ" \
	"$(INTDIR)\playaud.obj" \
	"$(INTDIR)\PLAYTONE.OBJ" \
	"$(INTDIR)\SERVICES.OBJ" \
	"$(INTDIR)\SPC.OBJ" \
	"$(INTDIR)\sqrttable.obj" \
	"$(INTDIR)\SYNC.OBJ" \
	"$(INTDIR)\ttsapi.obj" \
	"$(INTDIR)\USA_INIT.OBJ" \
	"$(INTDIR)\vtm3.obj" \
	"$(INTDIR)\VTMIONT.OBJ" \
	"$(OUTDIR)\dectalk_lts_la.lib"

"$(OUTDIR)\dectalk.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

OUTDIR=.\..\build\dectalk\sp\debug
INTDIR=.\..\build\dectalk\sp\debug\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\sp\debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\dectalk.dll"

!ELSE 

ALL : "dectalk_lts - Win32 Debug Spanish" "$(OUTDIR)\dectalk.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"dectalk_lts - Win32 Debug SpanishCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acxf1c.obj"
	-@erase "$(INTDIR)\brent.obj"
	-@erase "$(INTDIR)\circuit.obj"
	-@erase "$(INTDIR)\cm_char.obj"
	-@erase "$(INTDIR)\cm_cmd.obj"
	-@erase "$(INTDIR)\cm_copt.obj"
	-@erase "$(INTDIR)\cm_main.obj"
	-@erase "$(INTDIR)\cm_pars.obj"
	-@erase "$(INTDIR)\cm_phon.obj"
	-@erase "$(INTDIR)\cm_text.obj"
	-@erase "$(INTDIR)\cm_util.obj"
	-@erase "$(INTDIR)\Cmd_init.obj"
	-@erase "$(INTDIR)\cmd_wav.obj"
	-@erase "$(INTDIR)\CRYPT2.OBJ"
	-@erase "$(INTDIR)\dbgwins.obj"
	-@erase "$(INTDIR)\DECSTD97.OBJ"
	-@erase "$(INTDIR)\hlframe.obj"
	-@erase "$(INTDIR)\inithl.obj"
	-@erase "$(INTDIR)\l_us_cha.obj"
	-@erase "$(INTDIR)\loaddict.obj"
	-@erase "$(INTDIR)\log10table.obj"
	-@erase "$(INTDIR)\ls_adju.obj"
	-@erase "$(INTDIR)\ls_dict.obj"
	-@erase "$(INTDIR)\ls_homo.obj"
	-@erase "$(INTDIR)\ls_math.obj"
	-@erase "$(INTDIR)\ls_rule.obj"
	-@erase "$(INTDIR)\ls_rule2.obj"
	-@erase "$(INTDIR)\ls_spel.obj"
	-@erase "$(INTDIR)\ls_suff.obj"
	-@erase "$(INTDIR)\ls_task.obj"
	-@erase "$(INTDIR)\ls_util.obj"
	-@erase "$(INTDIR)\lsa_us.obj"
	-@erase "$(INTDIR)\lsa_util.obj"
	-@erase "$(INTDIR)\lsw_main.obj"
	-@erase "$(INTDIR)\mmalloc.obj"
	-@erase "$(INTDIR)\nasalf1x.obj"
	-@erase "$(INTDIR)\opthread.obj"
	-@erase "$(INTDIR)\p_fr_sr1.obj"
	-@erase "$(INTDIR)\p_fr_st1.obj"
	-@erase "$(INTDIR)\p_fr_sy1.obj"
	-@erase "$(INTDIR)\p_fr_tim.obj"
	-@erase "$(INTDIR)\p_gr_sr1.obj"
	-@erase "$(INTDIR)\p_gr_st1.obj"
	-@erase "$(INTDIR)\p_gr_tim.obj"
	-@erase "$(INTDIR)\p_la_sr1.obj"
	-@erase "$(INTDIR)\p_la_st1.obj"
	-@erase "$(INTDIR)\p_la_sy1.obj"
	-@erase "$(INTDIR)\p_la_tim.obj"
	-@erase "$(INTDIR)\p_sp_sr1.obj"
	-@erase "$(INTDIR)\p_sp_st1.obj"
	-@erase "$(INTDIR)\p_sp_sy1.obj"
	-@erase "$(INTDIR)\p_sp_tim.obj"
	-@erase "$(INTDIR)\P_UK_SR1.OBJ"
	-@erase "$(INTDIR)\p_uk_st1.obj"
	-@erase "$(INTDIR)\P_UK_SY1.OBJ"
	-@erase "$(INTDIR)\p_uk_tim.obj"
	-@erase "$(INTDIR)\p_us_sr1.obj"
	-@erase "$(INTDIR)\p_us_st1.obj"
	-@erase "$(INTDIR)\p_us_sy1.obj"
	-@erase "$(INTDIR)\p_us_tim.obj"
	-@erase "$(INTDIR)\par_ambi.obj"
	-@erase "$(INTDIR)\Par_char.obj"
	-@erase "$(INTDIR)\Par_dict.obj"
	-@erase "$(INTDIR)\par_pars1.obj"
	-@erase "$(INTDIR)\par_rule.obj"
	-@erase "$(INTDIR)\ph_aloph.obj"
	-@erase "$(INTDIR)\ph_claus.obj"
	-@erase "$(INTDIR)\ph_draw.obj"
	-@erase "$(INTDIR)\Ph_drwt02.obj"
	-@erase "$(INTDIR)\Ph_fr_inton2.obj"
	-@erase "$(INTDIR)\ph_inton1.obj"
	-@erase "$(INTDIR)\ph_main.obj"
	-@erase "$(INTDIR)\ph_romi.obj"
	-@erase "$(INTDIR)\ph_setar.obj"
	-@erase "$(INTDIR)\ph_sort.obj"
	-@erase "$(INTDIR)\ph_sort2.obj"
	-@erase "$(INTDIR)\ph_sttr2.obj"
	-@erase "$(INTDIR)\ph_syl.obj"
	-@erase "$(INTDIR)\ph_syntx.obj"
	-@erase "$(INTDIR)\ph_task.obj"
	-@erase "$(INTDIR)\ph_timng.obj"
	-@erase "$(INTDIR)\ph_vdefi.obj"
	-@erase "$(INTDIR)\ph_vset.obj"
	-@erase "$(INTDIR)\phinit.obj"
	-@erase "$(INTDIR)\phlog.obj"
	-@erase "$(INTDIR)\phprint.obj"
	-@erase "$(INTDIR)\PIPE.OBJ"
	-@erase "$(INTDIR)\playaud.obj"
	-@erase "$(INTDIR)\PLAYTONE.OBJ"
	-@erase "$(INTDIR)\SERVICES.OBJ"
	-@erase "$(INTDIR)\SPC.OBJ"
	-@erase "$(INTDIR)\sqrttable.obj"
	-@erase "$(INTDIR)\SYNC.OBJ"
	-@erase "$(INTDIR)\ttsapi.obj"
	-@erase "$(INTDIR)\USA_INIT.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\vtm3.obj"
	-@erase "$(INTDIR)\VTMIONT.OBJ"
	-@erase "$(OUTDIR)\dectalk.dll"
	-@erase "$(OUTDIR)\dectalk.exp"
	-@erase "$(OUTDIR)\dectalk.ilk"
	-@erase "$(OUTDIR)\dectalk.lib"
	-@erase "$(OUTDIR)\dectalk.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "SPANISH" /D "SPANISH_SP" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\dectalk.pdb" /debug /debugtype:both /machine:IX86 /def:".\DECTALK.DEF" /out:"$(OUTDIR)\dectalk.dll" /implib:"$(OUTDIR)\dectalk.lib" 
DEF_FILE= \
	".\DECTALK.DEF"
LINK32_OBJS= \
	"$(INTDIR)\acxf1c.obj" \
	"$(INTDIR)\brent.obj" \
	"$(INTDIR)\circuit.obj" \
	"$(INTDIR)\cm_char.obj" \
	"$(INTDIR)\cm_cmd.obj" \
	"$(INTDIR)\cm_copt.obj" \
	"$(INTDIR)\cm_main.obj" \
	"$(INTDIR)\cm_pars.obj" \
	"$(INTDIR)\cm_phon.obj" \
	"$(INTDIR)\cm_text.obj" \
	"$(INTDIR)\cm_util.obj" \
	"$(INTDIR)\Cmd_init.obj" \
	"$(INTDIR)\cmd_wav.obj" \
	"$(INTDIR)\CRYPT2.OBJ" \
	"$(INTDIR)\dbgwins.obj" \
	"$(INTDIR)\DECSTD97.OBJ" \
	"$(INTDIR)\hlframe.obj" \
	"$(INTDIR)\inithl.obj" \
	"$(INTDIR)\l_us_cha.obj" \
	"$(INTDIR)\loaddict.obj" \
	"$(INTDIR)\log10table.obj" \
	"$(INTDIR)\ls_adju.obj" \
	"$(INTDIR)\ls_dict.obj" \
	"$(INTDIR)\ls_homo.obj" \
	"$(INTDIR)\ls_math.obj" \
	"$(INTDIR)\ls_rule.obj" \
	"$(INTDIR)\ls_rule2.obj" \
	"$(INTDIR)\ls_spel.obj" \
	"$(INTDIR)\ls_suff.obj" \
	"$(INTDIR)\ls_task.obj" \
	"$(INTDIR)\ls_util.obj" \
	"$(INTDIR)\lsa_us.obj" \
	"$(INTDIR)\lsa_util.obj" \
	"$(INTDIR)\lsw_main.obj" \
	"$(INTDIR)\mmalloc.obj" \
	"$(INTDIR)\nasalf1x.obj" \
	"$(INTDIR)\opthread.obj" \
	"$(INTDIR)\p_fr_sr1.obj" \
	"$(INTDIR)\p_fr_st1.obj" \
	"$(INTDIR)\p_fr_sy1.obj" \
	"$(INTDIR)\p_fr_tim.obj" \
	"$(INTDIR)\p_gr_sr1.obj" \
	"$(INTDIR)\p_gr_st1.obj" \
	"$(INTDIR)\p_gr_tim.obj" \
	"$(INTDIR)\p_la_sr1.obj" \
	"$(INTDIR)\p_la_st1.obj" \
	"$(INTDIR)\p_la_sy1.obj" \
	"$(INTDIR)\p_la_tim.obj" \
	"$(INTDIR)\p_sp_sr1.obj" \
	"$(INTDIR)\p_sp_st1.obj" \
	"$(INTDIR)\p_sp_sy1.obj" \
	"$(INTDIR)\p_sp_tim.obj" \
	"$(INTDIR)\P_UK_SR1.OBJ" \
	"$(INTDIR)\p_uk_st1.obj" \
	"$(INTDIR)\P_UK_SY1.OBJ" \
	"$(INTDIR)\p_uk_tim.obj" \
	"$(INTDIR)\p_us_sr1.obj" \
	"$(INTDIR)\p_us_st1.obj" \
	"$(INTDIR)\p_us_sy1.obj" \
	"$(INTDIR)\p_us_tim.obj" \
	"$(INTDIR)\par_ambi.obj" \
	"$(INTDIR)\Par_char.obj" \
	"$(INTDIR)\Par_dict.obj" \
	"$(INTDIR)\par_pars1.obj" \
	"$(INTDIR)\par_rule.obj" \
	"$(INTDIR)\ph_aloph.obj" \
	"$(INTDIR)\ph_claus.obj" \
	"$(INTDIR)\ph_draw.obj" \
	"$(INTDIR)\Ph_drwt02.obj" \
	"$(INTDIR)\Ph_fr_inton2.obj" \
	"$(INTDIR)\ph_inton1.obj" \
	"$(INTDIR)\ph_main.obj" \
	"$(INTDIR)\ph_romi.obj" \
	"$(INTDIR)\ph_setar.obj" \
	"$(INTDIR)\ph_sort.obj" \
	"$(INTDIR)\ph_sort2.obj" \
	"$(INTDIR)\ph_sttr2.obj" \
	"$(INTDIR)\ph_syl.obj" \
	"$(INTDIR)\ph_syntx.obj" \
	"$(INTDIR)\ph_task.obj" \
	"$(INTDIR)\ph_timng.obj" \
	"$(INTDIR)\ph_vdefi.obj" \
	"$(INTDIR)\ph_vset.obj" \
	"$(INTDIR)\phinit.obj" \
	"$(INTDIR)\phlog.obj" \
	"$(INTDIR)\phprint.obj" \
	"$(INTDIR)\PIPE.OBJ" \
	"$(INTDIR)\playaud.obj" \
	"$(INTDIR)\PLAYTONE.OBJ" \
	"$(INTDIR)\SERVICES.OBJ" \
	"$(INTDIR)\SPC.OBJ" \
	"$(INTDIR)\sqrttable.obj" \
	"$(INTDIR)\SYNC.OBJ" \
	"$(INTDIR)\ttsapi.obj" \
	"$(INTDIR)\USA_INIT.OBJ" \
	"$(INTDIR)\vtm3.obj" \
	"$(INTDIR)\VTMIONT.OBJ" \
	"$(OUTDIR)\dectalk_lts_sp.lib"

"$(OUTDIR)\dectalk.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

OUTDIR=.\..\build\dectalk\gr\debug
INTDIR=.\..\build\dectalk\gr\debug\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\gr\debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\dectalk.dll"

!ELSE 

ALL : "dectalk_lts - Win32 Debug German" "$(OUTDIR)\dectalk.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"dectalk_lts - Win32 Debug GermanCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acxf1c.obj"
	-@erase "$(INTDIR)\brent.obj"
	-@erase "$(INTDIR)\circuit.obj"
	-@erase "$(INTDIR)\cm_char.obj"
	-@erase "$(INTDIR)\cm_cmd.obj"
	-@erase "$(INTDIR)\cm_copt.obj"
	-@erase "$(INTDIR)\cm_main.obj"
	-@erase "$(INTDIR)\cm_pars.obj"
	-@erase "$(INTDIR)\cm_phon.obj"
	-@erase "$(INTDIR)\cm_text.obj"
	-@erase "$(INTDIR)\cm_util.obj"
	-@erase "$(INTDIR)\Cmd_init.obj"
	-@erase "$(INTDIR)\cmd_wav.obj"
	-@erase "$(INTDIR)\CRYPT2.OBJ"
	-@erase "$(INTDIR)\dbgwins.obj"
	-@erase "$(INTDIR)\DECSTD97.OBJ"
	-@erase "$(INTDIR)\hlframe.obj"
	-@erase "$(INTDIR)\inithl.obj"
	-@erase "$(INTDIR)\l_us_cha.obj"
	-@erase "$(INTDIR)\loaddict.obj"
	-@erase "$(INTDIR)\log10table.obj"
	-@erase "$(INTDIR)\ls_adju.obj"
	-@erase "$(INTDIR)\ls_dict.obj"
	-@erase "$(INTDIR)\ls_homo.obj"
	-@erase "$(INTDIR)\ls_math.obj"
	-@erase "$(INTDIR)\ls_rule.obj"
	-@erase "$(INTDIR)\ls_rule2.obj"
	-@erase "$(INTDIR)\ls_spel.obj"
	-@erase "$(INTDIR)\ls_suff.obj"
	-@erase "$(INTDIR)\ls_task.obj"
	-@erase "$(INTDIR)\ls_util.obj"
	-@erase "$(INTDIR)\lsa_us.obj"
	-@erase "$(INTDIR)\lsa_util.obj"
	-@erase "$(INTDIR)\lsw_main.obj"
	-@erase "$(INTDIR)\mmalloc.obj"
	-@erase "$(INTDIR)\nasalf1x.obj"
	-@erase "$(INTDIR)\opthread.obj"
	-@erase "$(INTDIR)\p_fr_sr1.obj"
	-@erase "$(INTDIR)\p_fr_st1.obj"
	-@erase "$(INTDIR)\p_fr_sy1.obj"
	-@erase "$(INTDIR)\p_fr_tim.obj"
	-@erase "$(INTDIR)\p_gr_sr1.obj"
	-@erase "$(INTDIR)\p_gr_st1.obj"
	-@erase "$(INTDIR)\p_gr_tim.obj"
	-@erase "$(INTDIR)\p_la_sr1.obj"
	-@erase "$(INTDIR)\p_la_st1.obj"
	-@erase "$(INTDIR)\p_la_sy1.obj"
	-@erase "$(INTDIR)\p_la_tim.obj"
	-@erase "$(INTDIR)\p_sp_sr1.obj"
	-@erase "$(INTDIR)\p_sp_st1.obj"
	-@erase "$(INTDIR)\p_sp_sy1.obj"
	-@erase "$(INTDIR)\p_sp_tim.obj"
	-@erase "$(INTDIR)\P_UK_SR1.OBJ"
	-@erase "$(INTDIR)\p_uk_st1.obj"
	-@erase "$(INTDIR)\P_UK_SY1.OBJ"
	-@erase "$(INTDIR)\p_uk_tim.obj"
	-@erase "$(INTDIR)\p_us_sr1.obj"
	-@erase "$(INTDIR)\p_us_st1.obj"
	-@erase "$(INTDIR)\p_us_sy1.obj"
	-@erase "$(INTDIR)\p_us_tim.obj"
	-@erase "$(INTDIR)\par_ambi.obj"
	-@erase "$(INTDIR)\Par_char.obj"
	-@erase "$(INTDIR)\Par_dict.obj"
	-@erase "$(INTDIR)\par_pars1.obj"
	-@erase "$(INTDIR)\par_rule.obj"
	-@erase "$(INTDIR)\ph_aloph.obj"
	-@erase "$(INTDIR)\ph_claus.obj"
	-@erase "$(INTDIR)\ph_draw.obj"
	-@erase "$(INTDIR)\Ph_drwt02.obj"
	-@erase "$(INTDIR)\Ph_fr_inton2.obj"
	-@erase "$(INTDIR)\ph_inton1.obj"
	-@erase "$(INTDIR)\ph_main.obj"
	-@erase "$(INTDIR)\ph_romi.obj"
	-@erase "$(INTDIR)\ph_setar.obj"
	-@erase "$(INTDIR)\ph_sort.obj"
	-@erase "$(INTDIR)\ph_sort2.obj"
	-@erase "$(INTDIR)\ph_sttr2.obj"
	-@erase "$(INTDIR)\ph_syl.obj"
	-@erase "$(INTDIR)\ph_syntx.obj"
	-@erase "$(INTDIR)\ph_task.obj"
	-@erase "$(INTDIR)\ph_timng.obj"
	-@erase "$(INTDIR)\ph_vdefi.obj"
	-@erase "$(INTDIR)\ph_vset.obj"
	-@erase "$(INTDIR)\phinit.obj"
	-@erase "$(INTDIR)\phlog.obj"
	-@erase "$(INTDIR)\phprint.obj"
	-@erase "$(INTDIR)\PIPE.OBJ"
	-@erase "$(INTDIR)\playaud.obj"
	-@erase "$(INTDIR)\PLAYTONE.OBJ"
	-@erase "$(INTDIR)\SERVICES.OBJ"
	-@erase "$(INTDIR)\SPC.OBJ"
	-@erase "$(INTDIR)\sqrttable.obj"
	-@erase "$(INTDIR)\SYNC.OBJ"
	-@erase "$(INTDIR)\ttsapi.obj"
	-@erase "$(INTDIR)\USA_INIT.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\vtm3.obj"
	-@erase "$(INTDIR)\VTMIONT.OBJ"
	-@erase "$(OUTDIR)\dectalk.dll"
	-@erase "$(OUTDIR)\dectalk.exp"
	-@erase "$(OUTDIR)\dectalk.ilk"
	-@erase "$(OUTDIR)\dectalk.lib"
	-@erase "$(OUTDIR)\dectalk.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "GERMAN" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /Zm200 /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\dectalk.pdb" /debug /debugtype:both /machine:IX86 /def:".\DECTALK.DEF" /out:"$(OUTDIR)\dectalk.dll" /implib:"$(OUTDIR)\dectalk.lib" 
DEF_FILE= \
	".\DECTALK.DEF"
LINK32_OBJS= \
	"$(INTDIR)\acxf1c.obj" \
	"$(INTDIR)\brent.obj" \
	"$(INTDIR)\circuit.obj" \
	"$(INTDIR)\cm_char.obj" \
	"$(INTDIR)\cm_cmd.obj" \
	"$(INTDIR)\cm_copt.obj" \
	"$(INTDIR)\cm_main.obj" \
	"$(INTDIR)\cm_pars.obj" \
	"$(INTDIR)\cm_phon.obj" \
	"$(INTDIR)\cm_text.obj" \
	"$(INTDIR)\cm_util.obj" \
	"$(INTDIR)\Cmd_init.obj" \
	"$(INTDIR)\cmd_wav.obj" \
	"$(INTDIR)\CRYPT2.OBJ" \
	"$(INTDIR)\dbgwins.obj" \
	"$(INTDIR)\DECSTD97.OBJ" \
	"$(INTDIR)\hlframe.obj" \
	"$(INTDIR)\inithl.obj" \
	"$(INTDIR)\l_us_cha.obj" \
	"$(INTDIR)\loaddict.obj" \
	"$(INTDIR)\log10table.obj" \
	"$(INTDIR)\ls_adju.obj" \
	"$(INTDIR)\ls_dict.obj" \
	"$(INTDIR)\ls_homo.obj" \
	"$(INTDIR)\ls_math.obj" \
	"$(INTDIR)\ls_rule.obj" \
	"$(INTDIR)\ls_rule2.obj" \
	"$(INTDIR)\ls_spel.obj" \
	"$(INTDIR)\ls_suff.obj" \
	"$(INTDIR)\ls_task.obj" \
	"$(INTDIR)\ls_util.obj" \
	"$(INTDIR)\lsa_us.obj" \
	"$(INTDIR)\lsa_util.obj" \
	"$(INTDIR)\lsw_main.obj" \
	"$(INTDIR)\mmalloc.obj" \
	"$(INTDIR)\nasalf1x.obj" \
	"$(INTDIR)\opthread.obj" \
	"$(INTDIR)\p_fr_sr1.obj" \
	"$(INTDIR)\p_fr_st1.obj" \
	"$(INTDIR)\p_fr_sy1.obj" \
	"$(INTDIR)\p_fr_tim.obj" \
	"$(INTDIR)\p_gr_sr1.obj" \
	"$(INTDIR)\p_gr_st1.obj" \
	"$(INTDIR)\p_gr_tim.obj" \
	"$(INTDIR)\p_la_sr1.obj" \
	"$(INTDIR)\p_la_st1.obj" \
	"$(INTDIR)\p_la_sy1.obj" \
	"$(INTDIR)\p_la_tim.obj" \
	"$(INTDIR)\p_sp_sr1.obj" \
	"$(INTDIR)\p_sp_st1.obj" \
	"$(INTDIR)\p_sp_sy1.obj" \
	"$(INTDIR)\p_sp_tim.obj" \
	"$(INTDIR)\P_UK_SR1.OBJ" \
	"$(INTDIR)\p_uk_st1.obj" \
	"$(INTDIR)\P_UK_SY1.OBJ" \
	"$(INTDIR)\p_uk_tim.obj" \
	"$(INTDIR)\p_us_sr1.obj" \
	"$(INTDIR)\p_us_st1.obj" \
	"$(INTDIR)\p_us_sy1.obj" \
	"$(INTDIR)\p_us_tim.obj" \
	"$(INTDIR)\par_ambi.obj" \
	"$(INTDIR)\Par_char.obj" \
	"$(INTDIR)\Par_dict.obj" \
	"$(INTDIR)\par_pars1.obj" \
	"$(INTDIR)\par_rule.obj" \
	"$(INTDIR)\ph_aloph.obj" \
	"$(INTDIR)\ph_claus.obj" \
	"$(INTDIR)\ph_draw.obj" \
	"$(INTDIR)\Ph_drwt02.obj" \
	"$(INTDIR)\Ph_fr_inton2.obj" \
	"$(INTDIR)\ph_inton1.obj" \
	"$(INTDIR)\ph_main.obj" \
	"$(INTDIR)\ph_romi.obj" \
	"$(INTDIR)\ph_setar.obj" \
	"$(INTDIR)\ph_sort.obj" \
	"$(INTDIR)\ph_sort2.obj" \
	"$(INTDIR)\ph_sttr2.obj" \
	"$(INTDIR)\ph_syl.obj" \
	"$(INTDIR)\ph_syntx.obj" \
	"$(INTDIR)\ph_task.obj" \
	"$(INTDIR)\ph_timng.obj" \
	"$(INTDIR)\ph_vdefi.obj" \
	"$(INTDIR)\ph_vset.obj" \
	"$(INTDIR)\phinit.obj" \
	"$(INTDIR)\phlog.obj" \
	"$(INTDIR)\phprint.obj" \
	"$(INTDIR)\PIPE.OBJ" \
	"$(INTDIR)\playaud.obj" \
	"$(INTDIR)\PLAYTONE.OBJ" \
	"$(INTDIR)\SERVICES.OBJ" \
	"$(INTDIR)\SPC.OBJ" \
	"$(INTDIR)\sqrttable.obj" \
	"$(INTDIR)\SYNC.OBJ" \
	"$(INTDIR)\ttsapi.obj" \
	"$(INTDIR)\USA_INIT.OBJ" \
	"$(INTDIR)\vtm3.obj" \
	"$(INTDIR)\VTMIONT.OBJ" \
	"$(OUTDIR)\dectalk_lts_gr.lib"

"$(OUTDIR)\dectalk.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

OUTDIR=.\..\build\dectalk\la\debug
INTDIR=.\..\build\dectalk\la\debug\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\la\debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\dectalk.dll"

!ELSE 

ALL : "dectalk_lts - Win32 Debug Latin American" "$(OUTDIR)\dectalk.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"dectalk_lts - Win32 Debug Latin AmericanCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acxf1c.obj"
	-@erase "$(INTDIR)\brent.obj"
	-@erase "$(INTDIR)\circuit.obj"
	-@erase "$(INTDIR)\cm_char.obj"
	-@erase "$(INTDIR)\cm_cmd.obj"
	-@erase "$(INTDIR)\cm_copt.obj"
	-@erase "$(INTDIR)\cm_main.obj"
	-@erase "$(INTDIR)\cm_pars.obj"
	-@erase "$(INTDIR)\cm_phon.obj"
	-@erase "$(INTDIR)\cm_text.obj"
	-@erase "$(INTDIR)\cm_util.obj"
	-@erase "$(INTDIR)\Cmd_init.obj"
	-@erase "$(INTDIR)\cmd_wav.obj"
	-@erase "$(INTDIR)\CRYPT2.OBJ"
	-@erase "$(INTDIR)\dbgwins.obj"
	-@erase "$(INTDIR)\DECSTD97.OBJ"
	-@erase "$(INTDIR)\hlframe.obj"
	-@erase "$(INTDIR)\inithl.obj"
	-@erase "$(INTDIR)\l_us_cha.obj"
	-@erase "$(INTDIR)\loaddict.obj"
	-@erase "$(INTDIR)\log10table.obj"
	-@erase "$(INTDIR)\ls_adju.obj"
	-@erase "$(INTDIR)\ls_dict.obj"
	-@erase "$(INTDIR)\ls_homo.obj"
	-@erase "$(INTDIR)\ls_math.obj"
	-@erase "$(INTDIR)\ls_rule.obj"
	-@erase "$(INTDIR)\ls_rule2.obj"
	-@erase "$(INTDIR)\ls_spel.obj"
	-@erase "$(INTDIR)\ls_suff.obj"
	-@erase "$(INTDIR)\ls_task.obj"
	-@erase "$(INTDIR)\ls_util.obj"
	-@erase "$(INTDIR)\lsa_us.obj"
	-@erase "$(INTDIR)\lsa_util.obj"
	-@erase "$(INTDIR)\lsw_main.obj"
	-@erase "$(INTDIR)\mmalloc.obj"
	-@erase "$(INTDIR)\nasalf1x.obj"
	-@erase "$(INTDIR)\opthread.obj"
	-@erase "$(INTDIR)\p_fr_sr1.obj"
	-@erase "$(INTDIR)\p_fr_st1.obj"
	-@erase "$(INTDIR)\p_fr_sy1.obj"
	-@erase "$(INTDIR)\p_fr_tim.obj"
	-@erase "$(INTDIR)\p_gr_sr1.obj"
	-@erase "$(INTDIR)\p_gr_st1.obj"
	-@erase "$(INTDIR)\p_gr_tim.obj"
	-@erase "$(INTDIR)\p_la_sr1.obj"
	-@erase "$(INTDIR)\p_la_st1.obj"
	-@erase "$(INTDIR)\p_la_sy1.obj"
	-@erase "$(INTDIR)\p_la_tim.obj"
	-@erase "$(INTDIR)\p_sp_sr1.obj"
	-@erase "$(INTDIR)\p_sp_st1.obj"
	-@erase "$(INTDIR)\p_sp_sy1.obj"
	-@erase "$(INTDIR)\p_sp_tim.obj"
	-@erase "$(INTDIR)\P_UK_SR1.OBJ"
	-@erase "$(INTDIR)\p_uk_st1.obj"
	-@erase "$(INTDIR)\P_UK_SY1.OBJ"
	-@erase "$(INTDIR)\p_uk_tim.obj"
	-@erase "$(INTDIR)\p_us_sr1.obj"
	-@erase "$(INTDIR)\p_us_st1.obj"
	-@erase "$(INTDIR)\p_us_sy1.obj"
	-@erase "$(INTDIR)\p_us_tim.obj"
	-@erase "$(INTDIR)\par_ambi.obj"
	-@erase "$(INTDIR)\Par_char.obj"
	-@erase "$(INTDIR)\Par_dict.obj"
	-@erase "$(INTDIR)\par_pars1.obj"
	-@erase "$(INTDIR)\par_rule.obj"
	-@erase "$(INTDIR)\ph_aloph.obj"
	-@erase "$(INTDIR)\ph_claus.obj"
	-@erase "$(INTDIR)\ph_draw.obj"
	-@erase "$(INTDIR)\Ph_drwt02.obj"
	-@erase "$(INTDIR)\Ph_fr_inton2.obj"
	-@erase "$(INTDIR)\ph_inton1.obj"
	-@erase "$(INTDIR)\ph_main.obj"
	-@erase "$(INTDIR)\ph_romi.obj"
	-@erase "$(INTDIR)\ph_setar.obj"
	-@erase "$(INTDIR)\ph_sort.obj"
	-@erase "$(INTDIR)\ph_sort2.obj"
	-@erase "$(INTDIR)\ph_sttr2.obj"
	-@erase "$(INTDIR)\ph_syl.obj"
	-@erase "$(INTDIR)\ph_syntx.obj"
	-@erase "$(INTDIR)\ph_task.obj"
	-@erase "$(INTDIR)\ph_timng.obj"
	-@erase "$(INTDIR)\ph_vdefi.obj"
	-@erase "$(INTDIR)\ph_vset.obj"
	-@erase "$(INTDIR)\phinit.obj"
	-@erase "$(INTDIR)\phlog.obj"
	-@erase "$(INTDIR)\phprint.obj"
	-@erase "$(INTDIR)\PIPE.OBJ"
	-@erase "$(INTDIR)\playaud.obj"
	-@erase "$(INTDIR)\PLAYTONE.OBJ"
	-@erase "$(INTDIR)\SERVICES.OBJ"
	-@erase "$(INTDIR)\SPC.OBJ"
	-@erase "$(INTDIR)\sqrttable.obj"
	-@erase "$(INTDIR)\SYNC.OBJ"
	-@erase "$(INTDIR)\ttsapi.obj"
	-@erase "$(INTDIR)\USA_INIT.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\vtm3.obj"
	-@erase "$(INTDIR)\VTMIONT.OBJ"
	-@erase "$(OUTDIR)\dectalk.dll"
	-@erase "$(OUTDIR)\dectalk.exp"
	-@erase "$(OUTDIR)\dectalk.ilk"
	-@erase "$(OUTDIR)\dectalk.lib"
	-@erase "$(OUTDIR)\dectalk.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "SPANISH" /D "SPANISH_LA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\dectalk.pdb" /debug /debugtype:both /machine:IX86 /def:".\DECTALK.DEF" /out:"$(OUTDIR)\dectalk.dll" /implib:"$(OUTDIR)\dectalk.lib" 
DEF_FILE= \
	".\DECTALK.DEF"
LINK32_OBJS= \
	"$(INTDIR)\acxf1c.obj" \
	"$(INTDIR)\brent.obj" \
	"$(INTDIR)\circuit.obj" \
	"$(INTDIR)\cm_char.obj" \
	"$(INTDIR)\cm_cmd.obj" \
	"$(INTDIR)\cm_copt.obj" \
	"$(INTDIR)\cm_main.obj" \
	"$(INTDIR)\cm_pars.obj" \
	"$(INTDIR)\cm_phon.obj" \
	"$(INTDIR)\cm_text.obj" \
	"$(INTDIR)\cm_util.obj" \
	"$(INTDIR)\Cmd_init.obj" \
	"$(INTDIR)\cmd_wav.obj" \
	"$(INTDIR)\CRYPT2.OBJ" \
	"$(INTDIR)\dbgwins.obj" \
	"$(INTDIR)\DECSTD97.OBJ" \
	"$(INTDIR)\hlframe.obj" \
	"$(INTDIR)\inithl.obj" \
	"$(INTDIR)\l_us_cha.obj" \
	"$(INTDIR)\loaddict.obj" \
	"$(INTDIR)\log10table.obj" \
	"$(INTDIR)\ls_adju.obj" \
	"$(INTDIR)\ls_dict.obj" \
	"$(INTDIR)\ls_homo.obj" \
	"$(INTDIR)\ls_math.obj" \
	"$(INTDIR)\ls_rule.obj" \
	"$(INTDIR)\ls_rule2.obj" \
	"$(INTDIR)\ls_spel.obj" \
	"$(INTDIR)\ls_suff.obj" \
	"$(INTDIR)\ls_task.obj" \
	"$(INTDIR)\ls_util.obj" \
	"$(INTDIR)\lsa_us.obj" \
	"$(INTDIR)\lsa_util.obj" \
	"$(INTDIR)\lsw_main.obj" \
	"$(INTDIR)\mmalloc.obj" \
	"$(INTDIR)\nasalf1x.obj" \
	"$(INTDIR)\opthread.obj" \
	"$(INTDIR)\p_fr_sr1.obj" \
	"$(INTDIR)\p_fr_st1.obj" \
	"$(INTDIR)\p_fr_sy1.obj" \
	"$(INTDIR)\p_fr_tim.obj" \
	"$(INTDIR)\p_gr_sr1.obj" \
	"$(INTDIR)\p_gr_st1.obj" \
	"$(INTDIR)\p_gr_tim.obj" \
	"$(INTDIR)\p_la_sr1.obj" \
	"$(INTDIR)\p_la_st1.obj" \
	"$(INTDIR)\p_la_sy1.obj" \
	"$(INTDIR)\p_la_tim.obj" \
	"$(INTDIR)\p_sp_sr1.obj" \
	"$(INTDIR)\p_sp_st1.obj" \
	"$(INTDIR)\p_sp_sy1.obj" \
	"$(INTDIR)\p_sp_tim.obj" \
	"$(INTDIR)\P_UK_SR1.OBJ" \
	"$(INTDIR)\p_uk_st1.obj" \
	"$(INTDIR)\P_UK_SY1.OBJ" \
	"$(INTDIR)\p_uk_tim.obj" \
	"$(INTDIR)\p_us_sr1.obj" \
	"$(INTDIR)\p_us_st1.obj" \
	"$(INTDIR)\p_us_sy1.obj" \
	"$(INTDIR)\p_us_tim.obj" \
	"$(INTDIR)\par_ambi.obj" \
	"$(INTDIR)\Par_char.obj" \
	"$(INTDIR)\Par_dict.obj" \
	"$(INTDIR)\par_pars1.obj" \
	"$(INTDIR)\par_rule.obj" \
	"$(INTDIR)\ph_aloph.obj" \
	"$(INTDIR)\ph_claus.obj" \
	"$(INTDIR)\ph_draw.obj" \
	"$(INTDIR)\Ph_drwt02.obj" \
	"$(INTDIR)\Ph_fr_inton2.obj" \
	"$(INTDIR)\ph_inton1.obj" \
	"$(INTDIR)\ph_main.obj" \
	"$(INTDIR)\ph_romi.obj" \
	"$(INTDIR)\ph_setar.obj" \
	"$(INTDIR)\ph_sort.obj" \
	"$(INTDIR)\ph_sort2.obj" \
	"$(INTDIR)\ph_sttr2.obj" \
	"$(INTDIR)\ph_syl.obj" \
	"$(INTDIR)\ph_syntx.obj" \
	"$(INTDIR)\ph_task.obj" \
	"$(INTDIR)\ph_timng.obj" \
	"$(INTDIR)\ph_vdefi.obj" \
	"$(INTDIR)\ph_vset.obj" \
	"$(INTDIR)\phinit.obj" \
	"$(INTDIR)\phlog.obj" \
	"$(INTDIR)\phprint.obj" \
	"$(INTDIR)\PIPE.OBJ" \
	"$(INTDIR)\playaud.obj" \
	"$(INTDIR)\PLAYTONE.OBJ" \
	"$(INTDIR)\SERVICES.OBJ" \
	"$(INTDIR)\SPC.OBJ" \
	"$(INTDIR)\sqrttable.obj" \
	"$(INTDIR)\SYNC.OBJ" \
	"$(INTDIR)\ttsapi.obj" \
	"$(INTDIR)\USA_INIT.OBJ" \
	"$(INTDIR)\vtm3.obj" \
	"$(INTDIR)\VTMIONT.OBJ" \
	"$(OUTDIR)\dectalk_lts_la.lib"

"$(OUTDIR)\dectalk.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

OUTDIR=.\..\build\dectalk\uk\release
INTDIR=.\..\build\dectalk\uk\release\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\uk\release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\dectalk.dll"

!ELSE 

ALL : "dectalk_lts - Win32 Release United Kingdom" "$(OUTDIR)\dectalk.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"dectalk_lts - Win32 Release United KingdomCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acxf1c.obj"
	-@erase "$(INTDIR)\brent.obj"
	-@erase "$(INTDIR)\circuit.obj"
	-@erase "$(INTDIR)\cm_char.obj"
	-@erase "$(INTDIR)\cm_cmd.obj"
	-@erase "$(INTDIR)\cm_copt.obj"
	-@erase "$(INTDIR)\cm_main.obj"
	-@erase "$(INTDIR)\cm_pars.obj"
	-@erase "$(INTDIR)\cm_phon.obj"
	-@erase "$(INTDIR)\cm_text.obj"
	-@erase "$(INTDIR)\cm_util.obj"
	-@erase "$(INTDIR)\Cmd_init.obj"
	-@erase "$(INTDIR)\cmd_wav.obj"
	-@erase "$(INTDIR)\CRYPT2.OBJ"
	-@erase "$(INTDIR)\dbgwins.obj"
	-@erase "$(INTDIR)\DECSTD97.OBJ"
	-@erase "$(INTDIR)\hlframe.obj"
	-@erase "$(INTDIR)\inithl.obj"
	-@erase "$(INTDIR)\l_us_cha.obj"
	-@erase "$(INTDIR)\loaddict.obj"
	-@erase "$(INTDIR)\log10table.obj"
	-@erase "$(INTDIR)\ls_adju.obj"
	-@erase "$(INTDIR)\ls_dict.obj"
	-@erase "$(INTDIR)\ls_homo.obj"
	-@erase "$(INTDIR)\ls_math.obj"
	-@erase "$(INTDIR)\ls_rule.obj"
	-@erase "$(INTDIR)\ls_rule2.obj"
	-@erase "$(INTDIR)\ls_spel.obj"
	-@erase "$(INTDIR)\ls_suff.obj"
	-@erase "$(INTDIR)\ls_task.obj"
	-@erase "$(INTDIR)\ls_util.obj"
	-@erase "$(INTDIR)\lsa_us.obj"
	-@erase "$(INTDIR)\lsa_util.obj"
	-@erase "$(INTDIR)\lsw_main.obj"
	-@erase "$(INTDIR)\mmalloc.obj"
	-@erase "$(INTDIR)\nasalf1x.obj"
	-@erase "$(INTDIR)\opthread.obj"
	-@erase "$(INTDIR)\p_fr_sr1.obj"
	-@erase "$(INTDIR)\p_fr_st1.obj"
	-@erase "$(INTDIR)\p_fr_sy1.obj"
	-@erase "$(INTDIR)\p_fr_tim.obj"
	-@erase "$(INTDIR)\p_gr_sr1.obj"
	-@erase "$(INTDIR)\p_gr_st1.obj"
	-@erase "$(INTDIR)\p_gr_tim.obj"
	-@erase "$(INTDIR)\p_la_sr1.obj"
	-@erase "$(INTDIR)\p_la_st1.obj"
	-@erase "$(INTDIR)\p_la_sy1.obj"
	-@erase "$(INTDIR)\p_la_tim.obj"
	-@erase "$(INTDIR)\p_sp_sr1.obj"
	-@erase "$(INTDIR)\p_sp_st1.obj"
	-@erase "$(INTDIR)\p_sp_sy1.obj"
	-@erase "$(INTDIR)\p_sp_tim.obj"
	-@erase "$(INTDIR)\P_UK_SR1.OBJ"
	-@erase "$(INTDIR)\p_uk_st1.obj"
	-@erase "$(INTDIR)\P_UK_SY1.OBJ"
	-@erase "$(INTDIR)\p_uk_tim.obj"
	-@erase "$(INTDIR)\p_us_sr1.obj"
	-@erase "$(INTDIR)\p_us_st1.obj"
	-@erase "$(INTDIR)\p_us_sy1.obj"
	-@erase "$(INTDIR)\p_us_tim.obj"
	-@erase "$(INTDIR)\par_ambi.obj"
	-@erase "$(INTDIR)\Par_char.obj"
	-@erase "$(INTDIR)\Par_dict.obj"
	-@erase "$(INTDIR)\par_pars1.obj"
	-@erase "$(INTDIR)\par_rule.obj"
	-@erase "$(INTDIR)\ph_aloph.obj"
	-@erase "$(INTDIR)\ph_claus.obj"
	-@erase "$(INTDIR)\ph_draw.obj"
	-@erase "$(INTDIR)\Ph_drwt02.obj"
	-@erase "$(INTDIR)\Ph_fr_inton2.obj"
	-@erase "$(INTDIR)\ph_inton1.obj"
	-@erase "$(INTDIR)\ph_main.obj"
	-@erase "$(INTDIR)\ph_romi.obj"
	-@erase "$(INTDIR)\ph_setar.obj"
	-@erase "$(INTDIR)\ph_sort.obj"
	-@erase "$(INTDIR)\ph_sort2.obj"
	-@erase "$(INTDIR)\ph_sttr2.obj"
	-@erase "$(INTDIR)\ph_syl.obj"
	-@erase "$(INTDIR)\ph_syntx.obj"
	-@erase "$(INTDIR)\ph_task.obj"
	-@erase "$(INTDIR)\ph_timng.obj"
	-@erase "$(INTDIR)\ph_vdefi.obj"
	-@erase "$(INTDIR)\ph_vset.obj"
	-@erase "$(INTDIR)\phinit.obj"
	-@erase "$(INTDIR)\phlog.obj"
	-@erase "$(INTDIR)\phprint.obj"
	-@erase "$(INTDIR)\PIPE.OBJ"
	-@erase "$(INTDIR)\playaud.obj"
	-@erase "$(INTDIR)\PLAYTONE.OBJ"
	-@erase "$(INTDIR)\SERVICES.OBJ"
	-@erase "$(INTDIR)\SPC.OBJ"
	-@erase "$(INTDIR)\sqrttable.obj"
	-@erase "$(INTDIR)\SYNC.OBJ"
	-@erase "$(INTDIR)\ttsapi.obj"
	-@erase "$(INTDIR)\USA_INIT.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vtm3.obj"
	-@erase "$(INTDIR)\VTMIONT.OBJ"
	-@erase "$(OUTDIR)\dectalk.dll"
	-@erase "$(OUTDIR)\dectalk.exp"
	-@erase "$(OUTDIR)\dectalk.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "ENGLISH_UK" /D "ENGLISH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\dectalk.pdb" /machine:I386 /def:".\DECTALK.DEF" /out:"$(OUTDIR)\dectalk.dll" /implib:"$(OUTDIR)\dectalk.lib" 
DEF_FILE= \
	".\DECTALK.DEF"
LINK32_OBJS= \
	"$(INTDIR)\acxf1c.obj" \
	"$(INTDIR)\brent.obj" \
	"$(INTDIR)\circuit.obj" \
	"$(INTDIR)\cm_char.obj" \
	"$(INTDIR)\cm_cmd.obj" \
	"$(INTDIR)\cm_copt.obj" \
	"$(INTDIR)\cm_main.obj" \
	"$(INTDIR)\cm_pars.obj" \
	"$(INTDIR)\cm_phon.obj" \
	"$(INTDIR)\cm_text.obj" \
	"$(INTDIR)\cm_util.obj" \
	"$(INTDIR)\Cmd_init.obj" \
	"$(INTDIR)\cmd_wav.obj" \
	"$(INTDIR)\CRYPT2.OBJ" \
	"$(INTDIR)\dbgwins.obj" \
	"$(INTDIR)\DECSTD97.OBJ" \
	"$(INTDIR)\hlframe.obj" \
	"$(INTDIR)\inithl.obj" \
	"$(INTDIR)\l_us_cha.obj" \
	"$(INTDIR)\loaddict.obj" \
	"$(INTDIR)\log10table.obj" \
	"$(INTDIR)\ls_adju.obj" \
	"$(INTDIR)\ls_dict.obj" \
	"$(INTDIR)\ls_homo.obj" \
	"$(INTDIR)\ls_math.obj" \
	"$(INTDIR)\ls_rule.obj" \
	"$(INTDIR)\ls_rule2.obj" \
	"$(INTDIR)\ls_spel.obj" \
	"$(INTDIR)\ls_suff.obj" \
	"$(INTDIR)\ls_task.obj" \
	"$(INTDIR)\ls_util.obj" \
	"$(INTDIR)\lsa_us.obj" \
	"$(INTDIR)\lsa_util.obj" \
	"$(INTDIR)\lsw_main.obj" \
	"$(INTDIR)\mmalloc.obj" \
	"$(INTDIR)\nasalf1x.obj" \
	"$(INTDIR)\opthread.obj" \
	"$(INTDIR)\p_fr_sr1.obj" \
	"$(INTDIR)\p_fr_st1.obj" \
	"$(INTDIR)\p_fr_sy1.obj" \
	"$(INTDIR)\p_fr_tim.obj" \
	"$(INTDIR)\p_gr_sr1.obj" \
	"$(INTDIR)\p_gr_st1.obj" \
	"$(INTDIR)\p_gr_tim.obj" \
	"$(INTDIR)\p_la_sr1.obj" \
	"$(INTDIR)\p_la_st1.obj" \
	"$(INTDIR)\p_la_sy1.obj" \
	"$(INTDIR)\p_la_tim.obj" \
	"$(INTDIR)\p_sp_sr1.obj" \
	"$(INTDIR)\p_sp_st1.obj" \
	"$(INTDIR)\p_sp_sy1.obj" \
	"$(INTDIR)\p_sp_tim.obj" \
	"$(INTDIR)\P_UK_SR1.OBJ" \
	"$(INTDIR)\p_uk_st1.obj" \
	"$(INTDIR)\P_UK_SY1.OBJ" \
	"$(INTDIR)\p_uk_tim.obj" \
	"$(INTDIR)\p_us_sr1.obj" \
	"$(INTDIR)\p_us_st1.obj" \
	"$(INTDIR)\p_us_sy1.obj" \
	"$(INTDIR)\p_us_tim.obj" \
	"$(INTDIR)\par_ambi.obj" \
	"$(INTDIR)\Par_char.obj" \
	"$(INTDIR)\Par_dict.obj" \
	"$(INTDIR)\par_pars1.obj" \
	"$(INTDIR)\par_rule.obj" \
	"$(INTDIR)\ph_aloph.obj" \
	"$(INTDIR)\ph_claus.obj" \
	"$(INTDIR)\ph_draw.obj" \
	"$(INTDIR)\Ph_drwt02.obj" \
	"$(INTDIR)\Ph_fr_inton2.obj" \
	"$(INTDIR)\ph_inton1.obj" \
	"$(INTDIR)\ph_main.obj" \
	"$(INTDIR)\ph_romi.obj" \
	"$(INTDIR)\ph_setar.obj" \
	"$(INTDIR)\ph_sort.obj" \
	"$(INTDIR)\ph_sort2.obj" \
	"$(INTDIR)\ph_sttr2.obj" \
	"$(INTDIR)\ph_syl.obj" \
	"$(INTDIR)\ph_syntx.obj" \
	"$(INTDIR)\ph_task.obj" \
	"$(INTDIR)\ph_timng.obj" \
	"$(INTDIR)\ph_vdefi.obj" \
	"$(INTDIR)\ph_vset.obj" \
	"$(INTDIR)\phinit.obj" \
	"$(INTDIR)\phlog.obj" \
	"$(INTDIR)\phprint.obj" \
	"$(INTDIR)\PIPE.OBJ" \
	"$(INTDIR)\playaud.obj" \
	"$(INTDIR)\PLAYTONE.OBJ" \
	"$(INTDIR)\SERVICES.OBJ" \
	"$(INTDIR)\SPC.OBJ" \
	"$(INTDIR)\sqrttable.obj" \
	"$(INTDIR)\SYNC.OBJ" \
	"$(INTDIR)\ttsapi.obj" \
	"$(INTDIR)\USA_INIT.OBJ" \
	"$(INTDIR)\vtm3.obj" \
	"$(INTDIR)\VTMIONT.OBJ" \
	"$(OUTDIR)\dectalk_lts_uk.lib"

"$(OUTDIR)\dectalk.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

OUTDIR=.\..\build\dectalk\uk\debug
INTDIR=.\..\build\dectalk\uk\debug\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\uk\debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\dectalk.dll"

!ELSE 

ALL : "dectalk_lts - Win32 Debug United Kingdom" "$(OUTDIR)\dectalk.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"dectalk_lts - Win32 Debug United KingdomCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acxf1c.obj"
	-@erase "$(INTDIR)\brent.obj"
	-@erase "$(INTDIR)\circuit.obj"
	-@erase "$(INTDIR)\cm_char.obj"
	-@erase "$(INTDIR)\cm_cmd.obj"
	-@erase "$(INTDIR)\cm_copt.obj"
	-@erase "$(INTDIR)\cm_main.obj"
	-@erase "$(INTDIR)\cm_pars.obj"
	-@erase "$(INTDIR)\cm_phon.obj"
	-@erase "$(INTDIR)\cm_text.obj"
	-@erase "$(INTDIR)\cm_util.obj"
	-@erase "$(INTDIR)\Cmd_init.obj"
	-@erase "$(INTDIR)\cmd_wav.obj"
	-@erase "$(INTDIR)\CRYPT2.OBJ"
	-@erase "$(INTDIR)\dbgwins.obj"
	-@erase "$(INTDIR)\DECSTD97.OBJ"
	-@erase "$(INTDIR)\hlframe.obj"
	-@erase "$(INTDIR)\inithl.obj"
	-@erase "$(INTDIR)\l_us_cha.obj"
	-@erase "$(INTDIR)\loaddict.obj"
	-@erase "$(INTDIR)\log10table.obj"
	-@erase "$(INTDIR)\ls_adju.obj"
	-@erase "$(INTDIR)\ls_dict.obj"
	-@erase "$(INTDIR)\ls_homo.obj"
	-@erase "$(INTDIR)\ls_math.obj"
	-@erase "$(INTDIR)\ls_rule.obj"
	-@erase "$(INTDIR)\ls_rule2.obj"
	-@erase "$(INTDIR)\ls_spel.obj"
	-@erase "$(INTDIR)\ls_suff.obj"
	-@erase "$(INTDIR)\ls_task.obj"
	-@erase "$(INTDIR)\ls_util.obj"
	-@erase "$(INTDIR)\lsa_us.obj"
	-@erase "$(INTDIR)\lsa_util.obj"
	-@erase "$(INTDIR)\lsw_main.obj"
	-@erase "$(INTDIR)\mmalloc.obj"
	-@erase "$(INTDIR)\nasalf1x.obj"
	-@erase "$(INTDIR)\opthread.obj"
	-@erase "$(INTDIR)\p_fr_sr1.obj"
	-@erase "$(INTDIR)\p_fr_st1.obj"
	-@erase "$(INTDIR)\p_fr_sy1.obj"
	-@erase "$(INTDIR)\p_fr_tim.obj"
	-@erase "$(INTDIR)\p_gr_sr1.obj"
	-@erase "$(INTDIR)\p_gr_st1.obj"
	-@erase "$(INTDIR)\p_gr_tim.obj"
	-@erase "$(INTDIR)\p_la_sr1.obj"
	-@erase "$(INTDIR)\p_la_st1.obj"
	-@erase "$(INTDIR)\p_la_sy1.obj"
	-@erase "$(INTDIR)\p_la_tim.obj"
	-@erase "$(INTDIR)\p_sp_sr1.obj"
	-@erase "$(INTDIR)\p_sp_st1.obj"
	-@erase "$(INTDIR)\p_sp_sy1.obj"
	-@erase "$(INTDIR)\p_sp_tim.obj"
	-@erase "$(INTDIR)\P_UK_SR1.OBJ"
	-@erase "$(INTDIR)\p_uk_st1.obj"
	-@erase "$(INTDIR)\P_UK_SY1.OBJ"
	-@erase "$(INTDIR)\p_uk_tim.obj"
	-@erase "$(INTDIR)\p_us_sr1.obj"
	-@erase "$(INTDIR)\p_us_st1.obj"
	-@erase "$(INTDIR)\p_us_sy1.obj"
	-@erase "$(INTDIR)\p_us_tim.obj"
	-@erase "$(INTDIR)\par_ambi.obj"
	-@erase "$(INTDIR)\Par_char.obj"
	-@erase "$(INTDIR)\Par_dict.obj"
	-@erase "$(INTDIR)\par_pars1.obj"
	-@erase "$(INTDIR)\par_rule.obj"
	-@erase "$(INTDIR)\ph_aloph.obj"
	-@erase "$(INTDIR)\ph_claus.obj"
	-@erase "$(INTDIR)\ph_draw.obj"
	-@erase "$(INTDIR)\Ph_drwt02.obj"
	-@erase "$(INTDIR)\Ph_fr_inton2.obj"
	-@erase "$(INTDIR)\ph_inton1.obj"
	-@erase "$(INTDIR)\ph_main.obj"
	-@erase "$(INTDIR)\ph_romi.obj"
	-@erase "$(INTDIR)\ph_setar.obj"
	-@erase "$(INTDIR)\ph_sort.obj"
	-@erase "$(INTDIR)\ph_sort2.obj"
	-@erase "$(INTDIR)\ph_sttr2.obj"
	-@erase "$(INTDIR)\ph_syl.obj"
	-@erase "$(INTDIR)\ph_syntx.obj"
	-@erase "$(INTDIR)\ph_task.obj"
	-@erase "$(INTDIR)\ph_timng.obj"
	-@erase "$(INTDIR)\ph_vdefi.obj"
	-@erase "$(INTDIR)\ph_vset.obj"
	-@erase "$(INTDIR)\phinit.obj"
	-@erase "$(INTDIR)\phlog.obj"
	-@erase "$(INTDIR)\phprint.obj"
	-@erase "$(INTDIR)\PIPE.OBJ"
	-@erase "$(INTDIR)\playaud.obj"
	-@erase "$(INTDIR)\PLAYTONE.OBJ"
	-@erase "$(INTDIR)\SERVICES.OBJ"
	-@erase "$(INTDIR)\SPC.OBJ"
	-@erase "$(INTDIR)\sqrttable.obj"
	-@erase "$(INTDIR)\SYNC.OBJ"
	-@erase "$(INTDIR)\ttsapi.obj"
	-@erase "$(INTDIR)\USA_INIT.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\vtm3.obj"
	-@erase "$(INTDIR)\VTMIONT.OBJ"
	-@erase "$(OUTDIR)\dectalk.dll"
	-@erase "$(OUTDIR)\dectalk.exp"
	-@erase "$(OUTDIR)\dectalk.ilk"
	-@erase "$(OUTDIR)\dectalk.lib"
	-@erase "$(OUTDIR)\dectalk.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "ENGLISH_UK" /D "ENGLISH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\dectalk.pdb" /debug /debugtype:both /machine:IX86 /def:".\DECTALK.DEF" /out:"$(OUTDIR)\dectalk.dll" /implib:"$(OUTDIR)\dectalk.lib" 
DEF_FILE= \
	".\DECTALK.DEF"
LINK32_OBJS= \
	"$(INTDIR)\acxf1c.obj" \
	"$(INTDIR)\brent.obj" \
	"$(INTDIR)\circuit.obj" \
	"$(INTDIR)\cm_char.obj" \
	"$(INTDIR)\cm_cmd.obj" \
	"$(INTDIR)\cm_copt.obj" \
	"$(INTDIR)\cm_main.obj" \
	"$(INTDIR)\cm_pars.obj" \
	"$(INTDIR)\cm_phon.obj" \
	"$(INTDIR)\cm_text.obj" \
	"$(INTDIR)\cm_util.obj" \
	"$(INTDIR)\Cmd_init.obj" \
	"$(INTDIR)\cmd_wav.obj" \
	"$(INTDIR)\CRYPT2.OBJ" \
	"$(INTDIR)\dbgwins.obj" \
	"$(INTDIR)\DECSTD97.OBJ" \
	"$(INTDIR)\hlframe.obj" \
	"$(INTDIR)\inithl.obj" \
	"$(INTDIR)\l_us_cha.obj" \
	"$(INTDIR)\loaddict.obj" \
	"$(INTDIR)\log10table.obj" \
	"$(INTDIR)\ls_adju.obj" \
	"$(INTDIR)\ls_dict.obj" \
	"$(INTDIR)\ls_homo.obj" \
	"$(INTDIR)\ls_math.obj" \
	"$(INTDIR)\ls_rule.obj" \
	"$(INTDIR)\ls_rule2.obj" \
	"$(INTDIR)\ls_spel.obj" \
	"$(INTDIR)\ls_suff.obj" \
	"$(INTDIR)\ls_task.obj" \
	"$(INTDIR)\ls_util.obj" \
	"$(INTDIR)\lsa_us.obj" \
	"$(INTDIR)\lsa_util.obj" \
	"$(INTDIR)\lsw_main.obj" \
	"$(INTDIR)\mmalloc.obj" \
	"$(INTDIR)\nasalf1x.obj" \
	"$(INTDIR)\opthread.obj" \
	"$(INTDIR)\p_fr_sr1.obj" \
	"$(INTDIR)\p_fr_st1.obj" \
	"$(INTDIR)\p_fr_sy1.obj" \
	"$(INTDIR)\p_fr_tim.obj" \
	"$(INTDIR)\p_gr_sr1.obj" \
	"$(INTDIR)\p_gr_st1.obj" \
	"$(INTDIR)\p_gr_tim.obj" \
	"$(INTDIR)\p_la_sr1.obj" \
	"$(INTDIR)\p_la_st1.obj" \
	"$(INTDIR)\p_la_sy1.obj" \
	"$(INTDIR)\p_la_tim.obj" \
	"$(INTDIR)\p_sp_sr1.obj" \
	"$(INTDIR)\p_sp_st1.obj" \
	"$(INTDIR)\p_sp_sy1.obj" \
	"$(INTDIR)\p_sp_tim.obj" \
	"$(INTDIR)\P_UK_SR1.OBJ" \
	"$(INTDIR)\p_uk_st1.obj" \
	"$(INTDIR)\P_UK_SY1.OBJ" \
	"$(INTDIR)\p_uk_tim.obj" \
	"$(INTDIR)\p_us_sr1.obj" \
	"$(INTDIR)\p_us_st1.obj" \
	"$(INTDIR)\p_us_sy1.obj" \
	"$(INTDIR)\p_us_tim.obj" \
	"$(INTDIR)\par_ambi.obj" \
	"$(INTDIR)\Par_char.obj" \
	"$(INTDIR)\Par_dict.obj" \
	"$(INTDIR)\par_pars1.obj" \
	"$(INTDIR)\par_rule.obj" \
	"$(INTDIR)\ph_aloph.obj" \
	"$(INTDIR)\ph_claus.obj" \
	"$(INTDIR)\ph_draw.obj" \
	"$(INTDIR)\Ph_drwt02.obj" \
	"$(INTDIR)\Ph_fr_inton2.obj" \
	"$(INTDIR)\ph_inton1.obj" \
	"$(INTDIR)\ph_main.obj" \
	"$(INTDIR)\ph_romi.obj" \
	"$(INTDIR)\ph_setar.obj" \
	"$(INTDIR)\ph_sort.obj" \
	"$(INTDIR)\ph_sort2.obj" \
	"$(INTDIR)\ph_sttr2.obj" \
	"$(INTDIR)\ph_syl.obj" \
	"$(INTDIR)\ph_syntx.obj" \
	"$(INTDIR)\ph_task.obj" \
	"$(INTDIR)\ph_timng.obj" \
	"$(INTDIR)\ph_vdefi.obj" \
	"$(INTDIR)\ph_vset.obj" \
	"$(INTDIR)\phinit.obj" \
	"$(INTDIR)\phlog.obj" \
	"$(INTDIR)\phprint.obj" \
	"$(INTDIR)\PIPE.OBJ" \
	"$(INTDIR)\playaud.obj" \
	"$(INTDIR)\PLAYTONE.OBJ" \
	"$(INTDIR)\SERVICES.OBJ" \
	"$(INTDIR)\SPC.OBJ" \
	"$(INTDIR)\sqrttable.obj" \
	"$(INTDIR)\SYNC.OBJ" \
	"$(INTDIR)\ttsapi.obj" \
	"$(INTDIR)\USA_INIT.OBJ" \
	"$(INTDIR)\vtm3.obj" \
	"$(INTDIR)\VTMIONT.OBJ" \
	"$(OUTDIR)\dectalk_lts_uk.lib"

"$(OUTDIR)\dectalk.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

OUTDIR=.\..\build\dectalk\fr\debug
INTDIR=.\..\build\dectalk\fr\debug\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\fr\debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\dectalk.dll"

!ELSE 

ALL : "dectalk_lts - Win32 Debug French" "$(OUTDIR)\dectalk.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"dectalk_lts - Win32 Debug FrenchCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acxf1c.obj"
	-@erase "$(INTDIR)\brent.obj"
	-@erase "$(INTDIR)\circuit.obj"
	-@erase "$(INTDIR)\cm_char.obj"
	-@erase "$(INTDIR)\cm_cmd.obj"
	-@erase "$(INTDIR)\cm_copt.obj"
	-@erase "$(INTDIR)\cm_main.obj"
	-@erase "$(INTDIR)\cm_pars.obj"
	-@erase "$(INTDIR)\cm_phon.obj"
	-@erase "$(INTDIR)\cm_text.obj"
	-@erase "$(INTDIR)\cm_util.obj"
	-@erase "$(INTDIR)\Cmd_init.obj"
	-@erase "$(INTDIR)\cmd_wav.obj"
	-@erase "$(INTDIR)\CRYPT2.OBJ"
	-@erase "$(INTDIR)\dbgwins.obj"
	-@erase "$(INTDIR)\DECSTD97.OBJ"
	-@erase "$(INTDIR)\hlframe.obj"
	-@erase "$(INTDIR)\inithl.obj"
	-@erase "$(INTDIR)\l_us_cha.obj"
	-@erase "$(INTDIR)\loaddict.obj"
	-@erase "$(INTDIR)\log10table.obj"
	-@erase "$(INTDIR)\ls_adju.obj"
	-@erase "$(INTDIR)\ls_dict.obj"
	-@erase "$(INTDIR)\ls_homo.obj"
	-@erase "$(INTDIR)\ls_math.obj"
	-@erase "$(INTDIR)\ls_rule.obj"
	-@erase "$(INTDIR)\ls_rule2.obj"
	-@erase "$(INTDIR)\ls_spel.obj"
	-@erase "$(INTDIR)\ls_suff.obj"
	-@erase "$(INTDIR)\ls_task.obj"
	-@erase "$(INTDIR)\ls_util.obj"
	-@erase "$(INTDIR)\lsa_us.obj"
	-@erase "$(INTDIR)\lsa_util.obj"
	-@erase "$(INTDIR)\lsw_main.obj"
	-@erase "$(INTDIR)\mmalloc.obj"
	-@erase "$(INTDIR)\nasalf1x.obj"
	-@erase "$(INTDIR)\opthread.obj"
	-@erase "$(INTDIR)\p_fr_sr1.obj"
	-@erase "$(INTDIR)\p_fr_st1.obj"
	-@erase "$(INTDIR)\p_fr_sy1.obj"
	-@erase "$(INTDIR)\p_fr_tim.obj"
	-@erase "$(INTDIR)\p_gr_sr1.obj"
	-@erase "$(INTDIR)\p_gr_st1.obj"
	-@erase "$(INTDIR)\p_gr_tim.obj"
	-@erase "$(INTDIR)\p_la_sr1.obj"
	-@erase "$(INTDIR)\p_la_st1.obj"
	-@erase "$(INTDIR)\p_la_sy1.obj"
	-@erase "$(INTDIR)\p_la_tim.obj"
	-@erase "$(INTDIR)\p_sp_sr1.obj"
	-@erase "$(INTDIR)\p_sp_st1.obj"
	-@erase "$(INTDIR)\p_sp_sy1.obj"
	-@erase "$(INTDIR)\p_sp_tim.obj"
	-@erase "$(INTDIR)\P_UK_SR1.OBJ"
	-@erase "$(INTDIR)\p_uk_st1.obj"
	-@erase "$(INTDIR)\P_UK_SY1.OBJ"
	-@erase "$(INTDIR)\p_uk_tim.obj"
	-@erase "$(INTDIR)\p_us_sr1.obj"
	-@erase "$(INTDIR)\p_us_st1.obj"
	-@erase "$(INTDIR)\p_us_sy1.obj"
	-@erase "$(INTDIR)\p_us_tim.obj"
	-@erase "$(INTDIR)\par_ambi.obj"
	-@erase "$(INTDIR)\Par_char.obj"
	-@erase "$(INTDIR)\Par_dict.obj"
	-@erase "$(INTDIR)\par_pars1.obj"
	-@erase "$(INTDIR)\par_rule.obj"
	-@erase "$(INTDIR)\ph_aloph.obj"
	-@erase "$(INTDIR)\ph_claus.obj"
	-@erase "$(INTDIR)\ph_draw.obj"
	-@erase "$(INTDIR)\Ph_drwt02.obj"
	-@erase "$(INTDIR)\Ph_fr_inton2.obj"
	-@erase "$(INTDIR)\ph_inton1.obj"
	-@erase "$(INTDIR)\ph_main.obj"
	-@erase "$(INTDIR)\ph_romi.obj"
	-@erase "$(INTDIR)\ph_setar.obj"
	-@erase "$(INTDIR)\ph_sort.obj"
	-@erase "$(INTDIR)\ph_sort2.obj"
	-@erase "$(INTDIR)\ph_sttr2.obj"
	-@erase "$(INTDIR)\ph_syl.obj"
	-@erase "$(INTDIR)\ph_syntx.obj"
	-@erase "$(INTDIR)\ph_task.obj"
	-@erase "$(INTDIR)\ph_timng.obj"
	-@erase "$(INTDIR)\ph_vdefi.obj"
	-@erase "$(INTDIR)\ph_vset.obj"
	-@erase "$(INTDIR)\phinit.obj"
	-@erase "$(INTDIR)\phlog.obj"
	-@erase "$(INTDIR)\phprint.obj"
	-@erase "$(INTDIR)\PIPE.OBJ"
	-@erase "$(INTDIR)\playaud.obj"
	-@erase "$(INTDIR)\PLAYTONE.OBJ"
	-@erase "$(INTDIR)\SERVICES.OBJ"
	-@erase "$(INTDIR)\SPC.OBJ"
	-@erase "$(INTDIR)\sqrttable.obj"
	-@erase "$(INTDIR)\SYNC.OBJ"
	-@erase "$(INTDIR)\ttsapi.obj"
	-@erase "$(INTDIR)\USA_INIT.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\vtm3.obj"
	-@erase "$(INTDIR)\VTMIONT.OBJ"
	-@erase "$(OUTDIR)\dectalk.dll"
	-@erase "$(OUTDIR)\dectalk.exp"
	-@erase "$(OUTDIR)\dectalk.ilk"
	-@erase "$(OUTDIR)\dectalk.lib"
	-@erase "$(OUTDIR)\dectalk.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "FRENCH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\dectalk.pdb" /debug /debugtype:both /machine:IX86 /def:".\DECTALK.DEF" /out:"$(OUTDIR)\dectalk.dll" /implib:"$(OUTDIR)\dectalk.lib" 
DEF_FILE= \
	".\DECTALK.DEF"
LINK32_OBJS= \
	"$(INTDIR)\acxf1c.obj" \
	"$(INTDIR)\brent.obj" \
	"$(INTDIR)\circuit.obj" \
	"$(INTDIR)\cm_char.obj" \
	"$(INTDIR)\cm_cmd.obj" \
	"$(INTDIR)\cm_copt.obj" \
	"$(INTDIR)\cm_main.obj" \
	"$(INTDIR)\cm_pars.obj" \
	"$(INTDIR)\cm_phon.obj" \
	"$(INTDIR)\cm_text.obj" \
	"$(INTDIR)\cm_util.obj" \
	"$(INTDIR)\Cmd_init.obj" \
	"$(INTDIR)\cmd_wav.obj" \
	"$(INTDIR)\CRYPT2.OBJ" \
	"$(INTDIR)\dbgwins.obj" \
	"$(INTDIR)\DECSTD97.OBJ" \
	"$(INTDIR)\hlframe.obj" \
	"$(INTDIR)\inithl.obj" \
	"$(INTDIR)\l_us_cha.obj" \
	"$(INTDIR)\loaddict.obj" \
	"$(INTDIR)\log10table.obj" \
	"$(INTDIR)\ls_adju.obj" \
	"$(INTDIR)\ls_dict.obj" \
	"$(INTDIR)\ls_homo.obj" \
	"$(INTDIR)\ls_math.obj" \
	"$(INTDIR)\ls_rule.obj" \
	"$(INTDIR)\ls_rule2.obj" \
	"$(INTDIR)\ls_spel.obj" \
	"$(INTDIR)\ls_suff.obj" \
	"$(INTDIR)\ls_task.obj" \
	"$(INTDIR)\ls_util.obj" \
	"$(INTDIR)\lsa_us.obj" \
	"$(INTDIR)\lsa_util.obj" \
	"$(INTDIR)\lsw_main.obj" \
	"$(INTDIR)\mmalloc.obj" \
	"$(INTDIR)\nasalf1x.obj" \
	"$(INTDIR)\opthread.obj" \
	"$(INTDIR)\p_fr_sr1.obj" \
	"$(INTDIR)\p_fr_st1.obj" \
	"$(INTDIR)\p_fr_sy1.obj" \
	"$(INTDIR)\p_fr_tim.obj" \
	"$(INTDIR)\p_gr_sr1.obj" \
	"$(INTDIR)\p_gr_st1.obj" \
	"$(INTDIR)\p_gr_tim.obj" \
	"$(INTDIR)\p_la_sr1.obj" \
	"$(INTDIR)\p_la_st1.obj" \
	"$(INTDIR)\p_la_sy1.obj" \
	"$(INTDIR)\p_la_tim.obj" \
	"$(INTDIR)\p_sp_sr1.obj" \
	"$(INTDIR)\p_sp_st1.obj" \
	"$(INTDIR)\p_sp_sy1.obj" \
	"$(INTDIR)\p_sp_tim.obj" \
	"$(INTDIR)\P_UK_SR1.OBJ" \
	"$(INTDIR)\p_uk_st1.obj" \
	"$(INTDIR)\P_UK_SY1.OBJ" \
	"$(INTDIR)\p_uk_tim.obj" \
	"$(INTDIR)\p_us_sr1.obj" \
	"$(INTDIR)\p_us_st1.obj" \
	"$(INTDIR)\p_us_sy1.obj" \
	"$(INTDIR)\p_us_tim.obj" \
	"$(INTDIR)\par_ambi.obj" \
	"$(INTDIR)\Par_char.obj" \
	"$(INTDIR)\Par_dict.obj" \
	"$(INTDIR)\par_pars1.obj" \
	"$(INTDIR)\par_rule.obj" \
	"$(INTDIR)\ph_aloph.obj" \
	"$(INTDIR)\ph_claus.obj" \
	"$(INTDIR)\ph_draw.obj" \
	"$(INTDIR)\Ph_drwt02.obj" \
	"$(INTDIR)\Ph_fr_inton2.obj" \
	"$(INTDIR)\ph_inton1.obj" \
	"$(INTDIR)\ph_main.obj" \
	"$(INTDIR)\ph_romi.obj" \
	"$(INTDIR)\ph_setar.obj" \
	"$(INTDIR)\ph_sort.obj" \
	"$(INTDIR)\ph_sort2.obj" \
	"$(INTDIR)\ph_sttr2.obj" \
	"$(INTDIR)\ph_syl.obj" \
	"$(INTDIR)\ph_syntx.obj" \
	"$(INTDIR)\ph_task.obj" \
	"$(INTDIR)\ph_timng.obj" \
	"$(INTDIR)\ph_vdefi.obj" \
	"$(INTDIR)\ph_vset.obj" \
	"$(INTDIR)\phinit.obj" \
	"$(INTDIR)\phlog.obj" \
	"$(INTDIR)\phprint.obj" \
	"$(INTDIR)\PIPE.OBJ" \
	"$(INTDIR)\playaud.obj" \
	"$(INTDIR)\PLAYTONE.OBJ" \
	"$(INTDIR)\SERVICES.OBJ" \
	"$(INTDIR)\SPC.OBJ" \
	"$(INTDIR)\sqrttable.obj" \
	"$(INTDIR)\SYNC.OBJ" \
	"$(INTDIR)\ttsapi.obj" \
	"$(INTDIR)\USA_INIT.OBJ" \
	"$(INTDIR)\vtm3.obj" \
	"$(INTDIR)\VTMIONT.OBJ" \
	"$(OUTDIR)\dectalk_lts_fr.lib"

"$(OUTDIR)\dectalk.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

OUTDIR=.\..\build\dectalk\fr\release
INTDIR=.\..\build\dectalk\fr\release\link
# Begin Custom Macros
OutDir=.\..\build\dectalk\fr\release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\dectalk.dll"

!ELSE 

ALL : "dectalk_lts - Win32 Release French" "$(OUTDIR)\dectalk.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"dectalk_lts - Win32 Release FrenchCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acxf1c.obj"
	-@erase "$(INTDIR)\brent.obj"
	-@erase "$(INTDIR)\circuit.obj"
	-@erase "$(INTDIR)\cm_char.obj"
	-@erase "$(INTDIR)\cm_cmd.obj"
	-@erase "$(INTDIR)\cm_copt.obj"
	-@erase "$(INTDIR)\cm_main.obj"
	-@erase "$(INTDIR)\cm_pars.obj"
	-@erase "$(INTDIR)\cm_phon.obj"
	-@erase "$(INTDIR)\cm_text.obj"
	-@erase "$(INTDIR)\cm_util.obj"
	-@erase "$(INTDIR)\Cmd_init.obj"
	-@erase "$(INTDIR)\cmd_wav.obj"
	-@erase "$(INTDIR)\CRYPT2.OBJ"
	-@erase "$(INTDIR)\dbgwins.obj"
	-@erase "$(INTDIR)\DECSTD97.OBJ"
	-@erase "$(INTDIR)\hlframe.obj"
	-@erase "$(INTDIR)\inithl.obj"
	-@erase "$(INTDIR)\l_us_cha.obj"
	-@erase "$(INTDIR)\loaddict.obj"
	-@erase "$(INTDIR)\log10table.obj"
	-@erase "$(INTDIR)\ls_adju.obj"
	-@erase "$(INTDIR)\ls_dict.obj"
	-@erase "$(INTDIR)\ls_homo.obj"
	-@erase "$(INTDIR)\ls_math.obj"
	-@erase "$(INTDIR)\ls_rule.obj"
	-@erase "$(INTDIR)\ls_rule2.obj"
	-@erase "$(INTDIR)\ls_spel.obj"
	-@erase "$(INTDIR)\ls_suff.obj"
	-@erase "$(INTDIR)\ls_task.obj"
	-@erase "$(INTDIR)\ls_util.obj"
	-@erase "$(INTDIR)\lsa_us.obj"
	-@erase "$(INTDIR)\lsa_util.obj"
	-@erase "$(INTDIR)\lsw_main.obj"
	-@erase "$(INTDIR)\mmalloc.obj"
	-@erase "$(INTDIR)\nasalf1x.obj"
	-@erase "$(INTDIR)\opthread.obj"
	-@erase "$(INTDIR)\p_fr_sr1.obj"
	-@erase "$(INTDIR)\p_fr_st1.obj"
	-@erase "$(INTDIR)\p_fr_sy1.obj"
	-@erase "$(INTDIR)\p_fr_tim.obj"
	-@erase "$(INTDIR)\p_gr_sr1.obj"
	-@erase "$(INTDIR)\p_gr_st1.obj"
	-@erase "$(INTDIR)\p_gr_tim.obj"
	-@erase "$(INTDIR)\p_la_sr1.obj"
	-@erase "$(INTDIR)\p_la_st1.obj"
	-@erase "$(INTDIR)\p_la_sy1.obj"
	-@erase "$(INTDIR)\p_la_tim.obj"
	-@erase "$(INTDIR)\p_sp_sr1.obj"
	-@erase "$(INTDIR)\p_sp_st1.obj"
	-@erase "$(INTDIR)\p_sp_sy1.obj"
	-@erase "$(INTDIR)\p_sp_tim.obj"
	-@erase "$(INTDIR)\P_UK_SR1.OBJ"
	-@erase "$(INTDIR)\p_uk_st1.obj"
	-@erase "$(INTDIR)\P_UK_SY1.OBJ"
	-@erase "$(INTDIR)\p_uk_tim.obj"
	-@erase "$(INTDIR)\p_us_sr1.obj"
	-@erase "$(INTDIR)\p_us_st1.obj"
	-@erase "$(INTDIR)\p_us_sy1.obj"
	-@erase "$(INTDIR)\p_us_tim.obj"
	-@erase "$(INTDIR)\par_ambi.obj"
	-@erase "$(INTDIR)\Par_char.obj"
	-@erase "$(INTDIR)\Par_dict.obj"
	-@erase "$(INTDIR)\par_pars1.obj"
	-@erase "$(INTDIR)\par_rule.obj"
	-@erase "$(INTDIR)\ph_aloph.obj"
	-@erase "$(INTDIR)\ph_claus.obj"
	-@erase "$(INTDIR)\ph_draw.obj"
	-@erase "$(INTDIR)\Ph_drwt02.obj"
	-@erase "$(INTDIR)\Ph_fr_inton2.obj"
	-@erase "$(INTDIR)\ph_inton1.obj"
	-@erase "$(INTDIR)\ph_main.obj"
	-@erase "$(INTDIR)\ph_romi.obj"
	-@erase "$(INTDIR)\ph_setar.obj"
	-@erase "$(INTDIR)\ph_sort.obj"
	-@erase "$(INTDIR)\ph_sort2.obj"
	-@erase "$(INTDIR)\ph_sttr2.obj"
	-@erase "$(INTDIR)\ph_syl.obj"
	-@erase "$(INTDIR)\ph_syntx.obj"
	-@erase "$(INTDIR)\ph_task.obj"
	-@erase "$(INTDIR)\ph_timng.obj"
	-@erase "$(INTDIR)\ph_vdefi.obj"
	-@erase "$(INTDIR)\ph_vset.obj"
	-@erase "$(INTDIR)\phinit.obj"
	-@erase "$(INTDIR)\phlog.obj"
	-@erase "$(INTDIR)\phprint.obj"
	-@erase "$(INTDIR)\PIPE.OBJ"
	-@erase "$(INTDIR)\playaud.obj"
	-@erase "$(INTDIR)\PLAYTONE.OBJ"
	-@erase "$(INTDIR)\SERVICES.OBJ"
	-@erase "$(INTDIR)\SPC.OBJ"
	-@erase "$(INTDIR)\sqrttable.obj"
	-@erase "$(INTDIR)\SYNC.OBJ"
	-@erase "$(INTDIR)\ttsapi.obj"
	-@erase "$(INTDIR)\USA_INIT.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vtm3.obj"
	-@erase "$(INTDIR)\VTMIONT.OBJ"
	-@erase "$(OUTDIR)\dectalk.dll"
	-@erase "$(OUTDIR)\dectalk.exp"
	-@erase "$(OUTDIR)\dectalk.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "FRENCH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /Fp"$(INTDIR)\dectalk.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dectalk.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\dectalk.pdb" /machine:I386 /def:".\DECTALK.DEF" /out:"$(OUTDIR)\dectalk.dll" /implib:"$(OUTDIR)\dectalk.lib" 
DEF_FILE= \
	".\DECTALK.DEF"
LINK32_OBJS= \
	"$(INTDIR)\acxf1c.obj" \
	"$(INTDIR)\brent.obj" \
	"$(INTDIR)\circuit.obj" \
	"$(INTDIR)\cm_char.obj" \
	"$(INTDIR)\cm_cmd.obj" \
	"$(INTDIR)\cm_copt.obj" \
	"$(INTDIR)\cm_main.obj" \
	"$(INTDIR)\cm_pars.obj" \
	"$(INTDIR)\cm_phon.obj" \
	"$(INTDIR)\cm_text.obj" \
	"$(INTDIR)\cm_util.obj" \
	"$(INTDIR)\Cmd_init.obj" \
	"$(INTDIR)\cmd_wav.obj" \
	"$(INTDIR)\CRYPT2.OBJ" \
	"$(INTDIR)\dbgwins.obj" \
	"$(INTDIR)\DECSTD97.OBJ" \
	"$(INTDIR)\hlframe.obj" \
	"$(INTDIR)\inithl.obj" \
	"$(INTDIR)\l_us_cha.obj" \
	"$(INTDIR)\loaddict.obj" \
	"$(INTDIR)\log10table.obj" \
	"$(INTDIR)\ls_adju.obj" \
	"$(INTDIR)\ls_dict.obj" \
	"$(INTDIR)\ls_homo.obj" \
	"$(INTDIR)\ls_math.obj" \
	"$(INTDIR)\ls_rule.obj" \
	"$(INTDIR)\ls_rule2.obj" \
	"$(INTDIR)\ls_spel.obj" \
	"$(INTDIR)\ls_suff.obj" \
	"$(INTDIR)\ls_task.obj" \
	"$(INTDIR)\ls_util.obj" \
	"$(INTDIR)\lsa_us.obj" \
	"$(INTDIR)\lsa_util.obj" \
	"$(INTDIR)\lsw_main.obj" \
	"$(INTDIR)\mmalloc.obj" \
	"$(INTDIR)\nasalf1x.obj" \
	"$(INTDIR)\opthread.obj" \
	"$(INTDIR)\p_fr_sr1.obj" \
	"$(INTDIR)\p_fr_st1.obj" \
	"$(INTDIR)\p_fr_sy1.obj" \
	"$(INTDIR)\p_fr_tim.obj" \
	"$(INTDIR)\p_gr_sr1.obj" \
	"$(INTDIR)\p_gr_st1.obj" \
	"$(INTDIR)\p_gr_tim.obj" \
	"$(INTDIR)\p_la_sr1.obj" \
	"$(INTDIR)\p_la_st1.obj" \
	"$(INTDIR)\p_la_sy1.obj" \
	"$(INTDIR)\p_la_tim.obj" \
	"$(INTDIR)\p_sp_sr1.obj" \
	"$(INTDIR)\p_sp_st1.obj" \
	"$(INTDIR)\p_sp_sy1.obj" \
	"$(INTDIR)\p_sp_tim.obj" \
	"$(INTDIR)\P_UK_SR1.OBJ" \
	"$(INTDIR)\p_uk_st1.obj" \
	"$(INTDIR)\P_UK_SY1.OBJ" \
	"$(INTDIR)\p_uk_tim.obj" \
	"$(INTDIR)\p_us_sr1.obj" \
	"$(INTDIR)\p_us_st1.obj" \
	"$(INTDIR)\p_us_sy1.obj" \
	"$(INTDIR)\p_us_tim.obj" \
	"$(INTDIR)\par_ambi.obj" \
	"$(INTDIR)\Par_char.obj" \
	"$(INTDIR)\Par_dict.obj" \
	"$(INTDIR)\par_pars1.obj" \
	"$(INTDIR)\par_rule.obj" \
	"$(INTDIR)\ph_aloph.obj" \
	"$(INTDIR)\ph_claus.obj" \
	"$(INTDIR)\ph_draw.obj" \
	"$(INTDIR)\Ph_drwt02.obj" \
	"$(INTDIR)\Ph_fr_inton2.obj" \
	"$(INTDIR)\ph_inton1.obj" \
	"$(INTDIR)\ph_main.obj" \
	"$(INTDIR)\ph_romi.obj" \
	"$(INTDIR)\ph_setar.obj" \
	"$(INTDIR)\ph_sort.obj" \
	"$(INTDIR)\ph_sort2.obj" \
	"$(INTDIR)\ph_sttr2.obj" \
	"$(INTDIR)\ph_syl.obj" \
	"$(INTDIR)\ph_syntx.obj" \
	"$(INTDIR)\ph_task.obj" \
	"$(INTDIR)\ph_timng.obj" \
	"$(INTDIR)\ph_vdefi.obj" \
	"$(INTDIR)\ph_vset.obj" \
	"$(INTDIR)\phinit.obj" \
	"$(INTDIR)\phlog.obj" \
	"$(INTDIR)\phprint.obj" \
	"$(INTDIR)\PIPE.OBJ" \
	"$(INTDIR)\playaud.obj" \
	"$(INTDIR)\PLAYTONE.OBJ" \
	"$(INTDIR)\SERVICES.OBJ" \
	"$(INTDIR)\SPC.OBJ" \
	"$(INTDIR)\sqrttable.obj" \
	"$(INTDIR)\SYNC.OBJ" \
	"$(INTDIR)\ttsapi.obj" \
	"$(INTDIR)\USA_INIT.OBJ" \
	"$(INTDIR)\vtm3.obj" \
	"$(INTDIR)\VTMIONT.OBJ" \
	"$(OUTDIR)\dectalk_lts_fr.lib"

"$(OUTDIR)\dectalk.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
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
!IF EXISTS("dectalk.dep")
!INCLUDE "dectalk.dep"
!ELSE 
!MESSAGE Warning: cannot find "dectalk.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "dectalk - Win32 Release" || "$(CFG)" == "dectalk - Win32 Debug" || "$(CFG)" == "dectalk - Win32 Release Spanish" || "$(CFG)" == "dectalk - Win32 Release German" || "$(CFG)" == "dectalk - Win32 Release Latin American" || "$(CFG)" == "dectalk - Win32 Debug Spanish" || "$(CFG)" == "dectalk - Win32 Debug German" || "$(CFG)" == "dectalk - Win32 Debug Latin American" || "$(CFG)" == "dectalk - Win32 Release United Kingdom" || "$(CFG)" == "dectalk - Win32 Debug United Kingdom" || "$(CFG)" == "dectalk - Win32 Debug French" || "$(CFG)" == "dectalk - Win32 Release French"
SOURCE=.\hlsyn\acxf1c.c

"$(INTDIR)\acxf1c.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\hlsyn\brent.c

"$(INTDIR)\brent.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\hlsyn\circuit.c

"$(INTDIR)\circuit.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\cm_char.c

"$(INTDIR)\cm_char.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\cm_cmd.c

"$(INTDIR)\cm_cmd.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\cm_copt.c

"$(INTDIR)\cm_copt.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\cm_main.c

"$(INTDIR)\cm_main.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\cm_pars.c

"$(INTDIR)\cm_pars.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\cm_phon.c

"$(INTDIR)\cm_phon.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\cm_text.c

"$(INTDIR)\cm_text.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\cm_util.c

"$(INTDIR)\cm_util.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\Cmd_init.c

"$(INTDIR)\Cmd_init.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\cmd_wav.c

"$(INTDIR)\cmd_wav.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\API\CRYPT2.C

"$(INTDIR)\CRYPT2.OBJ" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Nt\dbgwins.c

"$(INTDIR)\dbgwins.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\api\DECSTD97.C

"$(INTDIR)\DECSTD97.OBJ" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\hlsyn\hlframe.c

"$(INTDIR)\hlframe.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\hlsyn\inithl.c

"$(INTDIR)\inithl.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\LTS\l_us_cha.c

"$(INTDIR)\l_us_cha.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Lts\loaddict.c

"$(INTDIR)\loaddict.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\hlsyn\log10table.c

"$(INTDIR)\log10table.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\LTS\ls_adju.c

"$(INTDIR)\ls_adju.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Lts\ls_dict.c

"$(INTDIR)\ls_dict.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Lts\ls_homo.c

"$(INTDIR)\ls_homo.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Lts\ls_math.c

"$(INTDIR)\ls_math.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\LTS\ls_rule.c

"$(INTDIR)\ls_rule.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\LTS\ls_rule2.c

"$(INTDIR)\ls_rule2.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Lts\ls_spel.c

"$(INTDIR)\ls_spel.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Lts\ls_suff.c

"$(INTDIR)\ls_suff.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\LTS\ls_task.c

"$(INTDIR)\ls_task.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\LTS\ls_util.c

"$(INTDIR)\ls_util.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Lts\lsa_us.c

"$(INTDIR)\lsa_us.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Lts\lsa_util.c

"$(INTDIR)\lsa_util.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Lts\lsw_main.c

"$(INTDIR)\lsw_main.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\NT\mmalloc.c

"$(INTDIR)\mmalloc.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\hlsyn\nasalf1x.c

"$(INTDIR)\nasalf1x.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\NT\opthread.c

"$(INTDIR)\opthread.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_fr_sr1.c

"$(INTDIR)\p_fr_sr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_fr_st1.c

"$(INTDIR)\p_fr_st1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_fr_sy1.c

"$(INTDIR)\p_fr_sy1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_fr_tim.c

"$(INTDIR)\p_fr_tim.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_gr_sr1.c

"$(INTDIR)\p_gr_sr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_gr_st1.c

"$(INTDIR)\p_gr_st1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_gr_tim.c

"$(INTDIR)\p_gr_tim.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_la_sr1.c

"$(INTDIR)\p_la_sr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_la_st1.c

"$(INTDIR)\p_la_st1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_la_sy1.c

"$(INTDIR)\p_la_sy1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_la_tim.c

"$(INTDIR)\p_la_tim.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_sp_sr1.c

"$(INTDIR)\p_sp_sr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_sp_st1.c

"$(INTDIR)\p_sp_st1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_sp_sy1.c

"$(INTDIR)\p_sp_sy1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_sp_tim.c

"$(INTDIR)\p_sp_tim.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\P_UK_SR1.C

"$(INTDIR)\P_UK_SR1.OBJ" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_uk_st1.c

"$(INTDIR)\p_uk_st1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\P_UK_SY1.C

"$(INTDIR)\P_UK_SY1.OBJ" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_uk_tim.c

"$(INTDIR)\p_uk_tim.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_us_sr1.c

"$(INTDIR)\p_us_sr1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_us_st1.c

"$(INTDIR)\p_us_st1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_us_sy1.c

"$(INTDIR)\p_us_sy1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\p_us_tim.c

"$(INTDIR)\p_us_tim.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\par_ambi.c

"$(INTDIR)\par_ambi.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\Par_char.c

"$(INTDIR)\Par_char.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\Par_dict.c

"$(INTDIR)\Par_dict.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\CMD\par_pars1.c

"$(INTDIR)\par_pars1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Cmd\par_rule.c

"$(INTDIR)\par_rule.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\ph_aloph.c

"$(INTDIR)\ph_aloph.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\ph_claus.c

"$(INTDIR)\ph_claus.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\ph_draw.c

"$(INTDIR)\ph_draw.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\Ph_drwt02.c

"$(INTDIR)\Ph_drwt02.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\Ph_fr_inton2.c

"$(INTDIR)\Ph_fr_inton2.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\ph_inton1.c

"$(INTDIR)\ph_inton1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\ph_main.c

"$(INTDIR)\ph_main.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\ph_romi.c

"$(INTDIR)\ph_romi.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\ph_setar.c

"$(INTDIR)\ph_setar.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\ph_sort.c

"$(INTDIR)\ph_sort.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\ph_sort2.c

"$(INTDIR)\ph_sort2.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\ph_sttr2.c

"$(INTDIR)\ph_sttr2.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\ph_syl.c

"$(INTDIR)\ph_syl.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\ph_syntx.c

"$(INTDIR)\ph_syntx.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\ph_task.c

"$(INTDIR)\ph_task.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\ph_timng.c

"$(INTDIR)\ph_timng.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\ph_vdefi.c

"$(INTDIR)\ph_vdefi.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\ph_vset.c

"$(INTDIR)\ph_vset.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\phinit.c

"$(INTDIR)\phinit.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Ph\phlog.c

"$(INTDIR)\phlog.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\PH\phprint.c

"$(INTDIR)\phprint.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\nt\PIPE.C

"$(INTDIR)\PIPE.OBJ" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\NT\playaud.c

"$(INTDIR)\playaud.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\vtm\PLAYTONE.C

"$(INTDIR)\PLAYTONE.OBJ" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\kernel\SERVICES.C

"$(INTDIR)\SERVICES.OBJ" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\nt\SPC.C

"$(INTDIR)\SPC.OBJ" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\hlsyn\sqrttable.c

"$(INTDIR)\sqrttable.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\vtm\SYNC.C

"$(INTDIR)\SYNC.OBJ" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\api\ttsapi.c

"$(INTDIR)\ttsapi.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\kernel\USA_INIT.C

"$(INTDIR)\USA_INIT.OBJ" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\VTM\vtm3.c

"$(INTDIR)\vtm3.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\vtm\VTMIONT.C

"$(INTDIR)\VTMIONT.OBJ" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!IF  "$(CFG)" == "dectalk - Win32 Release"

"dectalk_lts - Win32 Release" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Release" 
   cd "."

"dectalk_lts - Win32 ReleaseCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Release" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

"dectalk_lts - Win32 Debug" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Debug" 
   cd "."

"dectalk_lts - Win32 DebugCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Debug" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

"dectalk_lts - Win32 Release Spanish" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Release Spanish" 
   cd "."

"dectalk_lts - Win32 Release SpanishCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Release Spanish" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

"dectalk_lts - Win32 Release German" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Release German" 
   cd "."

"dectalk_lts - Win32 Release GermanCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Release German" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

"dectalk_lts - Win32 Release Latin American" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Release Latin American" 
   cd "."

"dectalk_lts - Win32 Release Latin AmericanCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Release Latin American" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

"dectalk_lts - Win32 Debug Spanish" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Debug Spanish" 
   cd "."

"dectalk_lts - Win32 Debug SpanishCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Debug Spanish" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

"dectalk_lts - Win32 Debug German" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Debug German" 
   cd "."

"dectalk_lts - Win32 Debug GermanCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Debug German" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

"dectalk_lts - Win32 Debug Latin American" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Debug Latin American" 
   cd "."

"dectalk_lts - Win32 Debug Latin AmericanCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Debug Latin American" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

"dectalk_lts - Win32 Release United Kingdom" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Release United Kingdom" 
   cd "."

"dectalk_lts - Win32 Release United KingdomCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Release United Kingdom" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

"dectalk_lts - Win32 Debug United Kingdom" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Debug United Kingdom" 
   cd "."

"dectalk_lts - Win32 Debug United KingdomCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Debug United Kingdom" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

"dectalk_lts - Win32 Debug French" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Debug French" 
   cd "."

"dectalk_lts - Win32 Debug FrenchCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Debug French" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

"dectalk_lts - Win32 Release French" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Release French" 
   cd "."

"dectalk_lts - Win32 Release FrenchCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\dectalk_lts.mak CFG="dectalk_lts - Win32 Release French" RECURSE=1 CLEAN 
   cd "."

!ENDIF 


!ENDIF 

