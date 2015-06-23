@rem 
@echo off

set wait=d:\Prj_4\Android\Bin\Utils\wait\wait.exe
set git_path=c:\Program Files (x86)\Git\
set git=%git_path%cmd\git.exe
set prj_path=%~d0%~p0

rem %wait% colors


rem "%git%" config
rem pause

rem echo on
rem 
echo repositories:
echo ----------------------------
rem echo on
rem добавь в ssh ключи
rem 
"%git_path%bin\ssh-agent.exe" -s
rem 
"%git_path%bin\ssh-add.exe" "d:\Prj_4\git\git_global\test_1\.git_setup\test1_github1\id_rsa"
rem "%git_path%bin\ssh-add.exe"
rem "%git_path%bin\ssh-add.exe" /?

rem проверь связь к гитхабом
SET run_cmd="%git_path%bin\ssh.exe" -T "git@github.com"
%WAIT% color 6E
echo %run_cmd%
%WAIT% color 07
echo.
%WAIT% color 1E
%run_cmd%
SET ERR=%ERRORLEVEL%
%WAIT% color 07
echo.

if "%ERR%"=="0" (
	%WAIT% color 2A
	echo.
	echo !!! OK !!!
	%WAIT% color 08
	echo.	
) ELSE (
	%WAIT% color CE
	echo.
	echo !!! ERROR !!!
	echo.
	%WAIT% color 07
	echo %run_cmd%
	rem %WAIT% wait 0 %TIME%
	%WAIT% wait 180 %TIME%
	exit
)

%WAIT% wait 31

echo off
echo ----------------------------
pause
exit

echo repositories:
echo ----------------------------
"%git%" remote
echo ----------------------------
"%git%" remote -v
echo ----------------------------
rem получить побольше информации об одном из удалённых репозиториев.
echo "%git%" remote show github1
echo ----------------------------
rem для получения данных ИЗ удалённых проектов
rem Когда вы клонируете репозиторий, команда clone автоматически добавляет этот удалённый репозиторий под именем origin.
echo "%git%" fetch github1
"%git%" fetch gitfile1
echo ----------------------------
rem Когда вы хотите поделиться своими наработками, вам необходимо отправить (push) их в главный репозиторий.
rem echo "%git%" push github1 [ветка]
rem "%git%" push origin master
"%git%" push gitfile1
echo -------------
"%git%" push gitfile1 NewVersion
echo -------------
"%git%" push gitfile1 VersionOld
echo ----------------------------
rem Переименовываем удаленный репозиторий.
echo "%git%" remote rename github1 github100
echo ----------------------------
%wait% color 08

%wait% wait 30
exit
pause

"c:\Program Files (x86)\Git\cmd\git.exe" clone https://code.google.com/p/chromemilk/
