@rem 
@echo off

cd ..

call .git_setup.bat
rem set wait=d:\Prj_4\Android\Bin\Utils\wait\wait.exe
rem set git_path=c:\Program Files (x86)\Git\
rem set git=%git_path%cmd\git.exe
rem set prj_path=%~d0%~p0

rem %wait% colors

echo.
%wait% color 0B
echo log:
rem echo.
rem %wait% color 0F
rem "%git%" log
rem echo.
rem %wait% color 0F
rem echo.
%wait% color 08
echo ---------------------------------------------
%wait% color 0F
"%git%" shortlog -s
%wait% color 08
echo ---------------------------------------------
%wait% color 0F
"%git%" rev-list HEAD --count
%wait% color 08
echo ---------------------------------------------
echo.

%wait% wait 30
exit
