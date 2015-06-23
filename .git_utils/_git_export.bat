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

set github_login=Tester64

echo.
%wait% color 0B
echo export to GitHub.com
echo export to BitBucket.org

%wait% color 0F
rem echo "%git%" clone https://code.google.com/p/chromemilk/
rem set cmd=remote add origin git@github.com:%github_login%/new_repo.git
rem git remote add upstream https://github.com/octocat/Spoon-Knife.git
set cmd=remote add upstream https://Tester64@bitbucket.org/Tester64/test1.git
echo git %cmd%
"%git%" %cmd%

rem set cmd=git push -u origin master
rem set cmd=git push -u upstream master
set cmd=-c diff.mnemonicprefix=false -c core.quotepath=false push -v --tags bitbucket_Tester64_test1 master:master
set cmd=pull
set cmd=push
set cmd=fetch
echo git %cmd%
"%git%" %cmd%
rem "%git%" push

echo.
%wait% wait 30
exit
pause

"c:\Program Files (x86)\Git\cmd\git.exe" 
