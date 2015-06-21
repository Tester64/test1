@rem 
@echo off

cd ..

set wait=d:\Prj_4\Android\Bin\Utils\wait\wait.exe
set git_path=c:\Program Files (x86)\Git\
set git=%git_path%cmd\git.exe
set prj_path=%~d0%~p0

rem %wait% colors

%wait% color 0B
"%git%" init
echo.

rem "%git%" config --global user.name "Andriy Fomin"
rem "%git%" config --global user.email monolitsoft64@gmail.com
rem "%git%" config --global gui.encoding utf-8

"%git%" config --local user.name "Andriy Fomin"
"%git%" config --local user.email monolitsoft64@gmail.com
"%git%" config --local core.autocrlf false
rem "%git%" config --local core.autocrlf true
"%git%" config --local gui.encoding utf-8

"%git%" config --global core.editor d:/Prj_4/git/npp.sh

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

%wait% color 0E
rem echo on
"%git%" add .
"%git%" add -A
rem "%git%" add *.cpp
rem "%git%" add *.bat
rem "%git%" add *.h
rem "%git%" add .
rem "%git%" add *.*

%wait% color 0A
rem "%git%" commit -m 'initial project version'

%wait% wait 30
exit
pause
