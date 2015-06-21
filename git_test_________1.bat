@rem 
@echo off

set wait=d:\Prj_4\Android\Bin\Utils\wait\wait.exe
set git_path=c:\Program Files (x86)\Git\
set git=%git_path%\cmd\git.exe
set prj_path=%~d0%~p0

rem %wait% colors


rem "%git%" config
rem pause

echo.
%wait% color 0B
echo status:
%wait% color 0F
"%git%" status

echo.
%wait% color 0B
echo diff:
%wait% color 0F
"%git%" diff

echo on
rem 
echo ----------------------------
"%git%" config --local --list
rem pause
echo ----------------------------
"%git%" config --global --list
rem pause
echo ----------------------------
"%git%" config --system --list
rem 
echo ----------------------------
pause

rem %wait% color 08
rem "%git%" --help

%wait% wait 30
exit
pause

"c:\Program Files (x86)\Git\cmd\git.exe" clone https://code.google.com/p/chromemilk/
