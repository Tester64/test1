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
echo "%git%" push github1 [ветка]
rem "%git%" push origin master
"%git%" push gitfile1
echo ----------------------------
rem Переименовываем удаленный репозиторий.
echo "%git%" remote rename github1 github100
echo ----------------------------
%wait% color 08

%wait% wait 30
exit
pause

"c:\Program Files (x86)\Git\cmd\git.exe" clone https://code.google.com/p/chromemilk/
