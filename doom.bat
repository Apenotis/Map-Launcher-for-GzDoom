@echo off

chcp 65001 >nul

setlocal enabledelayedexpansion

SET "gz=%~dp0Engine\GzDoom\gzdoom.exe"

:menu
COLOR C
cls

Type Maps.txt

echo.
echo Wähle eine Karte (1-%count%):
set /P "M=Wähle eine Karte: "
cls

IF "%M%"=="0" exit /B
IF "%M%"=="r" GOTO menu

set count=0
for /f "skip=1 tokens=1-6 delims=," %%a in (maps.csv) do (
    set /a count+=1
    set "map[!count!]=%%b,%%c,%%d,%%e,%%f"
)

if "%M%"=="" goto menu
if %M% gtr %count% goto menu
for /f "delims=0123456789" %%a in ("%M%") do goto menu

:: Reset variables
set "core="
set "mapname="
set "fileParams="

for /f "tokens=1-6 delims=," %%a in ("!map[%M%]!") do (
    set "core=%%a"
    set "mapname=%%b"
    set "map1=%%c"
    set "map2=%%d"
    set "map3=%%e"
    set "map4=%%f" 
)

set "fileParams="
for %%i in (%map1% %map2% %map3% %map4%) do (
    if "%%i" neq "-" (
        set "fileParams=!fileParams! %%i"
    )
)

COLOR A
CLS
SET /P useMod=Use Brutal Mod? (y/n):

timeout /t 1 >nul

echo Ausgewählte Karte: %mapname%
echo set "core=%core%"
echo set "fileParams=%fileParams%"

IF /I "%useMod%"=="y" (
    echo set "Project Brutality v.0.1.0 Alpha"
    "%gz%" +logfile "logfile.txt" -iwad "%core%" -file "%~dp0Maps\Mod\PB-0_1_0-alpha.pk3" !fileParams!
) ELSE (
    "%gz%" +logfile "logfile.txt" -iwad "%core%" -file !fileParams!
)    

pause
goto menu