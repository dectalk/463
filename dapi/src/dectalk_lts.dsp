# Microsoft Developer Studio Project File - Name="dectalk_lts" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=dectalk_lts - Win32 Debug French
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "dectalk_lts.mak".
!MESSAGE 
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

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\..\build\dectalk\us\release"
# PROP Intermediate_Dir ".\..\build\dectalk\us\release\link"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:".\..\build\dectalk\us\release\dectalk_lts_us.lib"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\..\build\dectalk\us\debug"
# PROP Intermediate_Dir ".\..\build\dectalk\us\debug\link"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:".\..\build\dectalk\us\debug\dectalk_lts_us.lib"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "dectalk_lts___Win32_Release_Spanish"
# PROP BASE Intermediate_Dir "dectalk_lts___Win32_Release_Spanish"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\..\build\dectalk\sp\release"
# PROP Intermediate_Dir ".\..\build\dectalk\sp\release\link"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "SPANISH" /D "SPANISH_SP" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:".\..\build\dectalk\sp\release\dectalk_lts_sp.lib"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "dectalk_lts___Win32_Release_German"
# PROP BASE Intermediate_Dir "dectalk_lts___Win32_Release_German"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\..\build\dectalk\gr\release"
# PROP Intermediate_Dir ".\..\build\dectalk\gr\release\link"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "GERMAN" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:".\..\build\dectalk\gr\release\dectalk_lts_gr.lib"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "dectalk_lts___Win32_Release_Latin_American"
# PROP BASE Intermediate_Dir "dectalk_lts___Win32_Release_Latin_American"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\..\build\dectalk\la\release"
# PROP Intermediate_Dir ".\..\build\dectalk\la\release\link"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "SPANISH" /D "SPANISH_LA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:".\..\build\dectalk\la\release\dectalk_lts_la.lib"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "dectalk_lts___Win32_Debug_Spanish"
# PROP BASE Intermediate_Dir "dectalk_lts___Win32_Debug_Spanish"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\..\build\dectalk\sp\debug"
# PROP Intermediate_Dir ".\..\build\dectalk\sp\debug\link"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "SPANISH" /D "SPANISH_SP" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:".\..\build\dectalk\sp\debug\dectalk_lts_sp.lib"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "dectalk_lts___Win32_Debug_German"
# PROP BASE Intermediate_Dir "dectalk_lts___Win32_Debug_German"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\..\build\dectalk\gr\debug"
# PROP Intermediate_Dir ".\..\build\dectalk\gr\debug\link"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "GERMAN" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:".\..\build\dectalk\gr\debug\dectalk_lts_gr.lib"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "dectalk_lts___Win32_Debug_Latin_American"
# PROP BASE Intermediate_Dir "dectalk_lts___Win32_Debug_Latin_American"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\..\build\dectalk\la\debug"
# PROP Intermediate_Dir ".\..\build\dectalk\la\debug\link"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "SPANISH" /D "SPANISH_LA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:".\..\build\dectalk\la\debug\dectalk_lts_la.lib"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "dectalk_lts___Win32_Release_United_Kingdom"
# PROP BASE Intermediate_Dir "dectalk_lts___Win32_Release_United_Kingdom"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\..\build\dectalk\uk\release"
# PROP Intermediate_Dir ".\..\build\dectalk\uk\release\link"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "ENGLISH_UK" /D "ENGLISH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:".\..\build\dectalk\uk\release\dectalk_lts_uk.lib"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "dectalk_lts___Win32_Debug_United_Kingdom"
# PROP BASE Intermediate_Dir "dectalk_lts___Win32_Debug_United_Kingdom"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\..\build\dectalk\uk\debug"
# PROP Intermediate_Dir ".\..\build\dectalk\uk\debug\link"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "ENGLISH_UK" /D "ENGLISH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:".\..\build\dectalk\uk\debug\dectalk_lts_uk.lib"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "dectalk_lts___Win32_Debug_French"
# PROP BASE Intermediate_Dir "dectalk_lts___Win32_Debug_French"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\..\build\dectalk\fr\debug"
# PROP Intermediate_Dir ".\..\build\dectalk\fr\debug\link"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "FRENCH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:".\..\build\dectalk\fr\debug\dectalk_lts_fr.lib"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "dectalk_lts___Win32_Release_French"
# PROP BASE Intermediate_Dir "dectalk_lts___Win32_Release_French"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\..\build\dectalk\fr\release"
# PROP Intermediate_Dir ".\..\build\dectalk\fr\release\link"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "FRENCH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:".\..\build\dectalk\fr\release\dectalk_lts_fr.lib"

!ENDIF 

# Begin Target

# Name "dectalk_lts - Win32 Release"
# Name "dectalk_lts - Win32 Debug"
# Name "dectalk_lts - Win32 Release Spanish"
# Name "dectalk_lts - Win32 Release German"
# Name "dectalk_lts - Win32 Release Latin American"
# Name "dectalk_lts - Win32 Debug Spanish"
# Name "dectalk_lts - Win32 Debug German"
# Name "dectalk_lts - Win32 Debug Latin American"
# Name "dectalk_lts - Win32 Release United Kingdom"
# Name "dectalk_lts - Win32 Debug United Kingdom"
# Name "dectalk_lts - Win32 Debug French"
# Name "dectalk_lts - Win32 Release French"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\LTS\allorules.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_ac_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_fr_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_fr_ma1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_fr_pr1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_fr_rta.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_fr_ru1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_fr_sp1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_fr_suf.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_gr_ad1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_gr_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_gr_ma1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_gr_pr1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_gr_rta.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_gr_ru1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_gr_sp1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_gr_suf.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_la_ad1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_la_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_la_ma1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_la_pr1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_la_ru1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_la_sp1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_sp_ad1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_sp_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_sp_ma1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_sp_pr1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_sp_ru1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_sp_sp1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_uk_ad1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_uk_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_uk_ma1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_uk_pr1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_uk_rta.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_uk_ru1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_uk_sp1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_uk_spe.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_uk_suf.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_us_ad1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_us_con.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_us_ma1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_us_pr1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_us_ru1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_us_sp1.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_us_spe.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\l_us_suf.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\lsa_rta.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\LTS\walker.c

!IF  "$(CFG)" == "dectalk_lts - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk_lts - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# End Group
# End Target
# End Project
