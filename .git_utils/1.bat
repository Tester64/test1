@rem 
@echo off

cd ..

call .git_setup\.git_ini.bat 

rem 
%wait% colors

echo.
%wait% color 0B
echo add all:
%wait% color 0F

echo.
%wait% color 0B
echo import from GitHub.com
echo import from BitBucket.org

set branch="VersionOld"

rem echo on

%wait% color 08
if not "%origin_path%"=="" (
	SET run_cmd="%git_path%bin\git.exe" push -u origin %branch%
	%wait% color 6E
	echo %run_cmd%
	%wait% color 06
	%run_cmd%
)

if not "%gitfile_1_path%"=="" (
	SET run_cmd="%git_path%bin\git.exe" push -u gitfile1 %branch%
	%wait% color 6E
	echo %run_cmd%
	%wait% color 06
	%run_cmd%
)
if not "%gitfile_2_path%"=="" (
	SET run_cmd="%git_path%bin\git.exe" push -u gitfile2 %branch%
	%wait% color 6E
	echo %run_cmd%
	%wait% color 06
	%run_cmd%
)
if not "%gitfile_3_path%"=="" (
	SET run_cmd="%git_path%bin\git.exe" push -u gitfile3 %branch%
	%wait% color 6E
	echo %run_cmd%
	%wait% color 06
	%run_cmd%
)

if not "%github_1_path%"=="" (
	SET run_cmd="%git_path%bin\git.exe" push -u github1 %branch%  
	%wait% color 6E
	echo %run_cmd%
	%wait% color 06
	%run_cmd%
)
if not "%github_2_path%"=="" (
	SET run_cmd="%git_path%bin\git.exe" push -u github2 %branch%  
	%wait% color 6E
	echo %run_cmd%
	%wait% color 06
	%run_cmd%
)
if not "%github_3_path%"=="" (
	SET run_cmd="%git_path%bin\git.exe" push -u github3 %branch%  
	%wait% color 6E
	echo %run_cmd%
	%wait% color 06
	%run_cmd%
)

if not "%bitbucket_1_path%"=="" (
	SET run_cmd="%git_path%bin\git.exe" push -u bitbucket1 %branch%  
	%wait% color 6E
	echo %run_cmd%
	%wait% color 06
	%run_cmd%
)
if not "%bitbucket_2_path%"=="" (
	SET run_cmd="%git_path%bin\git.exe" push -u bitbucket2 %branch%  
	%wait% color 6E
	echo %run_cmd%
	%wait% color 06
	%run_cmd%
)
if not "%bitbucket_3_path%"=="" (
	SET run_cmd="%git_path%bin\git.exe" push -u bitbucket3 %branch%  
	%wait% color 6E
	echo %run_cmd%
	%wait% color 06
	%run_cmd%
)

%wait% color 0B
"%git%" remote -v

echo.
%wait% wait 30
exit
pause

"c:\Program Files (x86)\Git\cmd\git.exe" 
