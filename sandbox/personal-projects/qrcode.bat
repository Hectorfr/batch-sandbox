@echo off

rem I'm creating a script to create qrcodes in the easiest way 

set /p website=Write a website for the qr code or any input which will go to a google search of what you wrote?

pause

curl qrenco.de/%website%

echo Here it is, save it!

pause