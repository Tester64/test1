@rem 
@echo off

cd ..

call .git_setup\.git_ini.bat 

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
