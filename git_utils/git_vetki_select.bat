@rem 
@echo off

cd ..

call .git_setup.bat

rem %wait% colors

echo.
%wait% color 0B
echo Vetki:
%wait% color 0F
rem ������ �����. ���������� �������� ��������. �� �������� ���� �������� � ��������� �������������.
"%git%" branch
"%git%" branch > %prj_path%\git_utils\branch_list.txt

rem ���������� ����� "�������"
rem "%git%" checkout "�������"

rem ��������������� ������� �����
rem "%git%" branch -m "�������" "VersionOld"

rem ������� �������?
rem "%git%" branch "�������"

rem "%git%" branch

echo.
%wait% wait 30
