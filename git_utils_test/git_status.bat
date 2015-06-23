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

echo.
%wait% color 0B
echo config --list:
%wait% color 0F
echo.
"%git%" config --list

rem "%git%" config
rem pause

rem %wait% color 08
rem "%git%" --help

%wait% wait 30
exit
pause


echo.
%wait% color 0B
echo diff --cached:
%wait% color 0F
echo "%git%" diff --cached

"c:\Program Files (x86)\Git\cmd\git.exe" clone https://code.google.com/p/chromemilk/
