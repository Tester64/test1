@rem 
@echo off

cd ..

call .git_setup\.git_ini.bat 

rem %wait% colors

echo.
%wait% color 0B
echo Vetki:
%wait% color 0F
rem Список веток. Звездочкой помечена активная. Не помешает дата создания и последней синхронизации.
"%git%" branch
"%git%" branch > %prj_path%\.git_utils\branch_list.txt

rem Активируем ветку "Рабочая"
rem "%git%" checkout "Рабочая"

rem Переименовываем текущую ветку
rem "%git%" branch -m "Рабочая" "VersionOld"

rem пробуем создать?
rem "%git%" branch "Рабочая"

rem "%git%" branch

echo.
%wait% wait 30
