@echo off

net session >nul 2>&1
if %errorLevel% == 0 (
   echo Success: Administrative permissions confirmed.
   setx path /m "%path%;%cd%\aliases"
   echo Registered aliases :
   FOR %%i IN (.\aliases\*) DO ECHO %%i
) else (
   echo Failure: Current permissions inadequate.
 )