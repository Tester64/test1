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
echo add all:
%wait% color 0F
rem !!!!! git add -A stages All
rem !!!!! git add . stages new and modified, without deleted
rem !!!!! git add -u stages modified and deleted, without new
"%git%" add -A

echo.
%wait% color 0B
echo import from GitHub.com
echo import from BitBucket.org
%wait% color 0F
echo "%git%" clone https://code.google.com/p/chromemilk/

echo.
%wait% wait 30
exit
pause

"c:\Program Files (x86)\Git\cmd\git.exe" 
