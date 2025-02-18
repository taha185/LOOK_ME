@echo off
title IP Lookup Tool by Taha185
cls

:: Banner
color 0A
echo -------------------------------
echo       IP LOOKUP TOOL
echo -------------------------------
echo  Created by Taha185
timeout /t 2 >nul
cls

:: Disclaimer
echo Disclaimer:
echo This tool is for educational purposes only.
echo Do not use it for malicious intent.
echo -------------------------------
timeout /t 3 >nul
cls

:: Ask for IP address
set /p ip="Enter the IP address to lookup: "
echo -------------------------------

:: Check if the IP is valid
echo Checking IP address: %ip%
timeout /t 2 >nul

:: Use ipinfo.io API to get information about the IP
for /f "tokens=*" %%i in ('curl -s https://ipinfo.io/%ip%/json') do set result=%%i

:: Display the result
echo -------------------------------
echo IP Information:
echo %result%

:: End
pause
exit
