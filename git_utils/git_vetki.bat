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
"%git%" branch -v

echo.
%wait% color 0B
echo Vetki2:
%wait% color 0F
"%git%" branch --no-color

echo.
%wait% color 0B
echo Vetki2:
%wait% color 0F
"%git%" branch --merged -v

rem ���������� ����� "�������"
rem "%git%" checkout "�������"

rem ��������������� ������� �����
rem "%git%" branch -m "�������" "VersionOld"

rem ������� �������?
rem "%git%" branch "�������"

rem "%git%" branch

echo.
%wait% wait 30
