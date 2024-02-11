@echo off
start https://nodejs.org/dist/v20.11.0/node-v20.11.0-x64.msi
echo.
echo Auto Setup GTPS by Kaali
echo t.me/kaalistore
echo.
echo Installing runtime packages...

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

echo Winrar...
start /wait winrar-x64-624.exe /passive /norestart

echo Notepad ++...
start /wait npp.8.6.2.Installer.x64.exe /passive /norestart

echo Visual Studio
start /wait VisualStudioSetup.exe /passive /norestart

goto END

:X64

echo Winrar...
start /wait winrar-x64-624.exe /passive /norestart

echo Notepad ++...
start /wait npp.8.6.2.Installer.x64.exe /passive /norestart

echo Visual Studio
start /wait VisualStudioSetup.exe /passive /norestart

goto END

:END

echo.
echo Gtps Setup Already Installed

exit