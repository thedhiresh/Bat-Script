@echo off
setlocal

REM Define the directory where files will be created
set "directory=C:\path\to\directory"

REM Define the number of files to create
set "file_count=10"

REM Define the file extension
set "extension=.txt"

REM Change to the specified directory
cd /d "%directory%"

REM Loop to create multiple files
for /L %%i in (1,1,%file_count%) do (
    echo Creating file %%i%extension%
    type nul > "file_%%i%extension%"
)

echo Done creating %file_count% files.
pause
