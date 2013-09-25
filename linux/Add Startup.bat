
@ECHO OFF
ECHO === Adding to Startup ===

IF EXIST "%SYSTEMDRIVE%\Projects\ehryk.github.com\linux" GOTO BUILD

ECHO Project directory not found.
EXIT

:BUILD

ECHO @ECHO OFF > "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"
ECHO PUSHD . >> "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"
ECHO ECHO --- Changing Directory --- >> "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"
ECHO CD "%SYSTEMDRIVE%\Projects\ehryk.github.com\linux" >> "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"
ECHO ECHO Done. >> "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"
ECHO ECHO --- Updating ehryk.github.com --- >> "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"
ECHO git pull >> "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"
ECHO ECHO Done. >> "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"
ECHO ECHO --- Running Configuration Updater --- >> "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"
ECHO CALL "Update Config.bat" >> "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"
ECHO ECHO Done. >> "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"

ECHO ECHO. >> "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"
ECHO ECHO --- Script Ran Successfully. --- >> "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"
ECHO POPD >> "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat"

ECHO Added successfully.
ECHO File = "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Github Profile.bat" ===

ECHO ============
ECHO === DONE ===
ECHO ============