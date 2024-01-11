@echo off
rem Created by Apenotis
title GzDoom Map Selector

rem Start Path Direction
SET "gz=%~dp0\Engine\GzDoom\gzdoom.exe"
SET "iwad=%~dp0\Maps\iWad"
SET "pWad=%~dp0\Maps\pWad"

rem Mods
SET "brutal=%~dp0\Maps\Mod\brutalv21.pk3" //Brutal Doom Mod
SET "Violent=%~dp0\Maps\Mod\Violent\SDMXII_VDoom_v1666.pk3" //Gore Mode

rem Start Menu List
:MENU
COLOR C
CLS
ECHO.
ECHO                                ...............................................
ECHO                                                 Doom Maplist
ECHO                                ...............................................
ECHO.
ECHO    1 - Doom - The Way id Did                                                 26 - Eternally
ECHO    2 - Doom II - The Way id Did                                              27 - Hell on Earth
ECHO    3 - DMP 2014 4v4                                                          28 - Eviltech: Soul of a Megawad
ECHO    4 - Hadron                                                                29 - 1994 Tune-up Community Project
ECHO    5 - Hellbound                                                             30 - A Doom Odyssey 10th Anniversary Edition
ECHO    6 - Inferno Terror                                                        31 - ConC.E.R.Ned
ECHO    7 - Maps of Chaos Standart (Doom 1)                                       32 - Dark 7
ECHO    8 - Maps of Chaos Standart (Doom 2)                                       33 - DemonFear
ECHO    9 - Memento Mori                                                          34 - Alien Vendetta
ECHO   10 - Memento Mori 2                                                        35 - Armadosia
ECHO   11 - Requiem                                                               36 - Cleimos 2
ECHO   12 - Final Doom Plutonia                                                   37 - Dimensions of Time
ECHO   13 - Final Doom TnT                                                        38 - Caverns of Darkness
ECHO   14 - Strange Aeons                                                         39 - Ni'mRoD - IXNAY on the HOMBRE
ECHO   15 - Valiant                                                               40 - CH Retro Episode
ECHO   16 - Sunlust                                                               41 - Doom 2 Reload
ECHO   17 - Back to Saturn Episode 1: Get out of my Stations                      42 - Epic 2
ECHO   18 - Back to Saturn Episode 2: Tower in the Fountain of Sparks             43 - H2H-Xmas
ECHO   19 - Death Project                                                         44 - Icarus: Alien Vanguard
ECHO   20 - Simplistic Evil                                                       45 - Plutonia: Revisited Community Project
ECHO   21 - Hell Revealed 1                                                       46 - Plutonia 2
ECHO   22 - Hell Revealed 2                                                       47 - The Darkening
ECHO   23 - e1m1 Reloaded                                                         48 - The Darkening 2
ECHO   24 - Doom                                                                  49 - Whispers of Satan
ECHO   25 - Doom 2                                                                50 - No Sleep for the Dead
ECHO   51 - DOOM 2 - Flashback to Hellbound                                       52 - Sigil II
ECHO   53 - Community Chest 3                                                     54 - Runaway Train
ECHO   55 - Threnody                                                              56 - Strain
ECHO   57 - No End in Sight                                                       58 - Ancient Aliens
ECHO   59 - TNT: Revilution                                                       60 - Miasma
ECHO   61 - Doomsday of UAC
ECHO.
ECHO   80 - Wolfenstein 3D                                                        85 - Hexen
ECHO   81 - Prodoomer v2                                                          86 - Hexen Deathkings
ECHO   82 - Final NeoDoom                                                         87 - Heretic
ECHO   83 - Pirates
ECHO   84 - Infinite
ECHO.

SET /P M=choose your map :

rem ID start
IF "%M%"=="0" (
    exit /B
)

IF "%M%"=="1" (
    set "core=doom.wad"
    set "mapname=Doom - The Way id Did"
    set "map=DTTW\DTWID.wad"   
)

IF "%M%"=="2" (
    set "core=doom2.wad"
    set "mapname=Doom II - The Way id Did"
    set "map=DTTW\D2TWID.wad"
)

IF "%M%"=="3" (
    set "core=doom2.wad"
    set "mapname=DMP 2014 4v4"
    set "map=DMP\DMP2014v4.wad"
)

IF "%M%"=="4" (
    set "core=doom.wad"
    set "mapname=Hadron"
    set "map=Hadron\Hadron.wad"
)

IF "%M%"=="5" (
    set "core=doom2.wad"
    set "mapname=Hellbound"
    set "map=Hellbound\Hellbnd.wad"
)

IF "%M%"=="6" (
    set "core=doom.wad"
    set "mapname=Inferno Terror"
    set "map=Inferno\inferno-teror.wad"
)

IF "%M%"=="7" (
    set "core=doom.wad"
    set "mapname=Maps of Chaos"
    set "map=Mapchaos\mapsofchaos.wad"
)

IF "%M%"=="8" (
    set "core=doom2.wad"
    set "mapname=Maps of Chaos"
    set "map=Mapchaos\mapsofchaos.wad"
)

IF "%M%"=="9" (
    set "core=doom.wad"
    set "mapname=Memento Mori"
    set "map=Memento\MM.wad"
)

IF "%M%"=="10" (
    set "core=doom2.wad"
    set "mapname=Memento Mori 2"
    set "map=Memento\MM2.wad"
)

IF "%M%"=="11" (
    set "core=doom2.wad"
    set "mapname=Requiem"
    set "map=Requiem\Requiem.wad"
    set "file1=Requiem\REQMUS.WAD"
)

IF "%M%"=="12" (
    set "core=Plutonia.wad"
    set "mapname=Final Doom Plutonia"
)

IF "%M%"=="13" (
    set "core=tnt.wad"
    set "mapname=Final Doom TnT-Evilution"
)

IF "%M%"=="14" (
    set "core=doom2.wad"
    set "mapname=Strange Aeons"
    set "map=Strange\strangeaeonsv38.pk3"
)

IF "%M%"=="15" (
    set "core=doom2.wad"
    set "mapname=Valiant"
    set "map=Valiant\Valiant.wad"
)

IF "%M%"=="16" (
    set "core=doom2.wad"
    set "mapname=Sunlust"
    set "map=Sunlust\Sunlust.wad"
)

IF "%M%"=="17" (
    set "core=doom2.wad"
    set "mapname=Back to Saturn Episode 1: Get out of my Stations"
    set "map=Back_to_Saturn\btsx_e1.wad"
    set "file1=Back_to_Saturn\btsx_e1.deh"
)

IF "%M%"=="18" (
    set "core=doom2.wad"
    set "mapname=Back to Saturn Episode 2: Tower in the Fountain of Sparks"
    set "map=Back_to_Saturn\btsx_e2a.wad"
    set "file1=Back_to_Saturn\btsx_e2b.wad"
    set "file2=Back_to_Saturn\btsx_e2.deh"
)

IF "%M%"=="19" (
    set "core=doom2.wad"
    set "mapname=Death Project"
    set "map=Death_Project\DeathProject.wad"
)

IF "%M%"=="20" (
    set "core=doom2.wad"
    set "mapname=Simplistic Evil"
    set "map=Simplistic_Evil\SE.wad"   
)

IF "%M%"=="21" (
    set "core=doom2.wad"
    set "mapname=Hell Revealed 1"
    set "map=HellRevealed\HR.WAD"
    set "file1=HellRevealed\HRMUS.WAD"  
)

IF "%M%"=="22" (
    set "core=doom2.wad"
    set "mapname=Hell Revealed 2"
    set "map=HellRevealed\hr2final.wad"
)

IF "%M%"=="23" (
    set "core=doom2.wad"
    set "mapname=e1m1 Reloaded"
    set "map=e1m1\Reloaded.wad"
)

IF "%M%"=="24" (
    set "core=doom.wad"
    set "mapname=Doom 1"
    set "parameter=%~dp0\Maps\Mod\Texture\anidoom_3.1.pk3"
)

IF "%M%"=="25" (
    set "core=doom2.wad"
    set "mapname=Doom 2"
    set "parameter=%~dp0\Maps\Mod\Texture\anidoom_3.1.pk3"
)

IF "%M%"=="26" (
    set "core=doom2.wad"
    set "mapname=Eternally"
    set "map=Eternally\Eternally.wad"   
)

IF "%M%"=="27" (
    set "core=doom2.wad"
    set "mapname=Hell on Earth"
    set "map=hellonearth\hellonearthstarterpack.wad"
    set "file1=ExtraTextures.wad"
)

IF "%M%"=="28" (
    set "core=doom2.wad"
    set "mapname=Eviltech: Soul of a Megawad"
    set "map=Eviltech\eviltech.wad"
)

IF "%M%"=="29" (
    set "core=doom2.wad"
    set "mapname=1994 Tune-up Community Project"
    set "map=1994\1994TU.wad"
)

IF "%M%"=="30" (
    set "core=doom.wad"
    set "mapname=A Doom Odyssey 10th Anniversary Edition"
    set "map=2002ad\2002ad10.wad"  
)

IF "%M%"=="31" (
    set "core=doom.wad"
    set "mapname=ConC.E.R.Ned"
    set "map=concern\concern.wad"
)

IF "%M%"=="32" (
    set "core=doom2.wad"
    set "mapname=Dark 7"
    set "map=dark7\dark7.wad"
    set "file1=dark7\dark7.dftl"
)

IF "%M%"=="33" (
    set "core=doom2.wad"
    set "mapname=DemonFear"
    set "map=DemonFear\dmonfear.wad"
)

IF "%M%"=="34" (
    set "core=doom2.wad"
    set "mapname=Alien Vendetta"
    set "map=alienvendetta\av.wad"
    set "file1=alienvendetta\avmovfix.wad"
    set "file2=alienvendetta\av.deh"
)

IF "%M%"=="35" (
    set "core=doom2.wad"
    set "mapname=Armadosia"
    set "map=Armadosia\Armadosia.wad"
)

IF "%M%"=="36" (
    set "core=doom2.wad"
    set "mapname=Cleimos"
    set "map=Cleimos\Cleim20.wad"
)

IF "%M%"=="37" (
    set "core=doom2.wad"
    set "mapname=Dimensions of Time"
    set "map=dot\dot.wad" 
)

IF "%M%"=="38" (
    set "core=doom2.wad"
    set "mapname=Caverns of Darkness"
    set "map=Caverns_of_Darkness\cod.wad"
    set "file1=Caverns_of_Darkness\codlev.wad"
    set "file2=Caverns_of_Darkness\keys.csc"
)

IF "%M%"=="39" (
    set "core=doom2.wad"
    set "mapname=Ni'mRoD - IXNAY on the HOMBRE"
    set "map=nimrod\nimrod.wad" 
)

IF "%M%"=="40" (
    set "core=doom.wad"
    set "mapname=CH Retro Episode"
    set "map=retroeps\retroeps.wad"
)

IF "%M%"=="41" (
    set "core=doom2.wad"
    set "mapname=Doom 2 Reload"
    set "map=d2reload\d2reload.wad" 
)

IF "%M%"=="42" (
    set "core=doom2.wad"
    set "mapname=Epic 2"
    set "map=Epic2\Epic2.wad"
    set "file1=Epic2\Epic2gl.wad"
)

IF "%M%"=="43" (
    set "core=doom2.wad"
    set "mapname=H2H-Xmas"
    set "map=h2xmas\H2H-Xmas.wad"
)

IF "%M%"=="44" (
    set "core=doom2.wad"
    set "mapname=Icarus: Alien Vanguard"
    set "map=icarus\icarus.wad"
)

IF "%M%"=="45" (
    set "core=doom2.wad"
    set "mapname=Plutonia: Revisited Community Project"
    set "map=Plutonia\prcp.wad"
    set "file1=Plutonia\prcp.deh"
)

IF "%M%"=="46" (
    set "core=doom2.wad"
    set "mapname=Plutonia 2"
    set "map=Plutonia2\pl2.wad"
    set "file1=Plutonia2\pl2.deh
)

IF "%M%"=="47" (
    set "core=doom2.wad"
    set "mapname=The Darkening"
    set "map=Darken\darken.wad"
    set "file1=Darken\resource.wad
    set "file2"=Darken\dark.deh"
)

IF "%M%"=="48" (
    set "core=doom2.wad"
    set "mapname=The Darkening 2"
    set "map=Darken2\darken2.wad"
)

IF "%M%"=="49" (
    set "core=doom2.wad"
    set "mapname=Whispers of Satan"
    set "map=wos\wos.wad"
)

IF "%M%"=="50" (
    set "core=doom.wad"
    set "mapname=No Sleep for the Dead"
    set "map=nos4dead\nos4dead.wad"
    set "file1=nos4dead\nos4dead.deh"   
)

IF "%M%"=="51" (
    set "core=doom2.wad"
    set "mapname=DOOM 2 - Flashback to Hell"
    set "map=FTH\fth666.wad"
)

IF "%M%"=="52" (
    set "core=doom.wad"
    set "mapname=Sigil II"
    set "map=Sigil2\SIGIL_II_V1_0.WAD"
)

IF "%M%"=="53" (
    set "core=doom2.wad"
    set "mapname=Community Chest 3"
    set "map=Cchest\cchest3.wad"
    set "file1=Cchest\cchest3.bex"
)

IF "%M%"=="55" (
    set "core=doom2.wad"
    set "mapname=Threnody"
    set "map=formalhaut\thtthren.wad"
)

IF "%M%"=="56" (
    set "core=doom2.wad"
    set "mapname=Strain"
    set "map=strain\strain.wad"
    set "file1=strain\strain.deh"
)

IF "%M%"=="57" (
    set "core=doom2.wad"
    set "mapname=Void And Rainbow"
    set "map=rainbow\RAINBOW(GZD3.2.0).pk3"
)

IF "%M%"=="58" (
    set "core=doom2.wad"
    set "mapname=Ancient Aliens"
    set "map=aliens\aaliens_v1_2.wad"
)

IF "%M%"=="59" (
    set "core=doom2.wad"
    set "mapname=TNT: Revilution"
    set "map=Revilution\tntr.wad"
    set "file1=Revilution\tntr.deh"
)

IF "%M%"=="60" (
    set "core=doom2.wad"
    set "mapname=Miasma"
    set "map=Miasma\miasma.wad"
)

IF "%M%"=="61" (
    set "core=doom.wad"
    set "mapname=Doomsday of UAC"
    set "map=Doomsday\uac_dead.wad"
)


IF "%M%"=="80" (
    set "core=doom2.wad"
    set "mapname=Wolfenstein 3D"
    set "map=Wolfenstein_3D_TC\Wolf3D_Common.pk7"
    set "file1=Wolfenstein_3D_TC\Wolf3D_Resources.pk3"
    set "file2=Wolfenstein_3D_TC\Wolf3D_HighRes.pk7"
    set "Parameter=+exec %~dp0\maps\pwad\Wolfenstein_3D_TC\Wolf3D.cfg"   
)

IF "%M%"=="81" (
    set "core=doom2.wad"
    set "mapname=Prodoomer"
    set "map=Prodoomer\PRODOOMERV2.wad"
)

IF "%M%"=="82" (
    set "core=doom2.wad"
    set "mapname=Final Neo Doom"
    set "map=Finalneodoom\FNeoDoom.pk3"
)

IF "%M%"=="83" (
    set "core=doom2.wad"
    set "mapname=Pirates"
    set "map=Pirates\pirates.wad"
)

IF "%M%"=="84" (
    set "core=doom2.wad"
    set "mapname=Infinite"
    set "map=Infinite\DOOM_Infinite_DEMO_0978_6.pk3"
)

IF "%M%"=="85" (
    set "core=hexen.wad"
    set "mapname=Hexen"
    set "map=hexen\HEXENREMADE.wad"
    set "file1=hexen\h_PBR_v461.pk3"
)

IF "%M%"=="86" (
    set "core=hexen.wad" 
    set "mapname=Hexen Deathkings"
    set "map=hexen_death\hexdd.wad"
    set "file1=hexen\HEXENREMADE.wad"
    set "file2=hexen\h_PBR_v461.pk3"
)

IF "%M%"=="87" (
    set "core=heretic.wad"
    set "mapname=Heretic"
    set "map=heretic\HERETIC_REMADE.wad"
    set "file1=heretic\HERETIC_Relight_Maps.WAD"
    set "file2=heretic\heretic_hd_pbr_hq.pk3"
    set "file3=heretic\MBlur1.04.pk3"
)

rem Start execute
COLOR A
CLS
SET /P useMod=Use Violent Mod? (y/n):
ECHO Starting %mapname% (%Core%) ...

timeout /t 1 >nul

IF /I "%useMod%"=="y" (
    start /wait "" "%gz%" +logfile "logfile.txt" -iwad "%iWad%\%core%" -file "%pWad%\%map%" "%pWad%\%file1%" "%pWad%\%file2%" "%pWad%\%file3%" %Parameter% %Violent%
) ELSE (
    start /wait "" "%gz%" +logfile "logfile.txt" -iwad "%iWad%\%core%" -file "%pWad%\%map%" "%pWad%\%file1%" "%pWad%\%file2%" "%pWad%\%file3%" %Parameter%
)

rem Clear Memory
set "core="
set "mapname="
set "map="
set "file1="
set "file2="
set "file3="
set "file3="
set "parameter="

GOTO MENU