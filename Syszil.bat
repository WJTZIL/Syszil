@echo off
title Syszil 1.0
echo Finding a kernel...
echo Loading syszil.dll...
pause
echo Loaded!
pause

cls
title Syszil 1.0 Setup
echo Welcome to Syszil 1.0 Setup!
echo Please enter your username
set /p username=
cls
echo Loading the console...
pause
echo Welcome to Syszil 1.0, %username%.
goto :menu

:menu
echo What Applications Do you want to lanuch?
echo 1. System Info

set /p input=
if %input% == 1 goto info

:info

cls
echo.=======================
echo     SYSZIL
echo.=======================
echo     DETAILS  
echo.
echo     VERSION = 1.0
echo.     
echo     RAM = 1GB
echo.
echo     CORE = INTEL CORE 2 DUO
echo.
echo     HARD_DRIVE = 64GB     
echo.   
echo     Kernel ver = 1.0
echo.  
echo    Build = 1
echo.
echo.========================
echo     @Copyright WJTZIL
echo.========================
echo.
echo Wanna check for update?

echo  1. to check for update 
echo  2. Menu

set /p check= 

if %check% == 1 goto update

if %check% == 2 goto menu

:update 
cls

echo Checking for new version of Syszil...
echo.
pause
cls
echo.
echo No updates :( But you can check the Github page! (www.github.com/WJTZIL/Syszil)
echo.
pause
goto menu