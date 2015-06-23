@rem 
@echo off

cd ..

call .git_setup\.git_ini.bat 
if #%prj_path:~-1%# == #\# set prj_path=%prj_path:~0,-1%

rem echo %prj_path%
rem echo D:\Prj_4\git\repo_test_1
rem start
rem call 
rem cmd start 
rem START /B CMD /C CALL 
START "title" "%git_path%\bin\wish.exe" "%git_path%\libexec\git-core\git-gui" "--working-dir" "%prj_path%"

rem exit
rem pause