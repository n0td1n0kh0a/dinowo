@echo off
for /f "delims=" %%i in ('"C:\Program Files (x86)\AnyDesk\AnyDesk.exe" --get-id') do set ID=%%i 
echo AnyDesk ID is: %ID%
for /f "delims=" %%i in ('"C:\Program Files (x86)\AnyDesk\AnyDesk.exe" --get-status') do set STATUS=%%i 
echo AnyDesk status is: %STATUS%
for /f "delims=" %%i in ('"C:\Program Files (x86)\AnyDesk\AnyDesk.exe" --version') do set VER=%%i 
echo AnyDesk version is: %VER%
pause