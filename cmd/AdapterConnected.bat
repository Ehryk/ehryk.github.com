::AdapterConnected v1.0
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

FOR /F "tokens=2" %%s IN ('netsh int show int ^| find "%Adapter%"') do SET status=%%s

ECHO %status%

IF /I %status%==Connected EXIT /B 0                 ::Connected
IF /I %status%==Disconnected EXIT /B 1              ::Disconnected
IF /I %status%==Network Adapter Not Found EXIT /B 2 ::Not Found

EXIT /B 10 ::Unknown Response

:help

ECHO === Check Adapter Connected v1.0 ===
ECHO ===    Author: Eric Menze     ===
ECHO
ECHO Usage: AdapterConnected.bat
ECHO Usage: AdapterConnected "Local Area Connection 1"
ECHO Usage: AdapterConnected "Wi-Fi"
ECHO Version: AdapterConnected /v 
ECHO Help: AdapterConnected /h

EXIT /B 0

:version

ECHO Adapter Connected v1.0 (2015.11.12)

EXIT /B 0
