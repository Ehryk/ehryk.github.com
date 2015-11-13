::AdapterEnabled v1.0
::Eric Menze

@ECHO OFF

SETLOCAL enabledelayedexpansion

SET Adapter=%~1

IF /I "%Adapter%"=="/h" GOTO help
IF /I "%Adapter%"=="/?" GOTO help
IF /I "%Adapter%"=="/v" GOTO version

IF ["%Adapter%"]==[""] SET "Adapter=Local Area Connection 2"

::Uncomment to output the adapter name
::ECHO|SET /p=%Adapter%: 

SET "status=Network Adapter Not Found"

FOR /F "tokens=1" %%s IN ('netsh int show int ^| find "%Adapter%"') do SET status=%%s

ECHO %status%

IF /I %status%==Enabled EXIT /B 0                   ::Enabled
IF /I %status%==Disabled EXIT /B 1                  ::Disabled
IF /I %status%==Network Adapter Not Found EXIT /B 2 ::Not Found

EXIT /B 10 ::Unknown Response

:help

ECHO === Check Adapter Enabled v1.0 ===
ECHO ===    Author: Eric Menze      ===
ECHO
ECHO Usage: AdapterEnabled.bat
ECHO Usage: AdapterEnabled "Local Area Connection 1"
ECHO Usage: AdapterEnabled "Wi-Fi"
ECHO Version: AdapterEnabled /v 
ECHO Help: AdapterEnabled /h

EXIT /B 0

:version

ECHO Adapter Enabled v1.0 (2015.11.12)

EXIT /B 0
