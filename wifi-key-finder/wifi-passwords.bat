@echo off
setlocal enabledelayedexpansion

netsh wlan show profile

set /p profile=Which of the profiles which you want to know the password?

netsh wlan show profile "%profile%" key=clear | find "Security key"
echo --------------------------------------------------------------
netsh wlan show profile "%profile%" key=clear | find "Key Content"
pause


