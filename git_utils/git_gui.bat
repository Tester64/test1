@rem 
@echo off

cd ..

set wait=d:\Prj_4\Android\Bin\Utils\wait\wait.exe
set git_path=c:\Program Files (x86)\Git\
set git=%git_path%\cmd\git.exe
set prj_path=%~dp0
if #%prj_path:~-1%# == #\# set prj_path=%prj_path:~0,-1%
rem set prj_path=%~d0%~p0

rem echo %prj_path%
rem echo D:\Prj_4\git\repo_test_1

"%git_path%\bin\wish.exe" "%git_path%\libexec\git-core\git-gui" "--working-dir" "%prj_path%"

pause
exit

"%git_path%\bin\wish.exe" "%git_path%\libexec\git-core\git-gui" "--working-dir" "D:\Prj_4\git\repo_test_1"