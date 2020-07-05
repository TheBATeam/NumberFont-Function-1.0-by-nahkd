@echo off
setlocal ENABLEDELAYEDEXPANSION
REM First configuration
set sect=

REM Number font (5x7) (Pattern: 0123456789)
set number_small_1_demo= ллл    л    ллл   ллл    л л ллллл  ллл  ллллл  ллл   ллл 
set number_small_2_demo=лл  л  лл   л   л л   л  л  л л     л   л     л л   л л   л
set number_small_3_demo=лл  л   л      л      л л   л л     л         л л   л л   л
set number_small_4_demo=л л л   л     л   лллл  ллллл  ллл  лллл     л   ллл   лллл
set number_small_5_demo=л л л   л    л        л     л     л л   л    л  л   л     л
set number_small_6_demo=л  лл   л   л     л   л     л л   л л   л   л   л   л л   л
set number_small_7_demo= ллл   ллл  ллллл  ллл      л  ллл   ллл    л    ллл   ллл 
set number_small_1= ллл   л   ллл  ллл   л лллллл ллл ллллл ллл  ллл 
set number_small_2=лл  л лл  л   лл   л л  лл    л   л    лл   лл   л
set number_small_3=лл  л  л     л     лл   лл    л        лл   лл   л
set number_small_4=л л л  л    л  лллл ллллл ллл лллл    л  ллл  лллл
set number_small_5=л л л  л   л       л    л    лл   л   л л   л    л
set number_small_6=л  лл  л  л    л   л    лл   лл   л  л  л   лл   л
set number_small_7= ллл  ллл ллллл ллл     л ллл  ллл   л   ллл  ллл 

if "%1"=="" goto help

set out1=
set out2=
set out3=
set out4=
set out5=

goto process

:help
echo Font v1.0 - 7x7
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
set out6=%out6% !number_small_6:~%start%,5!
set out7=%out7% !number_small_7:~%start%,5!
shift
if "%1"=="" goto out
goto process

:out
echo %out1%
echo %out2%
echo %out3%
echo %out4%
echo %out5%
echo %out6%
echo %out7%
goto :eof
