@echo off
title Syszil 3.1 Installer
echo.=======================
echo     Syszil Installer
echo.=======================
echo. Do you want to Install?
echo 1. Yes
echo 2. Exit
echo 0. Syszil Recovery Mode
echo.========================
echo     @Copyright WJTZIL
echo.========================

set /p selection=
if %selection% == 1 goto load1
if %selection% == 2 goto exit
if %selection% == 3 goto recovery

:install
title Confirm
echo.=======================
echo     Syszil Installer
echo.=======================
echo. Do you want to Install into Appdata?
echo 1. Yes
echo 2. No
echo 3. Exit
echo.========================
echo     @Copyright WJTZIL
echo.========================

set /p choice=
if %choice% == 1 goto syszil-confirm-installing-appdata
if %choice% == 2 goto syszil-decline-installing-appdata
if %choice% == 3 goto exit

:syszil-confirm-installing-appdata
cd /d "%APPDATA%"
mkdir WJTZIL
cd WJTZIL
mkdir Syszil
cd Syszil
set "NO-APPDATA=false"
cls
goto check_Permissions

:syszil-decline-installing-appdata
set "NO-APPDATA=true"
cls
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
	echo There is no administrative premissions. Can run Syszil.
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
title Syszil 3.1 Setup
echo Welcome to Syszil 3.1 Setup!
echo Please enter your username
set /p account=
if %account% == PowerSrc goto usr-error
echo Loading the console...
pause
echo Welcome to Syszil 3.1, %account%.
pause
goto menu

:usr-error
title Error
echo. ====== ERROR ======
echo That user exists
echo. ====== DETAILS ======
echo %account% username is taken. Please try a another username.
pause
goto System

:menu
cls
title Syszil 3.1 Desktop
echo What Applications Do you want to lanuch?
echo 1. System Info
echo 2. Syszil Browser (yours)
echo 3. Advanced Tools
echo 4. Weirdest Tools
echo 0. Shutdown

set /p input=
if %input% == 1 goto info
if %input% == 2 goto browser
if %input% == 3 goto adv-tools-verify
if %input% == 4 goto weird-tools
if %input% == 0 goto shutdown

:weird-tools
cls
title Weirdest Tools
echo.=======================
echo     Syszil Weirdest Tools
echo.=======================
echo Select A tool
echo.
echo. Some Tools Work Without Folder Requirement
echo 1. RD-1 (Sandboxed Taskmgr (with access to PC))
echo 0. Exit
echo.========================
echo     @Copyright WJTZIL
echo.========================

set /p tool=
if %tool% == 1 goto rd-1
if %tool% == 0 goto menu

:adv-tools-error
title Fatal Error
echo.=======================
echo     Syszil Advanced Tools
echo.=======================
echo FATAL ERROR!
echo.
echo. ! REQUIRED: AN FOLDER IN APPDATA !
echo. 
echo.========================
echo     @Copyright WJTZIL
echo.========================
pause
goto :menu

:adv-tools-verify
cd "%APPDATA%/WJTZIL/Syszil"

if %NO-APPDATA% == true goto adv-tools-error
if %NO-APPDATA% == false goto adv-tools

:adv-tools
cls
title Advanced Tools
echo.=======================
echo     Syszil Advanced Tools
echo.=======================
echo Select A tool
echo.
echo. Tools Must Work If Placed In An Tools Folder (in Appdata)
echo 1. DebilCode (Programming Lanuguage by Pan_Tester)
echo 2. Show Tools Folder
echo 0. Exit
echo.========================
echo     @Copyright WJTZIL
echo.========================

set /p tool=
if %tool% == 1 goto debilcode
if %tool% == 2 goto show-tools-folder
if %tool% == 0 goto menu

:show-tools-folder
start "" "%APPDATA%/WJTZIL/Syszil"
goto adv-tools

:debilcode
cd skbidibi
cd skbidibi
cls
echo This is the beta version of this :) Many bugs can occur
echo Welcome to Debil Code Runner by Pan_Tester!
echo 1. Launch a example


set /p debil-project=
if %debil-project% == 1 goto debil-example

:debil-example
start IdiotaInterpreter.exe przykład.idiota
goto adv-tools

:browser
title Syszil Browser
echo Welcome to Syszil Browser!
echo Please search :)
echo 0. Exit
echo 1. Google

set /p search=
if %search% == 1 goto Google
if %search% == papaj goto papaj
if %search% == -b goto -b
if %search% == 0 goto menu

:Google
start "" "http://www.google.com"
goto menu

:papaj
echo MsgBox "Papaj papaj papaj" > shit.vbs
start shit.vbs
start "" "https://www.youtube.com/watch?v=XgISIV38Iv8"
cls
echo Papaj
echo Papaj
echo Papaj
pause
del shit.vbs
goto menu

:-b
echo MsgBox "-b -b -b -b -b -b -b -b -b -b" > shit.vbs
start shit.vbs
cls
echo -b
echo -b
echo -b
echo -b
echo -b
echo -b
echo -b
echo -b
echo -b
echo -b
echo -b
echo -b
echo -b
echo -b
echo -b
pause
del shit.vbs
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
echo     VERSION = 3.1
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
echo No updates :( But you can check the Github page for this project! (https://github.com/WJTZIL/Syszil)
echo Old versions: (https://github.com/WJTZIL/Syszil/releases/latest)
echo.
pause
goto menu


:load1
cls
echo /\
echo \
pause
goto load2

:load2
cls
echo /\
echo.  /
pause
goto load3

:load3
cls
echo.  \
echo \/
pause
goto load4

:load4
cls
echo. /
echo \/
pause
goto load5

:load5
cls
echo /\
echo \
goto load6

:load6
pause
cls
echo Loading everything...
pause
cls
echo Loading SYSZIL-drivers.drv...
pause
cls
echo Loaded the file! Booting...
goto install

:recovery
start recovery.bat

:shutdown
cls
title Shutdowning Syszil...
echo Shutdowning Syszil...
echo. === LOGS ===
echo Unloaded SYSZIL-drivers.drv
echo Switched user to PowerSrc
echo Loaded shutdown.src
pause

:exit
exit