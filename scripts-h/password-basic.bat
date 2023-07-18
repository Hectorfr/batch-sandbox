@echo off

:start
echo -create (create password)
echo -check (check password)
echo.

set /p PROGRAM= What do you want to do?: 
GOTO %PROGRAM%


:create
set /p PASSWORD= What do you want the password to be?: 
echo %PASSWORD% > test.txt
pause
GOTO start

:check
cls
set /p PASSWORD1= What is the password?:

for /f "Delims=" %%a in (test.txt) do (
set TEXT=%%a
)

if %PASSWORD1%==%TEXT% GOTO correct
echo you are wrong!!
pause
GOTO start

:correct
echo you are right!
pause
GOTO start