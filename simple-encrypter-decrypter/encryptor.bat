@echo off
setlocal enableDelayedExpansion


set /p inputcode=Code:
set /p code=<%1:
set chars=0123456789abcdefghijklmnopkrstuvwxyz 

for /L %%N in (10 1 36) do (

for /F %%C in ("!chars:~%%N, 1!") do (

set /a MATH=%%N*%inputcode%

for /F %%F in ("!MATH!") do (
set "code=!code:%%C=-%%F!"
)
)
)

echo !code! > encrypted.txt
pause