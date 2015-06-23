@rem 
@echo off

cd ..

call .git_setup\.git_ini.bat 

rem %wait% colors

echo.
%wait% color 0B
echo add all...
%wait% color 0F
rem !!!!! git add -A stages All
rem !!!!! git add . stages new and modified, without deleted
rem !!!!! git add -u stages modified and deleted, without new
"%git%" add -A

echo.
%wait% color 0B
echo commit...
%wait% color 0F
set comment=Изменения от %date% %time%
echo "%git%" commit -m "%comment%"
"%git%" commit -m "%comment%"

echo.
%wait% wait 30
exit
pause

"c:\Program Files (x86)\Git\cmd\git.exe" clone https://code.google.com/p/chromemilk/
