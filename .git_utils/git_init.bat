@rem 
@echo off

cd ..

call .git_setup\.git_ini.bat 

rem %wait% colors

%wait% color 0B
"%git%" init
echo.

"%git%" config --local user.name "Andriy Fomin"
"%git%" config --local user.email monolitsoft64@gmail.com
"%git%" config --local core.autocrlf false
"%git%" config --local gui.encoding utf-8

%wait% color 03
echo user.name:
%wait% color 0B
"%git%" config user.name
echo.

%wait% color 03
echo user.email:
%wait% color 0B
"%git%" config user.email
echo.

%wait% color 03
echo core.autocrlf:
%wait% color 0B
"%git%" config core.autocrlf
echo.

%wait% color 03
echo gui.encoding:
%wait% color 0B
"%git%" config gui.encoding
echo.

rem echo on
%wait% color 08
if "%origin_path%"=="" (
	"%git%" remote rm origin
) else (
	"%git%" remote add origin %origin_path%
	"%git%" remote set-url origin %origin_path%
)

if "%gitfile_1_path%"=="" (
	"%git%" remote rm gitfile1
) else (
	"%git%" remote add gitfile1 %gitfile_1_path%
	"%git%" remote set-url gitfile1 %gitfile_1_path%
)
if "%gitfile_2_path%"=="" (
	"%git%" remote rm gitfile2
) else (
	"%git%" remote add gitfile2 %gitfile_2_path%
	"%git%" remote set-url gitfile2 %gitfile_2_path%
)
if "%gitfile_3_path%"=="" (
	"%git%" remote rm gitfile3
) else (
	"%git%" remote add gitfile3 %gitfile_3_path%
	"%git%" remote set-url gitfile3 %gitfile_3_path%
)

if "%github_1_path%"=="" (
	"%git%" remote rm github1
) else (
	"%git%" remote add github1 %github_1_path%
	"%git%" remote set-url github1 %github_1_path%
)
if "%github_2_path%"=="" (
	"%git%" remote rm github2
) else (
	"%git%" remote add github2 %github_2_path%
	"%git%" remote set-url github2 %github_2_path%
)
if "%github_3_path%"=="" (
	"%git%" remote rm github3
) else (
	"%git%" remote add github3 %github_3_path%
	"%git%" remote set-url github3 %github_3_path%
)

if "%bitbucket_1_path%"=="" (
	"%git%" remote rm bitbucket1
) else (
	"%git%" remote add bitbucket1 %bitbucket_1_path%
	"%git%" remote set-url bitbucket1 %bitbucket_1_path%
)
if "%bitbucket_2_path%"=="" (
	"%git%" remote rm bitbucket2
) else (
	"%git%" remote add bitbucket2 %bitbucket_2_path%
	"%git%" remote set-url bitbucket2 %bitbucket_2_path%
)
if "%bitbucket_3_path%"=="" (
	"%git%" remote rm bitbucket3
) else (
	"%git%" remote add bitbucket3 %bitbucket_3_path%
	"%git%" remote set-url bitbucket3 %bitbucket_3_path%
)

%wait% color 0B
"%git%" remote -v

%wait% wait 30
exit
pause
