echo off
set n=50
 
for %%f in ( *.txt ) do call :copyFile %%f
exit /b
 
:copyFile
 
if "%n%"=="100" (goto :finish)
set /a n=n+1
set /a exp=1000+n
copy %1 %exp%%~x1
 
goto :copyFile
 
:finish
set n=0
goto :EOF

pause