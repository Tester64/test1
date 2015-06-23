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

echo.
%wait% color 0B
echo import from GitHub.com
echo import from BitBucket.org

rem создаем папку - копию рабочего/текущего(?) репозитория из другой папки. Но это НЕ синхронизация!!!
%wait% color 0F
set cmd= clone d:\Prj_4\git\repo_github\test_1 prj_path
echo git %cmd%
"%git%" %cmd%

echo.
%wait% wait 30
exit
pause

"c:\Program Files (x86)\Git\cmd\git.exe" 
