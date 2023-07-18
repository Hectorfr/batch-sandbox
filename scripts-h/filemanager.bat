@echo off
xcopy /y C:\Users\%USERNAME%\Documents\scripts-h\test.txt C:\Users\%USERNAME%\Desktop
pause
call C:\Users\%USERNAME%\Desktop\test.txt
pause
del C:\Users\%USERNAME%\Desktop\test.txt