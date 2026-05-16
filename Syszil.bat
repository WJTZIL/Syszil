@echo off
title Syszil 3.0
goto check_Permissions

:check_Permissions
    echo Detecting permissions...
    
    net session >nul 2>&1
    if %errorLevel% == 0 (
	color 4
        echo Administrative permissions detected. Can't run Syszil.
	pause
	exit
    ) else (
        goto System
    )
    
    pause >nul

:System
echo Finding a kernel...
echo Loading syszil.dll...
pause
echo Loaded!
pause

cls
title Syszil 3.0 Setup
echo Welcome to Syszil 3.0 Setup!
echo Please enter your username
set /p account=
echo Loading the console...
pause
echo Welcome to Syszil 3.0, %account%.
pause
goto menu

:menu
cls
title Syszil 3.0 Desktop
echo What Applications Do you want to lanuch?
echo 1. System Info
echo 2. RD-1 (Sandboxed Taskmgr (with access to PC))
echo 3. Syszil Browser (yours)

set /p input=
if %input% == 1 goto info
if %input% == 2 goto rd-1
if %input% == 3 goto browser

:browser
start "" "http://www.google.com"
goto menu


:rd-1
start taskmgr -d
goto menu

:info

cls
echo.=======================
echo     SYSZIL
echo.=======================
echo     DETAILS  
echo.
echo     VERSION = 3.0
echo.     
echo     RAM = 4GB
echo.
echo     CORE = AMD RYZEN 5
echo.
echo     HARD_DRIVE = 128GB     
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
echo No updates :( But you can check the Github page for this project! (github.com/WJTZIL/Syszil)
echo Old versions: (github.com/WJTZIL/Syszil/releases/tag/operating-system)
echo.
pause
goto menu