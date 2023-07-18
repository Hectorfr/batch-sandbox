@echo off
setlocal enabledelayedexpansion

netsh wlan show profile

set /p profile=Which of the profiles which you want to know the password?

netsh wlan show profile "%profile%" key=clear
pause


