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
"%git%" remote add github1 git://github.com/paulboone/ticgit.git
"%git%" remote set-url origin git://new.url.here
echo ----------------------------
echo ++++++++++++++++++++++++++++
"%git%" remote -v show -n origin
echo ----------------------------
"%git%" remote -v
echo ----------------------------
rem ������� ��������� ����������� �� ������.
echo .
"%git%" remote rm github1
echo ----------------------------
"%git%" remote -v
echo ----------------------------
rem �������� �������� ���������� �� ����� �� �������� ������������.
echo "%git%" remote show github1
echo ----------------------------
rem ��� ��������� ������ �� �������� ��������
rem ����� �� ���������� �����������, ������� clone ������������� ��������� ���� �������� ����������� ��� ������ origin.
echo "%git%" fetch github1
echo ----------------------------
rem ����� �� ������ ���������� ������ �����������, ��� ���������� ��������� (push) �� � ������� �����������.
echo "%git%" push github1 [�����]
rem "%git%" push origin master
echo ----------------------------
rem ��������������� ��������� �����������.
echo "%git%" remote rename github1 github100
echo ----------------------------
%wait% color 08

%wait% wait 30
exit
pause

"c:\Program Files (x86)\Git\cmd\git.exe" clone https://code.google.com/p/chromemilk/
