@rem
@echo off

set wait=d:\Prj_4\Android\Bin\Utils\wait\wait.exe
set git=c:\Program Files (x86)\Git\cmd\git.exe

rem %wait% colors

%wait% color 0B
%wait% color 0E
rem "%git%" add *.cpp
rem "%git%" add *.*
echo on
"%git%" add .
@echo off
rem "%git%" add *.bat
rem "%git%" add *.h

%wait% color 0A
rem "%git%" commit -m 'initial project version'

%wait% wait 30
exit
pause
