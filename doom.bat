@echo off

setlocal enabledelayedexpansion

rem Created by Apenotis
title GzDoom Maps

rem Start Path Direction
SET "gz=%~dp0Engine\GzDoom\gzdoom.exe"
SET "iwad=%~dp0Maps\iWad"
SET "pWad=%~dp0Maps\pWad"

rem Mods
SET "Project=%~dp0Maps\Mod\PB-0_1_0-alpha.pk3" //Project Brutal
SET "brutal=%~dp0Maps\Mod\brutalv21.pk3" //Brutal Doom Mod
SET "dark=%~dp0Maps\Mod\dark\BDBE_v3.38.pk3 %~dp0Maps\Mod\dark\CatsVisorBASE1.10.3.pk3 %~dp0Maps\Mod\dark\CatsVisorC1.10.3.pk3" //Dark Brutal

rem Start Menu List
:MENU
COLOR C
CLS
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
ECHO 17 - Back to Saturn Episode 1: Get out of my Stations              67 - TNT Goes Boom!                            117 - Impossible: A New Reality
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
	set "core=doom2.wad"
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
)

IF "%M%"=="25" (
	set "core=doom2.wad"
	set "mapname=Doom 2"
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
	set "core=doom2.wad"
	set "mapname=Doomsday of UAC"
	set "map=Doomsday\uac_dead.wad"
)

IF "%M%"=="62" (
	set "core=doom2.wad"
	set "mapname=Illuminatus"
	set "map=Illuminatus\illumi.wad"
)

IF "%M%"=="63" (
	set "core=doom2.wad"
	set "mapname=FBK"
	set "map=FBK\FBK_1.wad"
)

IF "%M%"=="64" (
	set "core=doom2.wad"
	set "mapname=1000 Lines 2"
	set "map=1000_Lines\1klinecp2.wad"
	set "file1=1000_Lines\1klinecp2.deh"
)

IF "%M%"=="65" (
	set "core=doom2.wad"
	set "mapname=1000 Lines"
	set "map=1000_Lines\1klinecp.wad"
	set "file1=1000_Lines\1klinecp.deh"
)

IF "%M%"=="66" (
	set "core=doom2.wad"
	set "mapname=RAY MOHAWK 2"
	set "map=RAY_MOHAWK _2\MO2BONUS.wad"
	set "file1=RAY_MOHAWK _2\MOHAWKS2.wad"
	set "file2=RAY_MOHAWK _2\MOHAWKS2.deh"
)

IF "%M%"=="67" (
	set "core=doom2.wad"
	set "mapname=TNT Goes Boom!"
	set "map=TNT_Goes_Boom!\tntgb.wad"
	set "file1=TNT_Goes_Boom!\tntgb_wide.wad"
	set "file2=TNT_Goes_Boom!\tntgb.deh"
)

IF "%M%"=="68" (
	set "core=doom2.wad"
	set "mapname=Deus Vult"
	set "map=Deus_Vult\DV.wad"
)

IF "%M%"=="69" (
	set "core=doom2.wad"
	set "mapname=Communtiy Chest 2"
	set "map=Cchest2\cchest2.wad"
)

IF "%M%"=="70" (
	set "core=doom2.wad"
	set "mapname=NUTS"
	set "map=NUTS\Nuts.wad"
)

IF "%M%"=="71" (
	set "core=doom2.wad"
	set "mapname=Void"
	set "map=Void\Void.wad"
)

IF "%M%"=="72" (
	set "core=doom.wad"
	set "mapname=The Sky May Be"
	set "map=Sky\_SMB417.wad"
	set "file1=Sky\BLESSED.DEH"
)

IF "%M%"=="73" (
	set "core=doom2.wad"
	set "mapname=Speed of Doom"
	set "map=Sod\SODfinal.wad"
)

IF "%M%"=="74" (
	set "core=doom2.wad"
	set "mapname=Eternal Doom"
	set "map=Eternal\ETERNALL.WAD"
)

IF "%M%"=="75" (
	set "core=doom2.wad"
	set "mapname=Thunderpeak"
	set "map=Thunderpeak\ThunPeak.wad"
)

IF "%M%"=="76" (
	set "core=doom2.wad"
	set "mapname=Comatose"
	set "map=Comatose\Comatose.wad"
)

IF "%M%"=="77" (
	set "core=doom2.wad"
	set "mapname=Eternal DOOM IV: Return from Oblivion"
	set "map=Eternal_doom\ed4_rfo1.wad"
)

IF "%M%"=="78" (
	set "core=doom2.wad"
	set "mapname=The Adventure of Square"
	set "map=Square\square1.pk3"
)

IF "%M%"=="79" (
	set "core=doom2.wad"
	set "mapname=Scythe 2"
	set "map=Scythe2\Scythe2.wad"
)

IF "%M%"=="80" (
	set "core=doom2.wad"
	set "mapname=Wolfenstein 3D"
	set "map=Wolfenstein_3D_TC\Wolf3D_Common.pk7"
	set "file1=Wolfenstein_3D_TC\Wolf3D_Resources.pk3"
	set "file2=Wolfenstein_3D_TC\Wolf3D_HighRes.pk7"
	set "Parameter=+exec %~dp0Maps\pwad\Wolfenstein_3D_TC\Wolf3D.cfg"   
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
	set "file3=heretic\heretic_gz.pk3"
	set "file4=heretic\nashgore.pk3"
)

IF "%M%"=="88" (
	set "core=doom2.wad"
	set "mapname=Urban Brawl: Action DooM 2"
	set "map=Action\Action2.wad"
)

IF "%M%"=="89" (
	set "core=doom2.wad"
	set "mapname=Kama Sutra"
	set "map=ksutra\ksutra.wad"
)

IF "%M%"=="90" (
	set "core=doom2.wad"
	set "mapname=The Given"
	set "map=tgiven\TheGiven.wad"
	set "file1=tgiven\TheGivenLD.wad"
)

IF "%M%"=="91" (
	set "core=doom2.wad"
	set "mapname=Equinox"
	set "map=Equinox\Equinox.wad"
)

IF "%M%"=="92" (
	set "core=doom2.wad"
	set "mapname=Scythe"
	set "map=Scythe\Scythe.wad"
)

IF "%M%"=="93" (
	set "core=doom.wad"
	set "mapname=Knee-Deep in ZDoom"
	set "map=kdizd\kdizd_12.pk3"
	set "file1=kdizd\Enable_Item_Rotations.pk3"
	set "file2=kdizd\Disable_Glows.pk3"
)

IF "%M%"=="94" (
	set "core=doom2.wad"
	set "mapname=Deus Vult 2"
	set "map=Deus_Vult\DVII-1i.wad"
	set "file1=Deus_Vult\brightmaps.pk3"
)

IF "%M%"=="95" (
	set "core=doom2.wad"
	set "mapname=Sacrament"
	set "map=Sacrament\Sacrment.wad"
)


IF "%M%"=="96" (
	set "core=doom2.wad"
	set "mapname=ZDoom Community Map Project II"
	set "map=zdcmp2\zdcmp2.pk3"
)

IF "%M%"=="97" (
	set "core=doom2.wad"
	set "mapname=Counteratack"
	set "map=Counteratack\mek-catk.wad"
	set "file1=Counteratack\ca_wsbar.wad"
)

IF "%M%"=="98" (
	set "core=doom2.wad"
	set "mapname=Resurge"
	set "map=Resurge\resurge.wad"
)

IF "%M%"=="99" (
	set "core=doom2.wad"
	set "mapname=Putrefier"
	set "map=Putrefier\ma_put.pk3"
)

IF "%M%"=="100" (
	set "core=doom2.wad"
	set "mapname=Hell Ground"
	set "map=Hell_Ground\hg.wad"
	set "file1=Hell_Ground\hg_lights.pk3"
)

IF "%M%"=="101" (
	set "core=doom2.wad"
	set "mapname=Masterlevel"
	set "map=Masterlevels\Masterlevels.wad"
)

IF "%M%"=="102" (
	set "core=doom.wad"
	set "mapname=Sigil"
	set "map=Sigil\Sigil.wad"
)

IF "%M%"=="103" (
	set "core=doom2.wad"
	set "mapname=No Rest for the Living"
	set "map=Nerve\nerve.wad"
)

IF "%M%"=="104" (
	set "core=doom2.wad"
	set "mapname=Legacy of Rust"
	set "map=lor\id1.wad"
	set "file1=lor\id1-res.wad"
	set "file2=lor\id1-weap.wad"
)

IF "%M%"=="105" (
	set "core=doom2.wad"
	set "mapname=Jade Earth"
	set "map=jadearth\jadearth.wad"
	set "file1=jadearth\jadearth.deh"
)

IF "%M%"=="106" (
	set "core=doom2.wad"
	set "mapname=Earth"
	set "map=Earth\earth.wad"
)

IF "%M%"=="107" (
	set "core=doom.wad"
	set "mapname=PHOBOS: ANOMALY REBORN"
	set "map=Phobos\par.wad"
	set "file1=Phobos\par.deh"
)

IF "%M%"=="108" (
	set "core=doom2.wad"
	set "mapname=Struggle - Antaresian Legacy"
	set "map=Strg\strg.wad"
)

IF "%M%"=="109" (
	set "core=doom2.wad"
	set "mapname=Japanese Community Project"
	set "map=JPCP\JPCP.wad"
	set "file1=JPCP\JPCP_Hud.wad"
)
	
IF "%M%"=="110" (
	set "core=doom2.wad"
	set "mapname=The City of The Damned Apocalypse"
	set "map=Tcotd\tcotd21me.pk3"
)

IF "%M%"=="111" (
	set "core=doom2.wad"
	set "mapname=Maskim Xul"
	set "map=Maskim\MaskimXul.wad"
)

IF "%M%"=="112" (
	set "core=doom2.wad"
	set "mapname=Hellcore 2.0"
	set "map=Hellcore\HC20.wad"
)

IF "%M%"=="113" (
	set "core=doom2.wad"
	set "mapname=Going Down"
	set "map=gd\gd.wad"
)

IF "%M%"=="114" (
	set "core=doom2.wad"
	set "mapname=Stardate 20x6"
	set "map=Stardate\Stardate20x6.wad"
)

IF "%M%"=="115" (
	set "core=doom2.wad"
	set "mapname=The Ultimate Torment and Torture"
	set "map=Tutnt\tutnt-v107.pk3"
)

IF "%M%"=="116" (
	set "core=doom2.wad"
	set "mapname=The Ultimate Torment and Torture"
	set "map=Nova2\Nova2.wad"
)

IF "%M%"=="117" (
	set "core=doom2.wad"
	set "mapname=Impossible: A New Reality"
	set "map=Imposs\imposs.wad"
)

IF "%M%"=="118" (
	set "core=doom2.wad"
	set "mapname=Songs of the Damned"
	set "map=SotD\songs.wad"
	set "file1=SotD\songs.deh"
)

IF "%M%"=="119" (
	set "core=doom2.wad"
	set "mapname=UAC Ultra (v1.2)"
	set "map=UAC\uacultra.wad"
)

IF "%M%"=="120" (
	set "core=doom.wad"
	set "mapname=No End in Sight"
	set "map=Neis\neis.wad"
	set "file1=Neis\neis.deh"
)

IF "%M%"=="121" (
	set "core=doom2.wad"
	set "mapname=Disturbia"
	set "map=Disturbia\Distrbia.wad"
	set "file1=Disturbia\DDDisturbiaV4HMPMax.lmp"
)

IF "%M%"=="122" (
	set "core=doom2.wad"
	set "mapname=Sunder"
	set "map=Sunder\Sunder 2407.wad"
)

IF "%M%"=="122" (
	set "core=doom2.wad"
	set "mapname=Thunderpeak"
	set "map=Thunderpeak\Sunder 2407.wad"
)

IF "%M%"=="r" (
	GOTO MENU
)

rem Start execute
COLOR A
CLS
SET /P useMod=Use Brutal Mod? (y/n):
ECHO Starting %mapname% (%Core%) ...

timeout /t 1 >nul

IF /I "%useMod%"=="y" (
	start /wait "" "%gz%" +logfile "logfile.txt" -iwad "%iWad%\%core%" -file "%~dp0Maps\Mod\PB-0_1_0-alpha.pk3" "%pWad%\%map%" "%pWad%\%file1%" "%pWad%\%file2%" "%pWad%\%file3%" "%pWad%\%file4%" %Parameter% 
) ELSE (
	start /wait "" "%gz%" +logfile "logfile.txt" -iwad "%iWad%\%core%" -file "%pWad%\%map%" "%pWad%\%file1%" "%pWad%\%file2%" "%pWad%\%file3%" "%pWad%\%file4%" %Parameter% 
)

rem Clear Memory
set "core="
set "mapname="
set "map="
set "file1="
set "file2="
set "file3="
set "file3="
set "file4="
set "parameter="

GOTO MENU