@Echo off
cls

Title NumberFont 1.0 - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a

setlocal ENABLEDELAYEDEXPANSION
set /p input="Type number without space >"
set len=0
:len_loop
if "!input:~%len%,1!"=="" goto exec
set /a len=%len%+1
goto len_loop

:exec
set cmd=
for /l %%a in (0,1,%len%) do (
 set cmd=!cmd!!input:~%%a,1! 
)
echo 5x5
echo.
call font-1.0-5x5.bat %cmd%
echo.
echo 5x7
echo.
call font-1.0-5x7.bat %cmd%
echo.
pause