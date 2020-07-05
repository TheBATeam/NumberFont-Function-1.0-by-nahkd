@echo off
setlocal ENABLEDELAYEDEXPANSION
REM First configuration
set sect=

REM Number font (5x5) (Pattern: 0123456789)
set number_small_1_demo=ллллл   л   ллллл ллллл л   л ллллл ллллл ллллл ллллл ллллл
set number_small_2_demo=л   л   л       л     л л   л л     л         л л   л л   л
set number_small_3_demo=л   л   л   ллллл ллллл ллллл ллллл ллллл     л ллллл ллллл
set number_small_4_demo=л   л   л   л         л     л     л л   л     л л   л     л
set number_small_5_demo=ллллл   л   ллллл ллллл     л ллллл ллллл     л ллллл ллллл
set number_small_1=ллллл  л  ллллллллллл   лллллллллллллллллллллллллл
set number_small_2=л   л  л      л    лл   лл    л        лл   лл   л
set number_small_3=л   л  л  ллллллллллллллллллллллллл    ллллллллллл
set number_small_4=л   л  л  л        л    л    лл   л    лл   л    л
set number_small_5=ллллл  л  лллллллллл    ллллллллллл    ллллллллллл

if "%1"=="" goto help

set out1=
set out2=
set out3=
set out4=
set out5=

goto process

:help
echo Font v1.0 - 5x5
echo Usage: %0 [number]
echo [number]               Input number
echo NOTE: Every number must type with space!
echo Example: %0 1 2 5 6
echo will output 1256 in big number
goto :eof

:process
set /a start=%1 * 5
set out1=%out1% !number_small_1:~%start%,5!
set out2=%out2% !number_small_2:~%start%,5!
set out3=%out3% !number_small_3:~%start%,5!
set out4=%out4% !number_small_4:~%start%,5!
set out5=%out5% !number_small_5:~%start%,5!
shift
if "%1"=="" goto out
goto process

:out
echo %out1%
echo %out2%
echo %out3%
echo %out4%
echo %out5%
goto :eof
