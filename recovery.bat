@echo off
title Syszil Recovery

:check_Permissions
    echo Detecting permissions...
    
    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Administrative permissions detected. Can run Syszil Recovery.
	pause
	goto Recovery
    ) else (
	color 4
	echo There is no administrative premissions. Can't run Syszil Recovery Mode.
        pause
	exit
    )
    
    pause >nul

cd /d "%APPDATA%"


:Recovery
echo.=======================
echo     Syszil Recovery
echo.=======================
echo. Tools:
echo 1. Wipe the folder in Appdata
echo 2. Exit
echo 0. Syszil Recovery Mode
echo.========================
echo     @Copyright WJTZIL
echo.========================

set /p selection=
if %selection% == 1 goto wipe
if %selection% == 2 goto exit

:wipe
cls
echo Are you sure?
echo Wiping the folder in Appdata permantely deletes the folder! (Y/N)

set /p choice=
if %choice% == Y goto delete-fol
if %choice% == N goto Recovery

:delete-fol
pause
cls
echo Wiping the folder...
pause
for /d %G in ("%APPDATA%\WJTZIL\Syszil\*") do rd /s /q "%~G" 
cls
echo Folder Wiped
pause
goto exit

:exit
exit