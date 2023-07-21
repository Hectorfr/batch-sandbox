@echo off
title FirstTry
echo this is my first line

:START

set /p a=Equation?
set /a res=%a%
echo %res%
if %res%==5 start notepad.exe



pause
cls
GOTO START