Echo off
cls
ECHO.
ECHO ...............................................
ECHO Wich game do you want to backup or restore?
ECHO ...............................................
ECHO.
ECHO 1 - Prison Architect
ECHO 2 - Rimworld
ECHO 3 - Stardew Valley
ECHO.
Set /P M= Please type your option:

IF %M%==1 GOTO Prison Architect
IF %M%==2 GOTO RimWorld
IF %M%==3 GOTO Stardew Valley

:Prison Architect

cls
ECHO.
ECHO ...............................................
ECHO What do you want to do?
ECHO ...............................................
ECHO.
ECHO 1 - Backup The Save
ECHO 2 - Restore The Save
ECHO.
Set /P M= Please type your option:

IF %M%==1 GOTO Backup
IF %M%==2 GOTO Restore

:Backup
rmdir "./Prison Architect" /s /Q
ECHO Deleting backup folder
robocopy "%localappdata%\Introversion\Prison Architect" ".\Prison Architect" /s /e
pause
exit

:Restore
rmdir "%localappdata%\Introversion\Prison Architect" /s /Q
ECHO Deleting local folder
robocopy ".\Saving" "%localappdata%\Introversion\Prison Architect" /s /e
pause
exit

:Rimworld
cls
ECHO.
ECHO ...............................................
ECHO What do you want to do?
ECHO ...............................................
ECHO.
ECHO 1 - Backup The Save
ECHO 2 - Restore The Save
ECHO.
Set /P M= Please type your option:

IF %M%==1 GOTO Backup
IF %M%==2 GOTO Restore

:Backup
rmdir "./RimWorld" /s /Q
ECHO Deleting backup folder
robocopy "%userprofile%\appdata\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios" ".\RimWorld" /s /e
pause
exit

:Restore
rmdir "%userprofile%\appdata\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios" /s /Q
ECHO Deleting local folder
robocopy ".\RimWorld" "%userprofile%\appdata\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios" /s /e
pause
exit

:Stardew Valley

cls
ECHO.
ECHO ...............................................
ECHO What do you want to do?
ECHO ...............................................
ECHO.
ECHO 1 - Backup The Save
ECHO 2 - Restore The Save
ECHO.
Set /P M= Please type your option:

IF %M%==1 GOTO Backup
IF %M%==2 GOTO Restore

:Backup
rmdir "./Stardew Valley" /s /Q
ECHO Deleting backup folder
robocopy "%appdata%\StardewValley\Saves" ".\Stardew Valley" /s /e
pause
exit

:Restore
rmdir "%appdata%\StardewValley\Saves" /s /Q
ECHO Deleting local folder
robocopy ".\Stardew Valley" "%appdata%\StardewValley\Saves" /s /e
pause
exit
