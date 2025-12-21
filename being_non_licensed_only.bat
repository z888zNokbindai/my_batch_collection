@echo off
color A

:: ===============================
:: Check Admin Privileges
:: ===============================
openfiles >nul 2>&1
if %errorlevel% NEQ 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process cmd -ArgumentList '/c \"%~f0\"' -Verb RunAs"
    exit /B
)

title Non-Licensed Device Auto Setup

echo =====================================
echo  Non-Licensed Device Setup (C)
echo =====================================
echo.

call :non_licensed_devices

echo.
echo ===== All Tasks Completed =====
pause
exit /b


:: ==================================================
:: MAIN TASK FOR NON-LICENSED DEVICES
:: ==================================================
:non_licensed_devices
echo Running tasks for non-licensed devices...
call :disable_update_and_defense
call :find_and_mount_iso
call :create_desktop_icons
call :change_region_and_timezone
call :download_and_install_softwares
call :run_setup_scripts
call :create_shortcuts
call :debloat_system
goto :eof


:: ==================================================
:: BELOW THIS LINE = ORIGINAL FUNCTIONS
:: (คัดลอกมาจาก being.bat ได้ตรง ๆ)
:: ==================================================

:disable_update_and_defense
echo Disabling Windows Update and Defender...
:: >>> วางโค้ดเดิมจาก being.bat ตรงนี้ <<<
goto :eof

:find_and_mount_iso
echo Finding and mounting ISO...
:: >>> วางโค้ดเดิมจาก being.bat ตรงนี้ <<<
goto :eof

:create_desktop_icons
echo Creating desktop icons...
:: >>> วางโค้ดเดิมจาก being.bat ตรงนี้ <<<
goto :eof

:change_region_and_timezone
echo Changing region and timezone...
:: >>> วางโค้ดเดิมจาก being.bat ตรงนี้ <<<
goto :eof

:download_and_install_softwares
echo Downloading and installing softwares...
:: >>> วางโค้ดเดิมจาก being.bat ตรงนี้ <<<
goto :eof

:run_setup_scripts
echo Running setup scripts...
:: >>> วางโค้ดเดิมจาก being.bat ตรงนี้ <<<
goto :eof

:create_shortcuts
echo Creating shortcuts...
:: >>> วางโค้ดเดิมจาก being.bat ตรงนี้ <<<
goto :eof

:debloat_system
echo Debloating system...
:: >>> วางโค้ดเดิมจาก being.bat ตรงนี้ <<<
goto :eof
