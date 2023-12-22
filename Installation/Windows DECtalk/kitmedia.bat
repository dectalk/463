@echo off

rem This file is generated by InstallShield IDE.

rem ===============================================
rem Set up tools.
rem ===============================================

set COMPILER=C:\Program Files\Common Files\InstallShield\IScript\Compile.exe
set BUILDER=C:\Program Files\InstallShield\Professional - Standard Edition\Program\isbuild.exe

rem ===============================================
rem Set the environment for the compiler
rem ===============================================

set INSTALLPROJECT=D:\work\rnd\Installation\Windows DECtalk\Windows DECtalk.ipr
set CURRENTBUILD=Windows

set INCLUDEIFX=C:\Program Files\InstallShield\Professional - Standard Edition\Script\Ifx\Include
set INCLUDEISRT=C:\Program Files\InstallShield\Professional - Standard Edition\Script\Isrt\Include
set INCLUDESCRIPT=D:\work\rnd\Installation\Windows DECtalk\Script Files
set LINKPATHS=-LibPath"C:\Program Files\InstallShield\Professional - Standard Edition\Script\Ifx\Lib" -LibPath"C:\Program Files\InstallShield\Professional - Standard Edition\Script\Isrt\Lib" 
set RULFILES=D:\work\rnd\Installation\Windows DECtalk\Script Files\setup.rul
set LIBRARIES="isrt.obl" "ifx.obl" 
set DEFINITIONS=-dTESTING=1 -dSDK=TRUE -dTRIAL=FALSE 
set SWITCHES=-w50 -e50 -v3 -g

rem ==================================================
rem Compile
rem ==================================================
"%COMPILER%" "%RULFILES%" -I"%INCLUDEIFX%" -I"%INCLUDEISRT%" -I"%INCLUDESCRIPT%" %LINKPATHS% %LIBRARIES% %DEFINITIONS% %SWITCHES%

if ERRORLEVEL 1 goto InstallShieldCompileError

rem ==================================================
rem build
rem ==================================================
"%BUILDER%" -p"%INSTALLPROJECT%" -m"%CURRENTBUILD%" 

:InstallShieldCompileError


