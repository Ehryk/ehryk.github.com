@ECHO OFF
ECHO ==========================
ECHO === Copying User Files ===
ECHO ==========================

ECHO | SET /P message= Updating .bashrc...        
COPY /Y bashrc %UserProfile%\.bashrc > nul
IF EXIST %SYSTEMDRIVE%\cygwin\etc ( COPY /Y bashrc %SYSTEMDRIVE%\cygwin\etc\.bashrc > nul & ECHO | SET /P message=+CygWin...  )
ECHO Done.

ECHO | SET /P message= Updating .bash_aliases...  
COPY /Y bash_aliases %UserProfile%\.bash_aliases > nul
IF EXIST %SYSTEMDRIVE%\cygwin\etc ( COPY /Y bash_aliases %SYSTEMDRIVE%\cygwin\etc\.bash_aliases > nul & ECHO | SET /P message=+CygWin...  )
ECHO Done.

ECHO | SET /P message= Updating .inputrc...       
COPY /Y inputrc %UserProfile%\.inputrc > nul
IF EXIST %SYSTEMDRIVE%\cygwin\etc ( COPY /Y inputrc %SYSTEMDRIVE%\cygwin\etc\.inputrc > nul & ECHO | SET /P message=+CygWin...  )
ECHO Done.

REM ECHO | SET /P message= Adding to Startup *under construction* ... 
REM "Add Startup.bat"
REM ECHO Done.

ECHO =======================================
ECHO === Updating Configuration Complete ===
ECHO =======================================
