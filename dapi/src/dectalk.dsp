# Microsoft Developer Studio Project File - Name="dectalk" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=DECTALK - WIN32 DEBUG
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "dectalk.mak".
!MESSAGE 
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

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "Desktop"
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "dectalk - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\dectalk"
# PROP BASE Intermediate_Dir ".\dectalk"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\..\build\dectalk\us\release"
# PROP Intermediate_Dir ".\..\build\dectalk\us\release\link"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /machine:IX86
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /pdb:none /machine:I386

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\devdtk40"
# PROP BASE Intermediate_Dir ".\devdtk40"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\..\build\dectalk\us\debug"
# PROP Intermediate_Dir ".\..\build\dectalk\us\debug\link"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD WARNINGS /c
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /debug /machine:IX86
# SUBTRACT BASE LINK32 /incremental:no
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /debug /debugtype:both /machine:IX86
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\dectalk"
# PROP BASE Intermediate_Dir ".\dectalk"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\..\build\dectalk\sp\release"
# PROP Intermediate_Dir ".\..\build\dectalk\sp\release\link"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /Ox /I "api" /I "acna" /I "cmd" /I "lts" /I "ph" /I "vtm" /I "kernel" /I "nt" /I "include" /I "protos" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "ENGLISH_US" /YX /c
# ADD CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "SPANISH" /D "SPANISH_SP" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x40a
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib winmm.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /machine:I386 /out:"dectalk\release\dectalk.dll"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /machine:I386
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\devdtk40"
# PROP BASE Intermediate_Dir ".\devdtk40"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\..\build\dectalk\gr\release"
# PROP Intermediate_Dir ".\..\build\dectalk\gr\release\link"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /Ox /I "api" /I "acna" /I "cmd" /I "lts" /I "ph" /I "vtm" /I "kernel" /I "nt" /I "include" /I "protos" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "ENGLISH_US" /YX /c
# ADD CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "GERMAN" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /Zm200 /c
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x407
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib winmm.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /machine:I386 /out:"dectalk\release\dectalk.dll"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /machine:I386
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\dectalk"
# PROP BASE Intermediate_Dir ".\dectalk"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\..\build\dectalk\la\release"
# PROP Intermediate_Dir ".\..\build\dectalk\la\release\link"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /Ox /I "api" /I "acna" /I "cmd" /I "lts" /I "ph" /I "vtm" /I "kernel" /I "nt" /I "include" /I "protos" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "SPANISH" /YX /c
# ADD CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "SPANISH" /D "SPANISH_LA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x40a
# ADD RSC /l 0x40a
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o"dectalk\sp\release/dectalk.bsc"
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib winmm.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /machine:I386 /out:"dectalk\sp\release\dectalk.dll"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /machine:I386
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\devdtk40"
# PROP BASE Intermediate_Dir ".\devdtk40"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\..\build\dectalk\sp\debug"
# PROP Intermediate_Dir ".\..\build\dectalk\sp\debug\link"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /GX /Zi /Od /I "api" /I "cmd" /I "lts" /I "ph" /I "vtm" /I "kernel" /I "nt" /I "include" /I "protos" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "PRINTFDEBUG" /D "ENGLISH_US" /YX /c
# ADD CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "SPANISH" /D "SPANISH_SP" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x40a
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib winmm.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /debug /debugtype:both /machine:IX86 /out:"dectalk\debug\dectalk.dll"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /debug /debugtype:both /machine:IX86
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\devdtk41"
# PROP BASE Intermediate_Dir ".\devdtk41"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\..\build\dectalk\gr\debug"
# PROP Intermediate_Dir ".\..\build\dectalk\gr\debug\link"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /GX /Zi /Od /I "api" /I "cmd" /I "lts" /I "ph" /I "vtm" /I "kernel" /I "nt" /I "include" /I "protos" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "PRINTFDEBUG" /D "ENGLISH_US" /YX /c
# ADD CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "GERMAN" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /Zm200 /c
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x407
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib winmm.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /debug /debugtype:both /machine:IX86 /out:"dectalk\debug\dectalk.dll"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /debug /debugtype:both /machine:IX86
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\devdtk42"
# PROP BASE Intermediate_Dir ".\devdtk42"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\..\build\dectalk\la\debug"
# PROP Intermediate_Dir ".\..\build\dectalk\la\debug\link"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /GX /Zi /Od /I "api" /I "cmd" /I "lts" /I "ph" /I "vtm" /I "kernel" /I "nt" /I "include" /I "protos" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "PRINTFDEBUG" /D "ENGLISH_US" /YX /c
# ADD CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "SPANISH" /D "SPANISH_LA" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x40a
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib winmm.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /debug /debugtype:both /machine:IX86 /out:"dectalk\debug\dectalk.dll"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /debug /debugtype:both /machine:IX86
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "dectalk"
# PROP BASE Intermediate_Dir "dectalk"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\..\build\dectalk\uk\release"
# PROP Intermediate_Dir ".\..\build\dectalk\uk\release\link"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "ENGLISH_US" /D "ENGLISH" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "ENGLISH_UK" /D "ENGLISH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x809
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o".\..\build\dectalk\us\release\dectalk.bsc"
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib winmm.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /machine:I386 /out:".\..\build\dectalk\us\release\dectalk.dll"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /machine:I386
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "devdtk40"
# PROP BASE Intermediate_Dir "devdtk40"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\..\build\dectalk\uk\debug"
# PROP Intermediate_Dir ".\..\build\dectalk\uk\debug\link"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /GX /Zi /Od /I ".\api" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "PRINTFDEBUG" /D "ENGLISH_US" /D "ENGLISH" /YX /FD /c
# ADD CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "ENGLISH_UK" /D "ENGLISH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x809
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib winmm.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /debug /debugtype:both /machine:IX86 /out:".\..\build\dectalk\us\debug\dectalk.dll"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /debug /debugtype:both /machine:IX86
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "dectalk___Win32_Debug_French"
# PROP BASE Intermediate_Dir "dectalk___Win32_Debug_French"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\..\build\dectalk\fr\debug"
# PROP Intermediate_Dir ".\..\build\dectalk\fr\debug\link"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "PRINTFDEBUG" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /YX /FD /c
# ADD CPP /nologo /MDd /W3 /GX /ZI /Od /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "_DEBUG" /D "PRINTFDEBUG" /D "FRENCH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /debug /debugtype:both /machine:IX86 /out:".\..\build\dectalk\us\debug\dectalk.dll"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /debug /debugtype:both /machine:IX86
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "dectalk___Win32_Release_French"
# PROP BASE Intermediate_Dir "dectalk___Win32_Release_French"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\..\build\dectalk\fr\release"
# PROP Intermediate_Dir ".\..\build\dectalk\fr\release\link"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "ENGLISH_US" /D "ENGLISH" /D "ACNA" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /Ox /I ".\api" /I ".\acna" /I ".\cmd" /I ".\lts" /I ".\ph" /I ".\vtm" /I ".\kernel" /I ".\nt" /I ".\include" /I ".\protos" /I "..\.." /I "..\hlsyn" /D "NDEBUG" /D "FRENCH" /D "WIN32" /D "_WINDOWS" /D "i386" /D "BLD_DECTALK_DLL" /D "NO_INCLUDED_C_FILES" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o".\..\build\dectalk\us\release\dectalk.bsc"
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /machine:I386 /out:".\..\build\dectalk\us\release\dectalk.dll"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib /nologo /base:"0x1c000000" /version:4.30 /entry:"LibMain@12" /subsystem:windows /dll /machine:I386
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "dectalk - Win32 Release"
# Name "dectalk - Win32 Debug"
# Name "dectalk - Win32 Release Spanish"
# Name "dectalk - Win32 Release German"
# Name "dectalk - Win32 Release Latin American"
# Name "dectalk - Win32 Debug Spanish"
# Name "dectalk - Win32 Debug German"
# Name "dectalk - Win32 Debug Latin American"
# Name "dectalk - Win32 Release United Kingdom"
# Name "dectalk - Win32 Debug United Kingdom"
# Name "dectalk - Win32 Debug French"
# Name "dectalk - Win32 Release French"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# Begin Source File

SOURCE=.\hlsyn\acxf1c.c
# End Source File
# Begin Source File

SOURCE=.\hlsyn\brent.c
# End Source File
# Begin Source File

SOURCE=.\hlsyn\circuit.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\cm_char.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\cm_cmd.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\cm_copt.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\cm_main.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\cm_pars.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\cm_phon.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\cm_text.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\cm_util.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\Cmd_init.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\cmd_wav.c
# End Source File
# Begin Source File

SOURCE=.\API\CRYPT2.C
# End Source File
# Begin Source File

SOURCE=.\Nt\dbgwins.c
# End Source File
# Begin Source File

SOURCE=.\api\DECSTD97.C
# End Source File
# Begin Source File

SOURCE=.\DECTALK.DEF
# End Source File
# Begin Source File

SOURCE=.\hlsyn\hlframe.c
# End Source File
# Begin Source File

SOURCE=.\hlsyn\inithl.c
# End Source File
# Begin Source File

SOURCE=.\LTS\l_us_cha.c
# End Source File
# Begin Source File

SOURCE=.\Lts\loaddict.c
# End Source File
# Begin Source File

SOURCE=.\hlsyn\log10table.c
# End Source File
# Begin Source File

SOURCE=.\LTS\ls_adju.c
# End Source File
# Begin Source File

SOURCE=.\Lts\ls_dict.c
# End Source File
# Begin Source File

SOURCE=.\Lts\ls_homo.c
# End Source File
# Begin Source File

SOURCE=.\Lts\ls_math.c
# End Source File
# Begin Source File

SOURCE=.\LTS\ls_rule.c
# End Source File
# Begin Source File

SOURCE=.\LTS\ls_rule2.c
# End Source File
# Begin Source File

SOURCE=.\Lts\ls_spel.c
# End Source File
# Begin Source File

SOURCE=.\Lts\ls_suff.c
# End Source File
# Begin Source File

SOURCE=.\LTS\ls_task.c
# End Source File
# Begin Source File

SOURCE=.\LTS\ls_util.c
# End Source File
# Begin Source File

SOURCE=.\Lts\lsa_us.c
# End Source File
# Begin Source File

SOURCE=.\Lts\lsa_util.c
# End Source File
# Begin Source File

SOURCE=.\Lts\lsw_main.c
# End Source File
# Begin Source File

SOURCE=.\NT\mmalloc.c
# End Source File
# Begin Source File

SOURCE=.\hlsyn\nasalf1x.c
# End Source File
# Begin Source File

SOURCE=.\NT\opthread.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_fr_sr1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_fr_st1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_fr_sy1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_fr_tim.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_gr_sr1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_gr_st1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_gr_tim.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_la_sr1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_la_st1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_la_sy1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_la_tim.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_sp_sr1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_sp_st1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_sp_sy1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_sp_tim.c
# End Source File
# Begin Source File

SOURCE=.\PH\P_UK_SR1.C
# End Source File
# Begin Source File

SOURCE=.\PH\p_uk_st1.c
# End Source File
# Begin Source File

SOURCE=.\PH\P_UK_SY1.C
# End Source File
# Begin Source File

SOURCE=.\PH\p_uk_tim.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_us_sr1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_us_st1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_us_sy1.c
# End Source File
# Begin Source File

SOURCE=.\PH\p_us_tim.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\par_ambi.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\Par_char.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\Par_dict.c
# End Source File
# Begin Source File

SOURCE=.\CMD\par_pars1.c
# End Source File
# Begin Source File

SOURCE=.\Cmd\par_rule.c
# End Source File
# Begin Source File

SOURCE=.\Ph\ph_aloph.c
# End Source File
# Begin Source File

SOURCE=.\Ph\ph_claus.c
# End Source File
# Begin Source File

SOURCE=.\Ph\ph_draw.c
# End Source File
# Begin Source File

SOURCE=.\PH\Ph_drwt02.c
# End Source File
# Begin Source File

SOURCE=.\PH\Ph_fr_inton2.c
# End Source File
# Begin Source File

SOURCE=.\PH\ph_inton1.c
# End Source File
# Begin Source File

SOURCE=.\Ph\ph_main.c
# End Source File
# Begin Source File

SOURCE=.\Ph\ph_romi.c
# End Source File
# Begin Source File

SOURCE=.\Ph\ph_setar.c
# End Source File
# Begin Source File

SOURCE=.\Ph\ph_sort.c
# End Source File
# Begin Source File

SOURCE=.\PH\ph_sort2.c
# End Source File
# Begin Source File

SOURCE=.\PH\ph_sttr2.c
# End Source File
# Begin Source File

SOURCE=.\Ph\ph_syl.c
# End Source File
# Begin Source File

SOURCE=.\Ph\ph_syntx.c
# End Source File
# Begin Source File

SOURCE=.\Ph\ph_task.c
# End Source File
# Begin Source File

SOURCE=.\Ph\ph_timng.c
# End Source File
# Begin Source File

SOURCE=.\Ph\ph_vdefi.c
# End Source File
# Begin Source File

SOURCE=.\Ph\ph_vset.c
# End Source File
# Begin Source File

SOURCE=.\Ph\phinit.c
# End Source File
# Begin Source File

SOURCE=.\Ph\phlog.c
# End Source File
# Begin Source File

SOURCE=.\PH\phprint.c
# End Source File
# Begin Source File

SOURCE=.\nt\PIPE.C
# End Source File
# Begin Source File

SOURCE=.\NT\playaud.c
# End Source File
# Begin Source File

SOURCE=.\vtm\PLAYTONE.C
# End Source File
# Begin Source File

SOURCE=.\kernel\SERVICES.C
# End Source File
# Begin Source File

SOURCE=.\nt\SPC.C
# End Source File
# Begin Source File

SOURCE=.\hlsyn\sqrttable.c
# End Source File
# Begin Source File

SOURCE=.\vtm\SYNC.C
# End Source File
# Begin Source File

SOURCE=.\api\ttsapi.c
# End Source File
# Begin Source File

SOURCE=.\kernel\USA_INIT.C
# End Source File
# Begin Source File

SOURCE=.\VTM\vtm3.c
# End Source File
# Begin Source File

SOURCE=.\vtm\VTMIONT.C
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=.\include\186.h
# End Source File
# Begin Source File

SOURCE=.\include\audioapi.h
# End Source File
# Begin Source File

SOURCE=.\Include\Audiodef.h
# End Source File
# Begin Source File

SOURCE=.\INCLUDE\bachus.h
# End Source File
# Begin Source File

SOURCE=.\INCLUDE\bachusfeatures.h
# End Source File
# Begin Source File

SOURCE=.\INCLUDE\bachusi.h
# End Source File
# Begin Source File

SOURCE=.\Cmd\Cm_copt.h
# End Source File
# Begin Source File

SOURCE=.\Cmd\Cm_util.h
# End Source File
# Begin Source File

SOURCE=.\include\cmd.h
# End Source File
# Begin Source File

SOURCE=.\nt\dbgwins.h
# End Source File
# Begin Source File

SOURCE=.\include\dectalk.h
# End Source File
# Begin Source File

SOURCE=.\include\defs.h
# End Source File
# Begin Source File

SOURCE=.\include\esc.h
# End Source File
# Begin Source File

SOURCE=.\hlsyn\flavor.h
# End Source File
# Begin Source File

SOURCE=.\include\ger_def.h
# End Source File
# Begin Source File

SOURCE=.\include\ger_err.tab
# End Source File
# Begin Source File

SOURCE=.\include\ger_phon.tab
# End Source File
# Begin Source File

SOURCE=.\include\ger_type.tab
# End Source File
# Begin Source File

SOURCE=.\include\hardw.h
# End Source File
# Begin Source File

SOURCE=.\hlsyn\hlsyn.h
# End Source File
# Begin Source File

SOURCE=.\include\iso_char.h
# End Source File
# Begin Source File

SOURCE=.\include\kernel.h
# End Source File
# Begin Source File

SOURCE=.\Include\L_com_ph.h
# End Source File
# Begin Source File

SOURCE=.\Include\L_gr_ph.h
# End Source File
# Begin Source File

SOURCE=.\INCLUDE\l_la_ph.h
# End Source File
# Begin Source File

SOURCE=.\Include\L_sp_ph.h
# End Source File
# Begin Source File

SOURCE=.\Include\L_us_ph.h
# End Source File
# Begin Source File

SOURCE=.\INCLUDE\la_def.h
# End Source File
# Begin Source File

SOURCE=.\INCLUDE\la_err.tab
# End Source File
# Begin Source File

SOURCE=.\INCLUDE\la_phon.tab
# End Source File
# Begin Source File

SOURCE=.\INCLUDE\la_type.tab
# End Source File
# Begin Source File

SOURCE=.\hlsyn\llsyn.h
# End Source File
# Begin Source File

SOURCE=.\Lts\Ls_dict.h
# End Source File
# Begin Source File

SOURCE=.\include\ls_feat.tab
# End Source File
# Begin Source File

SOURCE=.\include\ls_fold.tab
# End Source File
# Begin Source File

SOURCE=.\Lts\Ls_homo.h
# End Source File
# Begin Source File

SOURCE=.\include\ls_lower.tab
# End Source File
# Begin Source File

SOURCE=.\include\ls_upper.tab
# End Source File
# Begin Source File

SOURCE=.\nt\mmalloc.h
# End Source File
# Begin Source File

SOURCE=.\include\mulawi.h
# End Source File
# Begin Source File

SOURCE=.\nt\opthread.h
# End Source File
# Begin Source File

SOURCE=.\PH\p_all_ph.h
# End Source File
# Begin Source File

SOURCE=.\PH\p_fr_rom.h
# End Source File
# Begin Source File

SOURCE=.\PH\p_gr_rom.h
# End Source File
# Begin Source File

SOURCE=.\PH\p_gr_vdf.h
# End Source File
# Begin Source File

SOURCE=.\PH\p_la_rom.h
# End Source File
# Begin Source File

SOURCE=.\PH\p_sp_rom.h
# End Source File
# Begin Source File

SOURCE=.\PH\p_uk_rom.h
# End Source File
# Begin Source File

SOURCE=.\PH\p_us_rom.h
# End Source File
# Begin Source File

SOURCE=.\PH\P_us_vdf1.h
# End Source File
# Begin Source File

SOURCE=.\Cmd\Par_rule.h
# End Source File
# Begin Source File

SOURCE=.\include\pcport.h
# End Source File
# Begin Source File

SOURCE=.\Include\Pipe.h
# End Source File
# Begin Source File

SOURCE=.\nt\playaud.h
# End Source File
# Begin Source File

SOURCE=.\include\port.h
# End Source File
# Begin Source File

SOURCE=.\hlsyn\reson.h
# End Source File
# Begin Source File

SOURCE=.\include\spa_def.h
# End Source File
# Begin Source File

SOURCE=.\include\spa_err.tab
# End Source File
# Begin Source File

SOURCE=.\include\spa_phon.tab
# End Source File
# Begin Source File

SOURCE=.\include\spa_type.tab
# End Source File
# Begin Source File

SOURCE=.\hlsyn\synth.h
# End Source File
# Begin Source File

SOURCE=.\api\ttsapi.h
# End Source File
# Begin Source File

SOURCE=.\include\usa_def.h
# End Source File
# Begin Source File

SOURCE=.\include\usa_err.tab
# End Source File
# Begin Source File

SOURCE=.\include\usa_phon.tab
# End Source File
# Begin Source File

SOURCE=.\include\usa_type.tab
# End Source File
# Begin Source File

SOURCE=.\include\version.h
# End Source File
# Begin Source File

SOURCE=.\Vtm\Vtm.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# End Group
# Begin Group "LTS libs"

# PROP Default_Filter ".lib"
# Begin Source File

SOURCE=..\build\dectalk\us\release\dectalk_lts_us.lib

!IF  "$(CFG)" == "dectalk - Win32 Release"

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\build\dectalk\us\debug\dectalk_lts_us.lib

!IF  "$(CFG)" == "dectalk - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\build\dectalk\uk\release\dectalk_lts_uk.lib

!IF  "$(CFG)" == "dectalk - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\build\dectalk\uk\debug\dectalk_lts_uk.lib

!IF  "$(CFG)" == "dectalk - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\build\dectalk\sp\release\dectalk_lts_sp.lib

!IF  "$(CFG)" == "dectalk - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\build\dectalk\sp\debug\dectalk_lts_sp.lib

!IF  "$(CFG)" == "dectalk - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\build\dectalk\la\release\dectalk_lts_la.lib

!IF  "$(CFG)" == "dectalk - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\build\dectalk\la\debug\dectalk_lts_la.lib

!IF  "$(CFG)" == "dectalk - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\build\dectalk\gr\release\dectalk_lts_gr.lib

!IF  "$(CFG)" == "dectalk - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\build\dectalk\gr\debug\dectalk_lts_gr.lib

!IF  "$(CFG)" == "dectalk - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\build\dectalk\fr\release\dectalk_lts_fr.lib

!IF  "$(CFG)" == "dectalk - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\build\dectalk\fr\debug\dectalk_lts_fr.lib

!IF  "$(CFG)" == "dectalk - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Spanish"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug German"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug Latin American"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug United Kingdom"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "dectalk - Win32 Debug French"

!ELSEIF  "$(CFG)" == "dectalk - Win32 Release French"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# End Group
# End Target
# End Project
