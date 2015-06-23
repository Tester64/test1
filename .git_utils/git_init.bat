@rem 
@echo off

cd ..

call .git_setup\.git_ini.bat 

rem %wait% colors

%wait% color 0B
"%git%" init
echo.

"%git%" config --local user.name "Andriy Fomin"
"%git%" config --local user.email monolitsoft64@gmail.com
"%git%" config --local core.autocrlf false
"%git%" config --local gui.encoding utf-8

%wait% color 03
echo user.name:
%wait% color 0B
"%git%" config user.name
echo.

%wait% color 03
echo user.email:
%wait% color 0B
"%git%" config user.email
echo.

%wait% color 03
echo core.autocrlf:
%wait% color 0B
"%git%" config core.autocrlf
echo.

%wait% color 03
echo gui.encoding:
%wait% color 0B
"%git%" config gui.encoding
echo.

%wait% wait 30
exit
pause
