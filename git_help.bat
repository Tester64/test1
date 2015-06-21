@rem 
@echo off

set wait=d:\Prj_4\Android\Bin\Utils\wait\wait.exe
set git=c:\Program Files (x86)\Git\cmd\git.exe

rem %wait% colors

%wait% color 0B
%wait% color 0F

rem "%git%" help config
rem pause

rem 
%wait% color 08
rem 
"%git%" --help

%wait% wait 30
exit
pause

"c:\Program Files (x86)\Git\cmd\git.exe" clone https://code.google.com/p/chromemilk/
