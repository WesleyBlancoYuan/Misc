@echo off

setlocal ENABLEEXTENSIONS

:: read the root folder to process. Can drag&drop
set /p root="Drag here the root folder: "
echo Uninstalling...
echo "%root%\uninstaller\uninstaller.jar"
java -jar "%root%\uninstaller\uninstaller.jar"

pause.

:: Delete all dir without prompt, even not empty
echo Deleting dirs...
for /d %%G in (%root%\*.*) do (
    echo Deleting dir: %%G
    rd "%%G" /q /s
)

:: Delete all files
echo Deleting files...
for /r %root% %%H in (*.*) do (
    echo Deleting file: %%H
    del "%%H" /q /s
)

:: Delete root
echo Deleting the root dir...
rd "%root%"

pause.