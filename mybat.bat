REM comment1
:: comment2

REM display: echo 
echo "test"

REM default variable/env variable
::-all parameter
echo "%*"
::-the bat file
echo "%~0"
::-the first parameter
echo "%~1"
::-path of the bat file
echo "%~dp0"
::-env variable
echo "%date%"
echo "%time%"
::-execute path
echo "%CD%"
::-0~32767
echo "%RANDOM%"

REM close echo command: @echo off 
::-before
echo "test"
@echo off 
::-after
echo "test"

REM variable: set [/a|/p] 
::-string
set v1=variable
::-expression
set /a v2=1+1
::-input string
set /p v3=Input something
::-show all v* variable
set v
::-use
echo "%v1%"

REM if condition
::-single line
if "%v1%" == "variable" echo "true"
::-mutil line
if NOT "%v1%" == "variable" (
	echo "true" 
)else (
	echo "false"
)

REM for loop
::-echo all file
for %%i in (*) do echo %%i
::-echo (1,2,10)
for %%i in (1,2,10) do (
	echo %%i
)
::-/L echo (1,3,5,7,9)
for /L %%i in (1,2,10) do (
	echo %%i
)

REM other cmd
pause 
timeout 5






