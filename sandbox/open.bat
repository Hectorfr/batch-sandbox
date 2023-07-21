@echo off

echo This is my first menu using scripts
echo.

rem Make sure that this is being run from the scripts-h folder
IF "%dirname%"=="scripts-h" (
  echo Must run from scripts-run folder
  exit /b 1
)

:USER_CONSENT
set /p shouldContinue= "Press (Y) to confirm and continue or (N) to cancel and exit: "
IF /I "%shouldContinue%"=="N" (
	GOTO END
)
IF /I "%shouldContinue%"=="Y" (
	GOTO SCRIPT_START
)
echo.
echo Wrong input. Please try again.
GOTO USER_CONSENT
rem GO BACK TO THE USER CONSENT TO SEARCH IF I HE WANTS TO CONTINUE OR NOT


echo.
:SCRIPT_START
start NotePad
:END
echo OK OK
EXIT /B %errorCode%