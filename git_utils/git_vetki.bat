@rem 
@echo off

cd ..

call .git_setup.bat

rem %wait% colors

echo.
%wait% color 0B
echo Vetki:
%wait% color 0F
rem Список веток. Звездочкой помечена активная. Не помешает дата создания и последней синхронизации.
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

rem Активируем ветку "Рабочая"
rem "%git%" checkout "Рабочая"

rem Переименовываем текущую ветку
rem "%git%" branch -m "Рабочая" "VersionOld"

rem пробуем создать?
rem "%git%" branch "Рабочая"

rem "%git%" branch

echo.
%wait% wait 30
