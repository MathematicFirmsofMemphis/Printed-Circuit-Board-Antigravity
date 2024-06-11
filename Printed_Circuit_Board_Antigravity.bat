@echo off
title Anti-Gravity PCB Menu

:login
cls
echo Welcome to the Anti-Gravity PCB System
echo.
set /p username=Enter your username:
set /p password=Enter your password:

rem Check login credentials (replace with your actual authentication mechanism)
if "%username%"=="your_username" (
    if "%password%"=="your_password" (
        echo Login successful!
        timeout /t 2 >nul
        goto main_menu
    ) else (
        echo Incorrect password!
        timeout /t 2 >nul
        goto login
    )
) else (
    echo Username not found!
    timeout /t 2 >nul
    goto login
)

:main_menu
cls
echo Main Menu
echo 1. Activate Levitation Coils
echo 2. Deactivate Levitation Coils
echo 3. Exit
set /p choice=Enter your choice:

if "%choice%"=="1" (
    call :activate_levitation
) else if "%choice%"=="2" (
    call :deactivate_levitation
) else if "%choice%"=="3" (
    goto :eof
) else (
    echo Invalid choice. Please try again.
    timeout /t 2 >nul
    goto main_menu
)

:activate_levitation
cls
echo Activating Levitation Coils...
rem Simulate activation process (replace with your actual logic)
timeout /t 2 >nul
echo Levitation Coils activated!
pause >nul
goto main_menu

:deactivate_levitation
cls
echo Deactivating Levitation Coils...
rem Simulate deactivation process (replace with your actual logic)
timeout /t 2 >nul
echo Levitation Coils deactivated!
timeout /t 2 >nul
goto main_menu
