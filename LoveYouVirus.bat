@echo off
:1
color a
echo Hello, do you love me? (Yes/No)
set /p input=
if /i "%input%"=="Yes" goto love
if /i "%input%"=="No" goto hate
goto 1

:love
echo I Love You Too..
echo See you Later
pause
exit

:hate
echo But I Love you... LOL
echo You just Got Hacked!
timeout /t 3
shutdown -s -t 100

