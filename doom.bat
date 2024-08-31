@echo off

chcp 65001 >nul

setlocal enabledelayedexpansion

SET "gz=%~dp0Engine\GzDoom\gzdoom.exe"

:menu
COLOR C
cls
ECHO  1 - Doom - The Way id Did                                         51 - DOOM 2 - Flashback to Hellbound           101 - Masterlevels
ECHO  2 - Doom II - The Way id Did                                      52 - Sigil II                                  102 - Sigil
ECHO  3 - DMP 2014 4v4                                                  53 - Community Chest 3                         103 - No Rest for the Living
ECHO  4 - Hadron                                                        54 - Runaway Train                             104 - Legacy of Rust
ECHO  5 - Hellbound                                                     55 - Threnody                                  105 - Jade Earth
ECHO  6 - Inferno Terror                                                56 - Strain                                    106 - Earth
ECHO  7 - Maps of Chaos Standart (Doom 1)                               57 - Void And Rainbow (NoMod)                  107 - PHOBOS: ANOMALY REBORN
ECHO  8 - Maps of Chaos Standart (Doom 2)                               58 - Ancient Aliens                            108 - Struggle - Antaresian Legacy (NoMod)
ECHO  9 - Memento Mori                                                  59 - TNT: Revilution                           109 - Japanese Community Project
ECHO 10 - Memento Mori 2                                                60 - Miasma                                    110 - The City of The Damned Apocalypse (NoMod)
ECHO 11 - Requiem                                                       61 - Doomsday of UAC                           111 - Maskim Xul (NoMod)
ECHO 12 - Final Doom Plutonia                                           62 - Illuminatus                               112 - Hellcore 2.0
ECHO 13 - Final Doom TnT                                                63 - FBK                                       113 - Going Down
ECHO 14 - Strange Aeons                                                 64 - 1000 Lines 2                              114 - Stardate 20x6
ECHO 15 - Valiant (noMod)                                               65 - 1000 Lines                                115 - The Ultimate Torment and Torture
ECHO 16 - Sunlust                                                       66 - RAY MOHAWK 2                              116 - NOVA II: New Dawn
ECHO 17 - Back to Saturn Episode 1: Get out of my Stations              67 - TNT Goes Boom                             117 - Impossible: A New Reality
ECHO 18 - Back to Saturn Episode 2: Tower in the Fountain of Sparks     68 - Deus Vult                                 118 - Songs of the Damned
ECHO 19 - Death Project                                                 69 - Community Chest 2                         119 - UAC Ultra (v1.2)
ECHO 20 - Simplistic Evil                                               70 - NUTS                                      120 - No End in Sight
ECHO 21 - Hell Revealed 1                                               71 - Void                                      121 - Disturbia
ECHO 22 - Hell Revealed 2                                               72 - The Sky May Be                            122 - Sunder
ECHO 23 - e1m1 Reloaded                                                 73 - Speed of Doom
ECHO 24 - Doom                                                          74 - Eternal of Doom
ECHO 25 - Doom 2                                                        75 - Thunderpeak
ECHO 26 - Eternally                                                     76 - Comatose
ECHO 27 - Hell on Earth                                                 77 - Eternal Doom IV: Return from Oblivion 
ECHO 28 - Eviltech: Soul of a Megawad                                   78 - The Adventure of Square (NoMod)
ECHO 29 - 1994 Tune-up Community Project                                79 - Scythe 2
ECHO 30 - A Doom Odyssey 10th Anniversary Edition                       80 - Wolfenstein 3D (NoMod)
ECHO 31 - ConC.E.R.Ned                                                  81 - Prodoomer v2
ECHO 32 - Dark 7                                                        82 - Final NeoDoom (NoMod)
ECHO 33 - DemonFear                                                     83 - Pirates (NoMod)
ECHO 34 - Alien Vendetta                                                84 - Infinite (NoMod)
ECHO 35 - Armadosia                                                     85 - Hexen (NoMod)
ECHO 36 - Cleimos 2                                                     86 - Hexen Deathkings (NoMod)
ECHO 37 - Dimensions of Time                                            87 - Heretic (NoMod)
ECHO 38 - Caverns of Darkness                                           88 - Urban Brawl: Action DooM 2 (NoMod)
ECHO 39 - Ni'mRoD - IXNAY on the HOMBRE (NoMod)                         89 - Kama Sutra
ECHO 40 - CH Retro Episode                                              90 - The Given
ECHO 41 - Doom 2 Reload                                                 91 - Equinox (NoMod)
ECHO 42 - Epic 2 (NoMod)                                                92 - Scythe
ECHO 43 - H2H-Xmas                                                      93 - Knee-Deep in ZDoom
ECHO 44 - Icarus: Alien Vanguard                                        94 - Deus Vult 2
ECHO 45 - Plutonia: Revisited Community Project                         95 - Sacrament
ECHO 46 - Plutonia 2                                                    96 - ZDoom Community Map Project II
ECHO 47 - The Darkening                                                 97 - Counterattack
ECHO 48 - The Darkening 2                                               98 - Resurgence
ECHO 49 - Whispers of Satan                                             99 - Putrefier
ECHO 50 - No Sleep for the Dead                                        100 - Hell Ground
ECHO.

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
"%gz%" +logfile "logfile.txt" -iwad "%core%" -file "%~dp0Maps\Mod\PB-0_1_0-alpha.pk3" !fileParams!
) ELSE (
"%gz%" +logfile "logfile.txt" -iwad "%core%" -file !fileParams!
)   

goto menu