@rem 
@echo off

cd ..

set wait=d:\Prj_4\Android\Bin\Utils\wait\wait.exe
set git_path=c:\Program Files (x86)\Git\
set git=%git_path%\cmd\git.exe
set prj_path=%~d0%~p0

rem %wait% colors


rem "%git%" config
rem pause

echo.
%wait% color 0B
echo commit:
%wait% color 0F
"%git%" dif
"%git%" commit -m "Моя первая резервная копия"

rem "%git%" config
rem pause

rem %wait% color 08
rem "%git%" --help

%wait% wait 30
exit
pause

"c:\Program Files (x86)\Git\cmd\git.exe" clone https://code.google.com/p/chromemilk/
