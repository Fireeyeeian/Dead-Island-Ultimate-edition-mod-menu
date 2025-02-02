﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows, On
SetBatchLines, -1
ListLines Off
#KeyHistory 0
#include tf.ahk
#include smartzip.ahk
#include AddTooltip.ahk
#Include gui_msgbox.ahk
;#Include Class_CustomFont.ahk
AddToolTip("AutoPopDelay",32)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;This program installs mods for Dead Island Definitive edition :)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;###########################'`################################
;###########################  V##'############################
;#########################V'  `V  ############################
;########################V'      ,############################
;#########`#############V      ,A###########################V
;########' `###########V      ,###########################V',#
;######V'   ###########l      ,####################V~~~~'',###
;#####V'    ###########l      ##P' ###########V~~'   ,A#######
;#####l      d#########l      V'  ,#######V~'       A#########
;#####l      ##########l         ,####V''         ,###########
;#####l        `V######l        ,###V'   .....;A##############
;#####A,         `######A,     ,##V' ,A#######################
;#######A,        `######A,    #V'  A########'''''##########''
;##########,,,       `####A,           `#''           '''  ,,,
;#############A,                               ,,,     ,######
;######################aoaa,                 ;####, ,#########
;##################P'                   A,   ;#####V##########
;#####P'    ''''       ,###             `#,     `V############
;##P'                ,d###;              ##,       `V#########
;##########A,,   #########A              )##,    ##A,..,ooA###
;#############A, Y#########A,            )####, ,#############
;###############A ############A,        ,###### ##############
;###############################       ,#######V##############
;###############################      ,#######################
;##############################P    ,d########################
;##############################'    d#########################
;##############################     ##########################
;##############################     ##########################
;#############################P     ##########################
;#############################'     ##########################
;############################P      ##########################
;###########################P'     ;##########################
;###########################'     ,###########################
;##########################       ############################
;#########################       ,############################
;########################        d###########P'    `Y#########
;#######################        ,############        #########
;######################        ,#############        #########
;#####################        ,##############b.    ,d#########
;####################        ,################################
;###################         #################################
;##################          #######################P'  `V##P'
;#######P'     `V#           ###################P'
;#####P'                    ,#################P'
;###P'                      d##############P''		
;##P'                       V##############'
;#P'                         `V###########'
;#'                             `V##P'
;
;                                                    -GNN94
;------------------------------------------------
;This ASCII pic can be found at
;https://asciiart.website/index.php?art=plants/trees
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;This program installs mods for Dead Island Definitive edition :) 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;tempDir := "%A_Temp%\@DIDMM_TEMPFILES\" ; Replace with your actual temp directory

;OnExit("Cleanup")


;Cleanup() {
;    global tempDir
;    
;    ; Attempt to delete all temp files and directory
;    if FileExist(tempDir) {
;        FileRemoveDir, tempDir, 1
;        ;FileRemoveDir(tempDir, 1) ; Recursively delete files and directory
;        if FileExist(tempDir) {
;            MsgBox, 16, Cleanup Failed, Temp files could not be deleted.`nPath: %tempDir%
;        } else {
;            MsgBox, 64, Cleanup Successful, All temp files were deleted successfully.
;        }
;    } else {
;        MsgBox, 64, No Temp Files, No temp files found to delete.
;    }
;}


;the above cleanup doesn't work and the below doesn't always work so ill just stick with the og below welp ¯\_(ツ)_/¯



OnExit("ExitFunc")

OnExit(ObjBindMethod(MyObject, "Exiting"))
ExitFunc(ExitReason, ExitCode)
{
	if ExitReason not in Logoff,Shutdown
    {
        ;MsgBox, 64, , script shutting Down?
        ;IfMsgBox, No
         ;   return 1  ; OnExit functions must return non-zero to prevent exit.
    }
    ; Do not call ExitApp -- that would prevent other OnExit functions from being called.
}
	class MyObject
{
    Exiting()
    {
    	SoundPlay, blank.wav
    	SplashTextOn, 400,50,Script Shutdown,Shutting down.....`n(Cleaning up files)
    	;Run,%A_Temp%\survival_extinguisher.ahk,,,
		Process, close,background_music.exe
		Process, close,play_scream_sound_then_quit.exe ;shouldn't be running but whatever
		FileDelete, %A_Temp%\@DIDMM_TEMPFILES\scripts\play_scream_sound_then_quit.exe
		Sleep, 4500
		FileDelete, %A_Temp%\@DIDMM_TEMPFILES\sounds\menu_click.wav
		FileDelete, %A_Temp%\@DIDMM_TEMPFILES\sounds\menu_highlight.wav
		FileDelete, %A_Temp%\@DIDMM_TEMPFILES\sounds\napalm.wav
		FileDelete, %A_Temp%\@DIDMM_TEMPFILES\sounds\scream_final.wav
		Disable_BUTTONS_Function()
		FileRemoveDir, %A_Temp%\@DIDMM_TEMPFILES\, 1
		SplashTextOff
    }
}



SetWorkingDir, %A_ScriptDir%
;setup temp files
FileRemoveDir, %A_Temp%\@DIDMM_TEMPFILES\, 1
FileCreateDir, %A_Temp%\@DIDMM_TEMPFILES\
FileCreateDir, %A_Temp%\@DIDMM_TEMPFILES\loose_files\
FileCreateDir, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\
FileCreateDir, %A_Temp%\@DIDMM_TEMPFILES\sounds\
FileCreateDir, %A_Temp%\@DIDMM_TEMPFILES\scripts\
FileCreateDir, %A_Temp%\@DIDMM_TEMPFILES\fonts\
FileCreateDir, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG
FileCreateDir, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;VvVcode below recovered from overwritten saveVvV;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

FileInstall, Required_files_and_scripts\scripts\survival_extinguisher.exe, %A_Temp%\@survival_extinguisher.exe,1
FileInstall, Required_files_and_scripts\scripts\background_music.exe, %A_Temp%\@DIDMM_TEMPFILES\scripts\background_music.exe,1
;FileInstall, Required_files_and_scripts\scripts\play_scream_sound_then_quit.exe, %A_Temp%\@DIDMM_TEMPFILES\scripts\play_scream_sound_then_quit.exe,1
FileInstall, Required_files_and_scripts\game.ini, %A_Temp%\@DIDMM_TEMPFILES\loose_files\game.ini , 1
FileInstall, Required_files_and_scripts\menumain_pc.xui_version, %A_Temp%\@DIDMM_TEMPFILES\loose_files\menumain_pc.xui , 1
;FileInstall, Required_files_and_scripts\vessel_data.scr.oneshot_zombie, %A_Temp%\@DIDMM_TEMPFILES\loose_files\vessel_data.scr.oneshot_zombie , 1 ;unused?
FileInstall, Required_files_and_scripts\ai_norm.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\ai_norm.zip,1
;FileInstall, Required_files_and_scripts\ai_hard.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\ai_hard.zip,1
;FileInstall, Required_files_and_scripts\ai_Headshot.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\ai_Headshot.zip,1
;FileInstall, Required_files_and_scripts\ai_Onehit.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\ai_Onehit.zip,1
FileInstall, Required_files_and_scripts\PRESETS_LARGE_ZOMSIZE.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\PRESETS_LARGE_ZOMSIZE.zip,1
FileInstall, Required_files_and_scripts\PRESETS_MIDGET_ZOMSIZE.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\PRESETS_MIDGET_ZOMSIZE.zip,1
FileInstall, Required_files_and_scripts\PRESETS_NORM_ZOMSIZE.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\PRESETS_NORM_ZOMSIZE.zip,1
FileInstall, Required_files_and_scripts\PRESETS_SUPASIZE_ZOMSIZE.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\PRESETS_SUPASIZE_ZOMSIZE.zip,1
FileInstall, Required_files_and_scripts\PRESETS_XTRASMOL_ZOMSIZE.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\PRESETS_XTRASMOL_ZOMSIZE.zip,1
FileInstall, Required_files_and_scripts\Force_bloater_spawn.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\Force_bloater_spawn.zip,1
FileInstall, Required_files_and_scripts\force_butcher_spawn.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\force_butcher_spawn.zip,1
FileInstall, Required_files_and_scripts\Force_thug_spawn.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\Force_thug_spawn.zip,1
FileInstall, Required_files_and_scripts\Force_suicide_spawn.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\Force_suicide_spawn.zip,1
FileInstall, Required_files_and_scripts\Force_ram_spawn.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\Force_ram_spawn.zip,1
FileInstall, Required_files_and_scripts\Force_bandits(firearms).zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\Force_bandits(firearms).zip,1
FileInstall, Required_files_and_scripts\Force_bandits(melee).zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\Force_bandits(melee).zip,1
FileInstall, Required_files_and_scripts\Force_bandits_spawn.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\Force_bandits_spawn.zip,1
FileInstall, Required_files_and_scripts\force_ryder_spawns.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\force_ryder_spawns.zip,1
FileInstall, Required_files_and_scripts\force_infected_ryder_white_spawns.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\force_infected_ryder_white_spawns.zip,1
FileInstall, Required_files_and_scripts\Default_spawns.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\Default_spawns.zip,1
FileInstall, Required_files_and_scripts\gameaudioeffects.scr.modded, %A_Temp%\@DIDMM_TEMPFILES\loose_files\gameaudioeffects.scr.modded , 1
FileInstall, Required_files_and_scripts\gameaudioeffects.scr.nomod, %A_Temp%\@DIDMM_TEMPFILES\loose_files\gameaudioeffects.scr.nomod , 1
FileInstall, UI\DIDMM_main.png, %A_Temp%\@DIDMM_TEMPFILES\DIDMM_main.png , 1
FileInstall, UI\SPLASH_SCREENSHOT.png, %A_Temp%\@DIDMM_TEMPFILES\SPLASH_SCREENSHOT.png , 1

FileInstall, Required_files_and_scripts\fonts\BreadIsland-3lRry.ttf, %A_Temp%\@DIDMM_TEMPFILES\fonts\BreadIsland-3lRry.ttf,1
FileInstall, Required_files_and_scripts\fonts\FiraSans-SemiBold.ttf, %A_Temp%\@DIDMM_TEMPFILES\fonts\FiraSans-SemiBold.ttf,1
FileInstall, Required_files_and_scripts\fonts\RonysiswadiArchitect4-qZmp2.ttf, %A_Temp%\@DIDMM_TEMPFILES\fonts\RonysiswadiArchitect4-qZmp2.ttf,1


FileInstall, Data0.pak, %A_Temp%\@DIDMM_TEMPFILES\Data0.zip,1
FileInstall, Data2.pak, %A_Temp%\@DIDMM_TEMPFILES\Data2.zip,1
FileInstall, Required_files_and_scripts\sounds\menu_click.wav, %A_Temp%\@DIDMM_TEMPFILES\sounds\menu_click.wav,1
FileInstall, Required_files_and_scripts\sounds\DI_music.wav, %A_Temp%\@DIDMM_TEMPFILES\sounds\DI_music.wav,1
FileInstall, Required_files_and_scripts\sounds\menu_highlight.wav, %A_Temp%\@DIDMM_TEMPFILES\sounds\menu_highlight.wav,1
FileInstall, Required_files_and_scripts\sounds\scream_final.wav, %A_Temp%\@DIDMM_TEMPFILES\sounds\scream_final.wav,1
FileInstall, Required_files_and_scripts\sounds\napalm.wav, %A_Temp%\@DIDMM_TEMPFILES\sounds\napalm.wav,1
FileInstall, Required_files_and_scripts\Time-weather_vanilla.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\Time-weather_vanilla.zip,1
FileInstall, Required_files_and_scripts\time-weather_Just_night.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\time-weather_Just_night.zip,1
FileInstall, Required_files_and_scripts\time-weather_Just_night_darker.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\time-weather_Just_night_darker.zip,1
FileInstall, Required_files_and_scripts\time-weather_Rain_night.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\time-weather_Rain_night.zip,1
FileInstall, Required_files_and_scripts\time-weather_Rain_day.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\time-weather_Rain_day.zip,1
FileInstall, Required_files_and_scripts\time-weather_Rain_night_darker.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\time-weather_Rain_night_darker.zip,1
FileInstall, Required_files_and_scripts\time-weather_storm_day.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\time-weather_storm_day.zip,1
FileInstall, Required_files_and_scripts\time-weather_storm_night.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\time-weather_storm_night.zip,1
FileInstall, Required_files_and_scripts\time-weather_storm_night_darker.zip, %A_Temp%\@DIDMM_TEMPFILES\loose_files\time-weather_storm_night_darker.zip,1


FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act1a.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act1a.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act2a.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act2a.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act3a.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act3a.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act3b.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act3b.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act3c.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act3c.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act4a.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act4a.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act4b.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act4b.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\buildinginterior.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\buildinginterior.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\cityhallb.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\cityhallb.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\hotel.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\hotel.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\market.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\market.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\parkinglot.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\parkinglot.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\policestation.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\policestation.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\sewers.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\sewers.exp , 1


FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act1a.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act1a.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act2a.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act2a.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3a.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3a.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3b.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3b.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3c.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3c.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4a.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4a.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4b.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4b.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\buildinginterior.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\buildinginterior.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\cityhallb.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\cityhallb.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\hotel.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\hotel.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\market.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\market.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\parkinglot.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\parkinglot.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\policestation.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\policestation.exp , 1
FileInstall, Required_files_and_scripts\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\sewers.exp, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\sewers.exp , 1

;;;;INTRO_LOADING_SPLASHSCREEN;;;;

Gui,99: +AlwaysOnTop +ToolWindow -Caption  ; Creates a GUI that is always on top and has no title bar
Gui,99: Add, Picture, x0 y0 w720 h300, %A_Temp%\@DIDMM_TEMPFILES\SPLASH_SCREENSHOT.png  ; Set your background image
;Gui,99: Add, Text, x50 y50 w200 h50 Center cBlack, LOADING...  ; Add text on top of the background image
Gui,99: Show, w720 h300, Splash Screen  ; Show the GUI with specific width and height


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;@@functions;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Run, %A_Temp%\@DIDMM_TEMPFILES\scripts\play_scream_sound_then_quit.exe,,, ;first launch scream sound
SoundPlay, %A_Temp%\@DIDMM_TEMPFILES\sounds\scream_final.wav

varlist_main=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_main.scr
INV_GEN=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\inventory_gen.scr
INV_spec=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\inventory_special.scr
INV_patch=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\inventory_patch.scr
DLC_shop=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\dlc\shopsdlc1.scr
Def_lev=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\skills\default_levels.xml
INTRO_MOV=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\menu\movies\intromovies.scr
sunglow_scd=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_glow.scd
sunglow_scr=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_glow.scr
def_loot=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\default.loot
Logan_skills=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\skills\logan_skills.xml
Purna_skills=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\skills\purna_skills.xml
Samb_skills=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\skills\samb_skills.xml
Xian_skills=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\skills\xian_skills.xml
John_skills=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\skills\john_skills.xml
cardi_phx=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\odephysics\vehicle\cardi.phx
truckdi_phx=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\odephysics\vehicle\truckdi.phx
oldboat_phx=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\odephysics\vehicle\old_boat_a.phx
inv_scr=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\inventory.scr
var_amb_scd=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scd
var_amb_scr=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scr
var_weather=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\weather\weather.scr
playerdi_pre=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\playerdi.pre
aispawnbox_pre_def=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
odephysicswalkfly=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\odephysics\generic\odephysicswalkfly.phx

vessle_data=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\zombie\vessel_data.scr
vessle_data_custom_0=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\zombie\vessel_data_preset_custom_0.scr
vessle_data_custom_13=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\zombie\vessel_data_preset_custom_13.scr
vessle_data_custom_15=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\zombie\vessel_data_preset_custom_15.scr
vessle_data_custom_16=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\zombie\vessel_data_preset_custom_16.scr
vessle_data_custom_3=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\zombie\vessel_data_preset_custom_3.scr
vessle_data_custom_4=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\zombie\vessel_data_preset_custom_4.scr
vessle_data_custom_5=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\zombie\vessel_data_preset_custom_5.scr

Infected_data=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\infected\infected_data.scr
Infected_data_custom_0=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\infected\infected_data_preset_custom_0.scr
Infected_data_custom_1=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\infected\infected_data_preset_custom_1.scr
Infected_data_custom_2=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\infected\infected_data_preset_custom_2.scr
Infected_data_custom_3=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\infected\infected_data_preset_custom_3.scr
Infected_data_custom_4=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\infected\infected_data_preset_custom_4.scr
Infected_data_custom_5=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\infected\infected_data_preset_custom_5.scr
Infected_data_custom_6=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\infected\infected_data_preset_custom_6.scr
Infected_data_custom_8=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\infected\infected_data_preset_custom_8.scr
Infected_data_custom_9=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai\infected\infected_data_preset_custom_9.scr

;AI_PROP/BEH
AI_BEH=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\aibeh.scr
AI_PROP=!%A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai_props.scr
;-----------------------------------------------------------------------------------
;define fonts here

;intro_font
fontname1 := New CustomFont(A_Temp "\@DIDMM_TEMPFILES\fonts\BreadIsland-3lRry.ttf") ; bread island
;main_font
fontname2 := New CustomFont(A_Temp "\@DIDMM_TEMPFILES\fonts\FiraSans-SemiBold.ttf") ; Fira sans SemiBold
;ERROR_font
fontname3 := New CustomFont(A_Temp "\@DIDMM_TEMPFILES\fonts\RonysiswadiArchitect4-qZmp2.ttf") ;' Ronysiswadi Architect 4

error_font := "' Ronysiswadi Architect 4"
intro_font := "Bread Island"
main_font := "Fira sans SemiBold"
;------------------------------------------------------------------------------------
GetCurrentMonitorIndex(){
	CoordMode, Mouse, Screen
	MouseGetPos, mx, my
	SysGet, monitorsCount, 80

	Loop %monitorsCount%{
		SysGet, monitor, Monitor, %A_Index%
		if (monitorLeft <= mx && mx <= monitorRight && monitorTop <= my && my <= monitorBottom){
			Return A_Index
			}
		}
		Return 1
}

CoordXCenterScreen(WidthOfGUI,ScreenNumber)
{
SysGet, Mon1, Monitor, %ScreenNumber%
	return (( Mon1Right-Mon1Left - WidthOfGUI ) / 2) + Mon1Left
}

CoordYCenterScreen(HeightofGUI,ScreenNumber)
{
SysGet, Mon1, Monitor, %ScreenNumber%
	return (Mon1Bottom - 30 - HeightofGUI ) / 2
}

GetClientSize(hwnd, ByRef w, ByRef h)
{
    VarSetCapacity(rc, 16)
    DllCall("GetClientRect", "uint", hwnd, "uint", &rc)
    w := NumGet(rc, 8, "int")
    h := NumGet(rc, 12, "int")
}


play_click_sound_func(){
SoundPlay, %A_Temp%\@DIDMM_TEMPFILES\sounds\menu_click.wav
}

play_final_sound_func(){
SoundPlay, %A_Temp%\@DIDMM_TEMPFILES\sounds\napalm.wav
}
DisableCloseButton(hWnd) {
hSysMenu:=DllCall("GetSystemMenu","Int",hWnd,"Int",FALSE)
nCnt:=DllCall("GetMenuItemCount","Int",hSysMenu)
DllCall("RemoveMenu","Int",hSysMenu,"UInt",nCnt-1,"Uint","0x400")
DllCall("RemoveMenu","Int",hSysMenu,"UInt",nCnt-2,"Uint","0x400")
DllCall("DrawMenuBar","Int",hWnd)
Return ""
}
EnableCloseButton(hWnd="") {
If hWnd=
hWnd:=WinExist("A")
DllCall("GetSystemMenu","Int",hWnd,"Int",TRUE)
DllCall("DrawMenuBar","Int",hWnd)
Return ""
}

DISABLE_BUTTONS_Function(){
GuiControl,Disable,diff_menu_done_var
GuiControl,Disable,crit_done_button
GuiControl,Disable,WRITE_ZOM_SETTINGS_TO_FILES_button_var
GuiControl,Disable,confirm_chance_fists_var
GuiControl,Disable,restrict_zombie_throwing_var
GuiControl,Disable,zom_diff_MENU_var
GuiControl,Disable,CRIT_CHANCE_MENU_var
GuiControl,Disable,Chromatic_aberration_var
GuiControl,Disable,noclip_player_var
GuiControl,Disable,carry_object_speed_var
GuiControl,Disable,zombie_density_var
GuiControl,Disable,confirm_density_var
GuiControl,Disable,SUBMIT_FINAL
GuiControl,Disable,Even_Deeper_pockets_var
GuiControl,Disable,more_ammo_var
GuiControl,Disable,noclip_truck_var
GuiControl,Disable,better_wep_upgrades_var
GuiControl,Disable,Remove_reverb_sound_var
GuiControl,Disable,better_wep_pov_var
GuiControl,Disable,DDl
GuiControl,Disable,confirm_fov
GuiControl,Disable,user_Deadisland_DIRECTORY
GuiControl,Disable,Recoil_hfov_fix
GuiControl,Disable,Skip_intros_var
GuiControl,Disable,Reduce_sun_var
GuiControl,Disable,Reducesprint_stamina_cost_var
GuiControl,Disable,Jump_stamina_var
GuiControl,Disable,Run_WITH_WEP_VAR
GuiControl,Disable,improved_loot_var
GuiControl,Disable,better_movement_var
GuiControl,Disable,custom_wep_var
GuiControl,Disable,Bullet_pen_var
GuiControl,Disable,Zombie_size_var
GuiControl,Disable,confirm_zom_var
GuiControl,Disable,confirm_zom_size_var
GuiControl,Disable,Zombie_tweaks_var
GuiControl,Disable,NightTime_var
GuiControl,Disable,Zombie_spawn_var
GuiControl,Disable,confirm_zom_spawn_var
GuiControl,Disable,better_durability_var
GuiControl,Disable,Instant_breakdoor_var
GuiControl,Disable,Weather_Override_var
GuiControl,Disable,confirm_Weather_var
GuiControl,Disable,crit_chance_fists_var
GuiControl,Disable,crit_chance_blunt_var
GuiControl,Disable,crit_chance_cut_var
GuiControl,Disable,crit_chance_ranged_var
GuiControl,Disable,crit_chance_bullet_var


}

Enable_BUTTONS_Function(){
GuiControl 3: Enabled,diff_menu_done_var
GuiControl 3: Enabled,WRITE_ZOM_SETTINGS_TO_FILES_button_var
GuiControl 2: Enabled,crit_done_button
GuiControl 3: Enabled,restrict_zombie_throwing_var
GuiControl 1: Enabled,zom_diff_MENU_var
GuiControl 1: Enabled,CRIT_CHANCE_MENU_var
GuiControl 1: Enabled,Chromatic_aberration_var
GuiControl 1: Enabled,noclip_player_var
GuiControl 1: Enabled,carry_object_speed_var
GuiControl 1: Enabled,zombie_density_var
GuiControl 1: Enabled,confirm_density_var
GuiControl 1: Enabled,Weather_Override_var
GuiControl 1: Enabled,confirm_Weather_var
GuiControl 1: Enabled,NightTime_var
GuiControl 1: Enabled,Zombie_spawn_var
GuiControl 1: Enabled,confirm_zom_spawn_var
GuiControl 1: Enabled,better_wep_pov_var
GuiControl 1: Enabled,Instant_breakdoor_var
GuiControl 1: Enabled,Even_Deeper_pockets_var
GuiControl 1: Enabled,more_ammo_var
GuiControl 1: Enabled,noclip_truck_var
GuiControl 1: Enabled,better_wep_upgrades_var
GuiControl 1: Enabled,SUBMIT_FINAL
GuiControl 1: Enabled,Remove_reverb_sound_var
GuiControl 1: show,DI_LOC_TEXT
GuiControl 1: Enabled,Bullet_pen_var
GuiControl 1: Enabled,Recoil_hfov_fix
GuiControl 1: Enabled,Skip_intros_var
GuiControl 1: Enabled,Reduce_sun_var
GuiControl 1: Enabled,Reducesprint_stamina_cost_var
GuiControl 1: Enabled,Jump_stamina_var
GuiControl 1: Enabled,Run_WITH_WEP_VAR
GuiControl 1: Enabled,improved_loot_var
GuiControl 1: Enabled,better_movement_var
GuiControl 1: Enabled,custom_wep_var
GuiControl 1: Enabled,Zombie_size_var
GuiControl 1: Enabled,confirm_zom_var
GuiControl 1: Enabled,confirm_zom_size_var
GuiControl 3: Enabled,Zombie_tweaks_var
GuiControl 1: Enabled,better_durability_var
}

Enable_BUTTONS_Function_only_gui3(){
GuiControl 3: Enabled,diff_menu_done_var
GuiControl 3: Enabled,WRITE_ZOM_SETTINGS_TO_FILES_button_var
GuiControl 3: Enabled,restrict_zombie_throwing_var
GuiControl 3: Enabled,Zombie_tweaks_var
}

Enable_BUTTONS_Function_only_gui2(){
GuiControl 2: Enabled,confirm_chance_fists_var
GuiControl 2: Enabled,crit_done_button
GuiControl 2: Enabled,crit_chance_fists_var
GuiControl 2: Enabled,crit_chance_blunt_var
GuiControl 2: Enabled,crit_chance_cut_var
GuiControl 2: Enabled,crit_chance_ranged_var
GuiControl 2: Enabled,crit_chance_bullet_var


;just need to add gui 2 variables here then add this func to the code blocks

}


CloseSplash(){
    Gui,99: Destroy  ; Destroy the GUI after 3 seconds
}



failed_to_mod(){
	;set_font_Error()
	;MsgBox Error: failed to mod-- shutting down scripts
	CustomMsgBox("ERROR","⚠Error: failed to mod-- shutting down scripts",error_font,"cf22e30 s20 bold","202020")
	;UnloadCustomFont(FontPath)
	ExitApp
}

move_window_gui2(){

	IfWinExist, gui 2
		{
		
			WinGetPos, X1, Y1, , ,A
			X2 := X1 + 390
			Y2 := Y1 +400
			gui,2:show, x%X2% y%Y2%
	
		}
}

move_window_gui3(){

	IfWinExist, gui 3
		{
		
			WinGetPos, X1, Y1, , ,A
			X2 := X1 + 180 
			Y2 := Y1 +400
			gui,3:show, x%X2% y%Y2%
	
		}
}



CheckFiles(Deadisland_dir, files)
{
    Loop, % files.MaxIndex() 
    {
        FilePath := Deadisland_dir . "\" . files[A_Index]
        if (!FileExist(FilePath)) {
            return false 
        }
    }
    return true 
}


CheckDirectory(Deadisland_dir)
{
    
    MainFiles := ["DeadIslandGame.exe", "engine_x64_rwdi.dll", "DI"]
    OGFiles := ["DeadIslandGame.exe", "engine_x86_rwdi.dll", "DI"]
    RipFiles := ["DeadIslandGame_x86_rwdi.exe", "engine_x86_rwdi.dll", "DI"]
    RiptideFiles := ["DeadIslandRiptideGame.exe", "engine_x64_rwdi.dll", "DIR"]

    
    if (CheckFiles(Deadisland_dir, OGFiles)) {
    	CustomMsgBox("ERROR","⚠ You've selected the OG Game.`nThis modmenu doesn't work for`nthe original Dead Island game.",error_font,"cf22e30 s20 bold","202020")
        ;MsgBox, 16, Error, This mod doesn't work for the original Dead Island game.
        return false
    }

    
    if (CheckFiles(Deadisland_dir, MainFiles)) {
    	CustomMsgBox("success","👍Dead island definitive edition directory confirmed! ",main_font,"c6ebc72 s20 bold","202020")
        ;MsgBox, 64, Success, Correct directory selected for Dead Island.
        return true
    }

    
    if (CheckFiles(Deadisland_dir, RipFiles)) {
    	CustomMsgBox("ERROR","⚠ You've selected the OG riptide Game.`nThis modmenu doesn't work for`nthe original Dead Island games.",error_font,"cf22e30 s20 bold","202020")
        ;'MsgBox, 16, Error, This mod doesn't work for the original Dead Island rip game.
        return false
    }

    
    if (CheckFiles(Deadisland_dir, RiptideFiles)) {
    	CustomMsgBox("ERROR","⚠ You've selected Riptide definitive edition.`nThis modmenu doesn't work for`nRiptide definitive,`nBut I do have a menu that works for riptide`non my nexus mods page..",error_font,"cf22e30 s20 bold","202020")
        ;MsgBox, 16, Error, This mod doesn't work with Dead Island Riptide Edition.
        return false
    }

    
    CustomMsgBox("ERROR","⚠ This directory you selected is invalid. It doesn't match any known version.",error_font,"cf22e30 s20 bold","202020")
    ;MsgBox, 16, Error, The directory you selected is invalid. It doesn't match any known version.
    return false
}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;functions/references;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

gui,1: Font, S10 BOLD Normal Cblack , %main_font%
gui,1: Font, S11 BOLD Cblack , %main_font%
gui,1: Add, Picture, x2 y-1 w1000 h570 , %A_Temp%\@DIDMM_TEMPFILES\DIDMM_main.png

gui,1: Add, Button, x655 y220 w95 h45 hWndhButton2 vselect_folder_button gselectfolder_button, SELECT FOLDER
GuiControlGet, SF_HWND, Hwnd, select_folder_button
AddTooltip(SF_HWND,"select Your DIDE folder")

gui,1: Font, S10 BOLD Normal Cblack , %main_font%
gui,1: Font, S7 BOLD Cblack , %main_font%

gui,1: Add, text, x770 y220 w200 h50 vuser_Deadisland_DIRECTORY, [NO FOLDER SELECTED]

gui,1: Font, S10 BOLD Normal Cblack , %main_font%
gui,1: Font, S11 BOLD Cblack , %main_font%

gui,1: Add, CheckBox, x15 y419 w190 h30 vSkip_intros_var gskiptheintros,Skip intro videos
GuiControlGet, SKP_INTRO_HWND, Hwnd, Skip_intros_var
AddTooltip(SKP_INTRO_HWND,"Disables the Intro movies/logos that play when the game starts")

gui,1: Add, CheckBox, x15 y489 w190 h30 vReduce_sun_var greducethesunflare,Reduce sunflare by 90`%
GuiControlGet, SUN_FLARE_HWND, Hwnd, Reduce_sun_var
AddTooltip(SUN_FLARE_HWND,"Increases the transparency of the sun flare texture")

gui,1: Font, S10 BOLD Normal Cblack , %main_font%
gui,1: Font, S10 BOLD Cblack , %main_font%

gui,1: Add, CheckBox, x15 y454 w190 h30 vReducesprint_stamina_cost_var greducethesprintstaminacost,Reduce sprinting stamina cost
GuiControlGet, SPRINT_STAM_HWND, Hwnd, Reducesprint_stamina_cost_var
AddTooltip(SPRINT_STAM_HWND,"Allows you to sprint for a longer duration before exhaustion")

gui,1: Font, S10 BOLD Normal Cblack , %main_font%
gui,1: Font, S8 BOLD Cblack , %main_font%

Fov_list:="62 default||72|82|"
gui,1: Add, DropDownList, x290 y265 w90 h30 vDDL, % Fov_list
GuiControlGet, DDL_HWND, Hwnd, DDL
AddTooltip(DDL_HWND,"FOV stands for Field Of View`nBasically how wide your vision is`nA lower number zooms in the camera, while a higher number zooms out the camera")
gui,1: Add, button, x390 y265 w120 h20 vconfirm_fov gSubmit_fov, Confirm FOV

gui,1: Font, S10 BOLD Cblack , %main_font%

gui,1: Add, button, x862 y14 w120 h110 vSUBMIT_FINAL gSubmit_FINAL, CLICK TO CONFIRM MODIFICATIONS
GuiControlGet, FINAL_HWND, Hwnd, SUBMIT_FINAL
AddTooltip(FINAL_HWND,"Confirm selected mods/changes and write changes to a new Data0.pak")

gui,1: Add, CheckBox, Checked x862 y130 w120 h27 venable_music_var genable_music, Enable music?
GuiControlGet, MUSIC_HWND, Hwnd, enable_music_var
AddTooltip(MUSIC_HWND,"toggles the playing of dead island music while running this application")

;gui,1: Add, CheckBox, x15 y524 w190 h30 vRecoil_hfov_fix gRecoil_hfov_fix,high fov recoil fix
;GuiControlGet, HFOV_HWND, Hwnd, Recoil_hfov_fix
;AddTooltip(HFOV_HWND,"Reduces recoil animations for`n•Shotguns`nThis option can help if you get motion sick easily or have a high field of view")

gui,1: Add, CheckBox, x15 y524 w190 h30 vJump_stamina_var greducejumpstaminacost,Reduce jump stamina cost
GuiControlGet, JUMP_STAM_HWND, Hwnd, Jump_stamina_var
AddTooltip(JUMP_STAM_HWND,"Allows you to jump more times before exhaustion")

gui,1: Add, CheckBox, x210 y489 w190 h30 vRun_WITH_WEP_VAR gEnableRunningwithwep,Enable running w/weapons
GuiControlGet, SPRINT_WEP_HWND, Hwnd, Run_WITH_WEP_VAR
AddTooltip(SPRINT_WEP_HWND,"Keeps weapons in hand visible in hand when sprinting (Firearms might be held weird when running)")

gui,1: Add, CheckBox, x210 y454 w190 h30 vimproved_loot_var gimproved_loot,Improved Loot/Cheat chests
GuiControlGet, LOOT_HWND, Hwnd, improved_loot_var
AddTooltip(LOOT_HWND,"Reduces the amount of ""white"" weapons you get from locked chests and gives option to enable cheat chests`nAlso gives better odds for loot dropped by:`n•Butchers`n•Rams")

gui,1: Add, CheckBox, x210 y419 w190 h30 vbetter_movement_var gmovment_tweaks,better movement tweaks
GuiControlGet, MOVEMENT_HWND, Hwnd, better_movement_var
AddTooltip(MOVEMENT_HWND,"No more sluggish movement, This tweak will make movement feel more responsive")

gui,1: Add, CheckBox, x405 y419 w190 h30 vbetter_wep_pov_var gbetterweppov,Firearms tweaks and fixes
GuiControlGet, WEPPOV_HWND, Hwnd, better_wep_pov_var
AddTooltip(WEPPOV_HWND,"Originally part of my ""Firearms overhaul"" mod`n•Removes blur on weapon sights.`n•Pushes weapons out to more realistic positions.`n•Improves hip-fire holding position of rifles to a more low-right position allowing better field of view.`n•Fixes iron sight and red dot misalignment bug.`n•Fixes most clipping when at a high FOV (Scales with selected FOV).")

gui,1: Add, CheckBox, x210 y524 w190 h30 vcustom_wep_var gadd_weps, add custom weapons
GuiControlGet, CUST_WEP_HWND, Hwnd, custom_wep_var
AddTooltip(CUST_WEP_HWND,"Adds in the following weapons:`n•M72 launcher (With rigged animations)`n•M60 (with rigged animations)`n•Gives the users the option to reskin deo-bomb to look like a beach ball`n•Gives the user the option to add in explosive ammo mod for firearms (With this mod you can make the infamous Explosive crowd-pleaser)`n•Adds in a mod to craft ammo for M72 and M60`n`n•Custom items can be purchased from Wes Tweddle in the areana lobby")

gui,1: Add, CheckBox, x405 y524 w190 h30 vcarry_object_speed_var gcarry_obj_spd, increase carry object speed
GuiControlGet, carry_obj_HWND, Hwnd, carry_object_speed_var
AddTooltip(carry_obj_HWND,"Increases the speed you walk when carrying objects such as juice crates and propane tanks by 50%")


gui,1: Add, CheckBox, x405 y454 w190 h30 vbetter_wep_upgrades_var gbetter_wep_upgrades,better firearms upgrading
GuiControlGet, WEP_UPGRADES_HWND, Hwnd, better_wep_upgrades_var
AddTooltip(WEP_UPGRADES_HWND,"Adds more functionality to the (firearms) weapon upgrade system.`nFirearms stats such as:`n•Reload speed`n•How fast it will fire`n•Recoil impulse`nWill get better with every upgrade you apply to the firearm.`n`nPLEASE NOTE: ONLY THE AUTOMATIC RELOAD SPEED IS AFFECTED (this is due to how dead island handles weapons generation its kinda out of my hands.`nJust know that the reload speed will be default if you hit the reload key manually) ")

gui,1: Font, S8 BOLD Cblack , %main_font%

gui,1: Add, CheckBox, x405 y489 w190 h30 vRemove_reverb_sound_var gremovereverb,Remove the weird reverb/echo sound (You know the one)
GuiControlGet, REVERB_HWND, Hwnd, Remove_reverb_sound_var
AddTooltip(REVERB_HWND,"If you know you know, I find the reverb sound to be jarring and it takes me out of the game`nIf you are not familiar with this sound its most prominent when shooting a firearm")

gui,1: Font, S10 BOLD Cblack , %main_font%

gui,1: Add, CheckBox, x600 y419 w190 h30 vEven_Deeper_pockets_var gdeeper_pockets,Even Deeper pockets
GuiControlGet, DP_HWND, Hwnd, Even_Deeper_pockets_var
AddTooltip(DP_HWND,"Buffs the Deeper pockets skill`nGives more inventory slots per upgrade of the ""Deeper pockets skill""(max 30)`nPLEASE NOTE: If you are not starting a new play through (new character) then make sure you haven't got any of the ""Deeper pockets"" skills unlocked yet or this will not work properly")

gui,1: Add, CheckBox, x795 y419 w190 h30 vnoclip_truck_var gnoclip_truck,NoClip vehicles
GuiControlGet, NOCLP_HWND, Hwnd, noclip_truck_var
AddTooltip(NOCLP_HWND,"Makes it so that you can drive through objects with the trucks")

gui,1: Add, CheckBox, x795 y454 w190 h30 vnoclip_player_var gnoclip_player,NoClip player
GuiControlGet, NOCLP_player_HWND, Hwnd, noclip_player_var
AddTooltip(NOCLP_player_HWND,"This will allow you to walk through objects")

gui,1: Add, CheckBox, x600 y454 w190 h30 vmore_ammo_var gMore_ammo ,Hold more ammo
GuiControlGet, AMMO_HWND, Hwnd, more_ammo_var
AddTooltip(AMMO_HWND,"Allows you character to carry more ammo`n•Max pistol ammo= 200`n•Max rifle ammo= 150`n•max shotgun ammo= 90")

gui,1: Add, CheckBox, x795 y489 w190 h30 vInstant_breakdoor_var gInstant_breakdoor,Instantly break doors
GuiControlGet, breakdoor_HWND, Hwnd, Instant_breakdoor_var
AddTooltip(breakdoor_HWND,"Makes the break door mini-game pretty much an instant break every time")

gui,1: Add, CheckBox, x795 y524 w190 h30 vChromatic_aberration_var gChromatic_aberration,Disable chromatic aberration
GuiControlGet, Chromatic_aberration_HWND, Hwnd, Chromatic_aberration_var
AddTooltip(Chromatic_aberration_HWND,"Disables Chromatic aberration")

gui,1: Add, CheckBox, x600 y524 w190 h30 vbetter_durability_var gbetter_durability,Increase wep durability
GuiControlGet, durab_HWND, Hwnd, better_durability_var
AddTooltip(durab_HWND,"Changes durability loss from 1.0 durability loss to -2.0")

gui,1: Add, CheckBox, x600 y489 w190 h30 vBullet_pen_var gBullet_pen,Enable Bullet penetration (for enemies)
GuiControlGet, BP_HWND, Hwnd, Bullet_pen_var
AddTooltip(BP_HWND,"enables bullet penetration for zombies`n 98% chance to shoot through zombies and get collaterals")

zom_size_list:="Extra small|small ""Midget"" zombies|normal size zombies||large zombies|Supersize zombies|"
gui,1: Add, DropDownList, x600 y345 w170 h200 vZombie_size_var, % zom_size_list
GuiControlGet, ZOM_size_HWND, Hwnd, Zombie_size_var
AddTooltip(ZOM_size_HWND,"Confirm zombie size")
gui,1: Add, button, x774 y345 w140 h21 vconfirm_zom_size_var gSubmit_zombies_size,Confirm zombie size
GuiControlGet, confirm_zom_size_HWND, Hwnd, confirm_zom_size_var
AddTooltip(confirm_zom_size_HWND,"Confirm zombie size")

weather_Override_list:="Default(vanilla)||just night|Rain(day)|Rain(night)|Storm(day)|Storm(night)|Just night(Darker)|Rain(Darker night)|Storm(Darker night)"
gui,1: Add, DropDownList, x22 y345 w170 h200 vWeather_Override_var, % weather_Override_list
GuiControlGet, Weather_Override_HWND, Hwnd, Weather_Override_var
AddTooltip(Weather_Override_HWND,"Force a specific weather/time")
gui,1: Add, button, x195 y345 w120 h21 vconfirm_Weather_var gSubmit_Weather,set weather/time
GuiControlGet, confirm_Weather_HWND, Hwnd, confirm_Weather_var
AddTooltip(confirm_Weather_HWND,"Confirm weather/time")

zombie_density_list:="100%(vanilla)||200% density|400% density|600% density|800% density|1000% density|2000% density|4000% density|6000% density"
gui,1: Add, DropDownList, x335 y345 w113 h200 vzombie_density_var, % zombie_density_list
GuiControlGet, zombie_density_HWND, Hwnd, zombie_density_var
AddTooltip(zombie_density_HWND,"Increases the amount of zombies that spawn`n200%=2X")
gui,1: Add, button, x452 y345 w130 h21 vconfirm_density_var gSubmit_density,set zombie density
GuiControlGet, confirm_density_var_HWND, Hwnd, confirm_density_var
AddTooltip(confirm_density_var_HWND,"Confirm density`n(200%=2X)")

gui,1: Add, button, x390 y375 w150 h23 vCRIT_CHANCE_MENU_var gCRIT_CHANCE_MENU,open crit chance menu
GuiControlGet, crit_menu_HWND, Hwnd, CRIT_CHANCE_MENU_var
AddTooltip(crit_menu_HWND,"change crit chance for various conditions")

;zom_list:="Normal zombies||One hit kill zombies|hard zombies|Headshot only zombies|"
;gui,1: Add, DropDownList, x180 y372 w170 h200 vZombie_tweaks_var, % zom_list
;GuiControlGet, ZOM_HWND, Hwnd, Zombie_tweaks_var
;AddTooltip(ZOM_HWND,"Select zombie difficulty")
;gui,1: Add, button, x360 y372 w120 h21 vconfirm_zom_var gSubmit_zombies,Confirm zombies
gui,1: Add, button, x180 y375 w200 h23 vzom_diff_MENU_var gzom_diff_MENU,Open zombie difficulty menu
GuiControlGet, diff_menu_HWND, Hwnd, zom_diff_MENU_var
AddTooltip(diff_menu_HWND,"Select zombie difficulty and allow/disallow zombies to throw weapons")

zom_spawn_list:="Normal spawns||Butchers|Rams|Bloaters|Thugs|Suiciders|bandits(Firearms)|bandits(melee)|bandits|Infected Ryder|"
gui,1: Add, DropDownList, x560 y375 w120 h200 vZombie_spawn_var, % zom_spawn_list
GuiControlGet, ZOM_spawn_HWND, Hwnd, Zombie_spawn_var
AddTooltip(ZOM_spawn_HWND,"force a specific zombie to spawn")
gui,1: Add, button, x684 y375 w125 h21 vconfirm_zom_spawn_var gSubmit_zombies_spawn,Confirm override
GuiControlGet, confirm_zom_spawn_HWND, Hwnd, confirm_zom_spawn_var
AddTooltip(confirm_zom_spawn_HWND,"Confirm spawn setting")


gui,1: Font, S13 BOLD CYellow, %main_font%
gui,1: Add, Text, x22 y165 w950 h59 +BackgroundTrans, -Tip: hover mouse over options to get more info
gui,1: Font, CYellow,
gui,1: Font, S16 Cwhite Bold Underline, %main_font%
gui,1: Add, Text, x22 y185 w5500 h30 +BackgroundTrans, 1. Please verify the game files/preform a clean install of "DeadIsland Definitive Edition"
gui,1: Add, Text, x22 y225 w5500 h30 +BackgroundTrans, 2. Please select the location that your game is installed to>
gui,1: Add, Text, x22 y260 w5500 h30 +BackgroundTrans, 3. Select preferred FOV:
gui,1: Font, S10 BOLD Normal Cblack , %main_font%
gui,1: Font, S12 BOLD Cwhite , %main_font%
gui,1: Add, Text, x25 y290 w1000 h90 +BackgroundTrans, -Please note: At a higher fov than 62 some weapon clipping might occur but "Firearms tweaks and fixes" can fix this.
gui,1: Font, S20 Cyellow Bold Underline, %main_font%
gui,1: Font, S24 CRed Bold Underline, %main_font%
gui,1: Add, Text, x22 y305 w950 h50 +BackgroundTrans, 4. Select which modifications you would like to install below:
gui,1: Font, S10 BOLD Normal Cblack , %main_font%
gui,1: Font, CYellow
;;;;;;;;;;;;;;;;;;;;;;;;VERSION NUMBER;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CloseSplash()
gui,1: Add, Text, x750 y64 w100 h30 +BackgroundTrans,Version 3.1 ;REMEMBER TO UPDATE VERSION XML FOR MAIN MENU
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DISABLE_BUTTONS_Function()
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;---------GET CENTER OF CURRENT MONITOR---------
	;get current monitor index
	CurrentMonitorIndex:=GetCurrentMonitorIndex()
	;get Hwnd of current GUI
	DetectHiddenWindows On
	gui,1: +LastFound
	gui,1:Show, x127 y87 h600 w1010 Hide ;added old dimensions so size is correct when calculated later
	GUI_Hwnd := WinExist()
	;Calculate size of GUI
	GetClientSize(GUI_Hwnd,GUI_Width,GUI_Height)
	DetectHiddenWindows Off
	;Calculate where the GUI should be positioned
	GUI_X:=CoordXCenterScreen(GUI_Width,CurrentMonitorIndex)
	GUI_Y:=CoordYCenterScreen(GUI_Height,CurrentMonitorIndex)
;------- / GET CENTER OF CURRENT MONITOR--------- 
;SHOW GUI AT CENTER OF CURRENT SCREEN
gui,1: Show, % "x" GUI_X " y" GUI_Y, Dead_Island_Definitive_mod_menu_by_FireEyeEian
GuiControl, Disable,select_folder_button
;Run,%A_Temp%\@overseer.ahk,,, ;fuck overseer all my homies use survival_extinguisher.exe
Run,%A_Temp%\@survival_extinguisher.exe,,,
;Sleep, 1092 ;to sync up end of scream sound with click sound
;Gosub, enable_music
;Goto, First_start ;enable this for release!! <<<<-----\--\--\--\--\---------------------<<<<<<<<<<<<<     enable this
;CustomMsgBox("Welcome message","Thank you for downloading and using my  mod menu for Dead Island definitive edition!`nThis menu is the way I set up my Playthroughs.`n`nI also have a version for Dead island Riptide definitive edition and I want to eventually`n port these to the OG versions of the games.`n`nIf you encounter any bugs please report them on the mods nexus page in the Bugs tab, thank you`n`nAfter making my Firearms overhaul mod, I got many requests for features to add,`nSo I made this menu to let people create the experience they wanted in dead island.`n(kind of a way to teach myself programming as well)`nAnd with that I'm proud to announce Dead island Definitive mod menu`n`nI write these mods in my free time and I'd like to give a huge thank you to everyone`nwho enjoys them, It means a lot!.`nIf you enjoy this mod don't forget to track for updates and endorse.", "info", intro_font, "cf22e30 s17 bold", "202020", 64)
Run, %A_Temp%\@DIDMM_TEMPFILES\scripts\background_music.exe
CustomMsgBox("Welcome message","Thank you for downloading and using my  mod menu for Dead Island definitive edition!`nThis menu is the way I set up my Playthroughs.`n`nI also have a version for Dead island Riptide definitive edition and I want to eventually`n port these to the OG versions of the games.`n`nIf you encounter any bugs please report them on the mods nexus page in the Bugs tab, thank you.`n`n•The source code is available on GitHub if you want to view/compile the source code`n (Link to it is at the bottom of the mods page on nexus mods`n`nAfter making my Firearms overhaul mod, I got many requests for features to add,`nSo I made this menu to let people create the experience they wanted in dead island.`n(kind of a way to teach myself programming as well)`nAnd with that I'm proud to announce Dead island Definitive mod menu`n`nI write these mods in my free time and I'd like to give a huge thank you to everyone`nwho enjoys them, It means a lot!.`nIf you enjoy this mod don't forget to track for updates and endorse.",intro_font,"c6ebc72 s20 bold","202020")
GuiControl, enabled,select_folder_button
Return


GuiClose:
ExitApp
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;^^some code above recovered from overwritten save^^;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

!del::ExitApp,
;;;;;;;;;;;;;;;;;;DI_CHECK;;;;;;;;;;;;;;;;;;;DI_CHECK;;;;;;;;;;;;;;;;;;DI_CHECK;;;;;;;;;;;;;;;;;;;DI_CHECK;;;;;;;;;;;;;;;;;;DI_CHECK;;;;;;;;;;;;;;;;;;;DI_CHECK;;;;;;;;;;;;;;;;;;DI_CHECK;;;;;;;;;;;;;;;;;;;DI_CHECK
selectfolder_button:
Deadisland_dir :=
;MsgBox %Deadisland_dir%
play_click_sound_func()
;FileSelectFolder, Deadisland_dir,E:\SteamLibrary\steamapps\common\DIDE, 1, PLease select the folder containing your "DeadIslandGame.exe" `n It should be called "DIDE" `n (This is where you installed the game) ;for testing
;FileSelectFolder, Deadisland_dir,, 1, PLease select the folder containing your "DeadIslandGame.exe" `n It should be called "DIDE" `n (This is where you installed the game) ;use this one for release version.
;SetWorkingDir, %Deadisland_dir%
;FileDelete, %A_Temp%\@DIDMM_TEMPFILES\data ;don't really need this I don't think so but it doesn't seem to hurt things.

Loop {
    ; Open FileSelectFolder and store selected directory
    ;FileSelectFolder, Deadisland_dir, , 3, Select the Dead Island game folder.
	FileSelectFolder, Deadisland_dir,E:\SteamLibrary\steamapps\common\DIDE, 1, PLease select the folder containing your "DeadIslandGame.exe" `n It should be called "DIDE" `n (This is where you installed the game) ;for testing

    
    ; If the user cancels the folder selection, stop the loop and show a message
    if (Deadisland_dir = "") {
        ;MsgBox, 48, Warning, No folder selected. Closing the folder select dialog.
        CustomMsgBox("ERROR","⚠ No folder selected.",error_font,"cf22e30 s20 bold","202020")
        break ; Exit the loop and close the dialog
    }
    
    ; Change the working directory
    SetWorkingDir, %Deadisland_dir%
    
    ; Check the selected directory
    if (CheckDirectory(Deadisland_dir)) {
        ;MsgBox, 64, Success, Directory is valid.
        Goto, AFTER_DIR_CONFIRMED
        break ; Exit the loop if the directory is correct
    }
    ; If the directory is not valid, continue asking for the correct directory
}
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;DIR_CHECK

AFTER_DIR_CONFIRMED:
GuiControl, , [NO FOLDER SELECTED] ,%Deadisland_dir%,
gui,1:Color, green ,%Deadisland_dir%,
SetWorkingDir %Deadisland_dir%/DI
if FileExist("Data0.pak")
Goto, Data0_present
else
	CustomMsgBox("ERROR","⚠ please make sure game is installed correctly!`n Currently missing: Data0.pak`n`nPlease Verify game files or reinstall game",error_font,"cf22e30 s20 bold","202020")
	;MsgBox, please make sure game is installed correctly!`n Currently missing: Data0.pak`n`nPlease Verify game files or reinstall game
	return
Data0_present:
goto,SETUP_TEMPORARY_ENVIRONMENT
;goto,check_data2_first_run
return



;////////////////////////////DATA2.pak checking is unnecessary because when needed it will be overwritten



;check_data2_first_run:
;SetWorkingDir %Deadisland_dir%/DI
;if FileExist("Data2.pak")
;Goto, Data2_present_first_run
;else
;CustomMsgBox("ERROR","⚠ please make sure game is installed correctly!`n Currently missing: Data2.pak`n`nPlease Verify game files or reinstall game",error_font,"cf22e30 s20 bold","202020")
;return

;Data2_present_first_run:
;SetWorkingDir %Deadisland_dir%/DI
;FileDelete, Data2.pak
;Goto, data2_deleted_first_run
;return

;data2_deleted_first_run:
;SetWorkingDir %Deadisland_dir%/DI
;if FileExist("Data2.pak")
;Goto, somethings_wrong_first_run
;else
;Goto, data2_confirmed_deleted
;	return
;somethings_wrong_first_run:
;CustomMsgBox("ERROR","⚠ Unable to delete data2.pak. modding failed -please make sure game is installed correctly!`n Currently missing: Data2.pak`n`nPlease Verify game files or reinstall game",error_font,"cf22e30 s20 bold","202020")
;return

;data2_confirmed_deleted:
;FileCopy, %A_Temp%\@DIDMM_TEMPFILES\Data2.zip, %Deadisland_dir%\DI\Data2.pak ,1
;Goto, doublecheck_data2_after_copy
;return

;doublecheck_data2_after_copy:
;SetWorkingDir %Deadisland_dir%/DI
;if FileExist("Data2.pak")
;Goto, SETUP_TEMPORARY_ENVIRONMENT
;else
;CustomMsgBox("ERROR","⚠ Error copying files.`n`nError location: 'doublecheck_data2_after_copy'`n",error_font,"cf22e30 s20 bold","202020")
;return

;///////////////////////////////////////////////////

SETUP_TEMPORARY_ENVIRONMENT:
SetWorkingDir %Deadisland_dir%/DI ;I feel better with this here ;I was going to remove this but tbh I do feel safer leaving this here.. I mean what is it hurting...
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,UN-PACKING PROGRAM,Please wait... `nUNzipping Data0.pak`nNOTE: This could take up to 3 minutes (You should see a copy progress dialogue pop up) `nIf you have a slow hard drive this might take longer.`n if you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES ;Yup, I know....
		SmartZip("Data0.zip", "EXTRACTED_DATA0", "UpdateProgress")
SplashTextOn, 700,105,UN-PACKING PROGRAM,Please wait... `nUNzipping Data2.pak`nNOTE: This could take up to 3 minutes (You should see a copy progress dialogue pop up) `nIf you have a slow hard drive this might take longer.`n if you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
		SmartZip("Data2.zip", "EXTRACTED_DATA2", "UpdateProgress")
		Goto, check__temp_copy
check__temp_copy:
if FileExist("Data0.zip")
	goto, yes_data0_in_temp
;YES THIS WAS ALSO HACKY BUT...if it works...
else
	CustomMsgBox("ERROR","⚠ error checking temp copy.`n`nError location: 'check__temp_copy'",error_font,"cf22e30 s20 bold","202020")
	;MsgBox,8240,ERROR?, you shouldnt be seeing this error...`nData pak failed to copy?? maybe restart application and try again. if issue persists contact developer..
return
yes_data0_in_temp:
	SetWorkingDir %Deadisland_dir%/DI ;again.. imma set it back... just to be safe...ya know?, right?
;RunWait, %A_Temp%\@DIDMM_TEMPFILES\Data0_unzipper.exse,,Hide, Runwait_Unzip_OutputVar ;depreciated
SplashTextOff
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\game.ini
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\game.ini, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\game.ini
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\menu\scr\menumain_pc.xui
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\menumain_pc.xui, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\menu\scr\menumain_pc.xui
;TF_ReplaceLine(gameini,"10",10,"GameName(""Dead Island - Definitive Edition, modded by FireEyeEian"");")
;TF_ReplaceInLines(gameini,"15","","//","") ;encoding issue, probably can be solved through some tf.ahk thing but whatever, instead copy pre-made file to datapak
;TF_ReplaceInLines(gameini,"15","","0","1")
;TF_ReplaceLine(DLC_shop,"12 ",12,"	ColorItem(""Melee_AxeUniversalGen"", 1, 4, 1)")
CustomMsgBox("playing with friends?","⚠NOTICE: If you plan to play Co-op: `nIt is recommended that all players have the same Data0.pak (same mods)`n`nIf only one player has a mod enabled then only that player can use the mod if that makes sense.`n`nThings like FOV, skip intro, player movement tweaks, running w/weapons, stamina based mods,`nand other mods that only affect your character should be safe to not have the same.`nbut bigger ones like zombie spawning/settings, weather settings, `nfirearms overhaul, and custom weapons might cause issues.`nYou could experiment and see what works and what doesn't, but I have not done this, so it's untested.)",main_font,"c6ebc72 s20 bold","202020")
;ustomMsgBox("ERROR","⚠NOTICE: If you plan to play Co-op: It is highly recomended that all players have the same Data0.pak (same mods)`n`nIf only one player has a mod enabled then only that player can use the mod if that makes sense.`n`nThings like fov, skip intro, running w/ weapons, and other simple player mods should technically be ok to not`nhave the same but bigger ones like zombie spawning/settings, weather settings, firearms overhaul, and custom weapons might cause issues`n`n•The source code is available on GitHub if you want to view/compile the source code (Link to it is at the bottom of the mods page on nexus mods)","error",main_font,"cf22e30 s20 bold","202020")
;MsgBox,4160,NOTICE,•If you plan to play Co-op: It is highly recomended that all players have the same Data0.pak (same mods)`nIf only one player has a mod enabled then only that player can use the mod if that makes sense.`nThings like fov, skip intro, running w/ weapons, and other simple player mods should technically be ok to not have the same but bigger ones like zombie spawning/settings, weather settings, firearms overhaul, and custom weapons might cause issues`n`n•The source code is avalable on github if you want to view/compile the source code (Link to it is at the bottom of the mods page on nexus mods)
;MsgBox,4160,NOTICE,Please note:`nIt is highly recomended to start a new`nplaythrough (new character ) to use some of theses mods but it is not required ;removed because only one or two require this
GuiControl, enable,confirm_fov
GuiControl, enabled,DDL
GuiControl, Disable,select_folder_button
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

enable_music:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,enable_music_var
IfEqual, enable_music_var, 1
goto, playmusic_yes
IfEqual,enable_music_var,0
goto, playmusic_no
    Goto, playmusic_yes
return
playmusic_yes:
Run, %A_Temp%\@DIDMM_TEMPFILES\scripts\background_music.exe
return

playmusic_no:
Process, close,background_music.exe
return

carry_obj_spd:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,carry_object_speed_var
IfEqual, carry_object_speed_var, 1
goto, carry_object_speed_yes
IfEqual,carry_object_speed_var,0
goto, carry_object_speed_no
carry_object_speed_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"52",52,"	<prop n=""MoveWhenCarryMaxSpeedFactor"" v=""1.05""/>	<!--  Modified by FireEyeEian-->")
TF_ReplaceLine(Def_lev,"53",53,"	<prop n=""MoveWhenCarryMinSpeedFactor"" v=""0.3""/>	<!--  Modified by FireEyeEian-->")
SplashTextOff
CustomMsgBox("carry speed option","➤max carry speed increased by 50`% (1.05)`n➤min carry speed increased by 50`% (0.3)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,carry speed option,➤max carry speed increased by 50`% (1.05)`n➤min carry speed increased by 50`% (0.3),
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Enable_BUTTONS_Function()
return
carry_object_speed_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"52",52,"	<prop n=""MoveWhenCarryMaxSpeedFactor"" v=""0.7""/>	<!-- This is the default value //Modified_by_FireEyeEian-->")
TF_ReplaceLine(Def_lev,"53",53,"	<prop n=""MoveWhenCarryMinSpeedFactor"" v=""0.2""/>	<!-- This is the default value //Modified_by_FireEyeEian-->")
SplashTextOff
CustomMsgBox("carry speed option","➤max carry speed set to default (0.7)`n➤min carry speed set to default (0.2)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,carry speed option,➤max carry speed set to default (0.7)`n➤min carry speed set to default (0.2),
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return


Submit_density:
play_click_sound_func()
CustomMsgBox("NOTICE","Just a heads up: There seems to be sort of a hard limit to how many zombies can be on screen at one time, `nso the larger numbers might not be fully representative to how many zombies will spawn.",main_font,"c6ebc72 s20 bold","202020")

;SetWorkingDir %Deadisland_dir%/DI
;if FileExist("Data2.pak")
;Goto, Data2_present
;else
;CustomMsgBox("error","⚠ data2 not present.`nTHIS SHOULDNT BE AN ISSUE BUT TRY VERIFYING FILES and RE MODDING IF YOU HAVE ISSUES.",error_font,"c6ebc72 s20 bold","202020")
;Goto, Continue_density_1
;return

;Data2_present:
;SetWorkingDir %Deadisland_dir%/DI
;FileDelete, Data2.pak
;Goto, data2_deleted
;return

;data2_deleted:
;SetWorkingDir %Deadisland_dir%/DI
;if FileExist("Data2.pak")
;Goto, somethings_wrong
;else
Goto, Continue_density_1
	return
;somethings_wrong:
;CustomMsgBox("Error","⚠Unable to delete data2.pak. modding failed",error_font,"cf22e30 s20 bold","202020")
;failed_to_mod()
;return
Continue_density_1:
gui,1: Submit, NoHide
If (zombie_density_var = "100%(vanilla)")
	Goto,submit_Vanilla_density

If (zombie_density_var = "200% density")
	Goto,submit_200_density

If (zombie_density_var = "400% density")
	Goto,submit_400_density

If (zombie_density_var = "600% density")
	Goto,submit_600_density

If (zombie_density_var = "800% density")
	Goto,submit_800_density

If (zombie_density_var = "1000% density")
	Goto,submit_1000_density

If (zombie_density_var = "2000% density")
	Goto,submit_2000_density

If (zombie_density_var = "4000% density")
	Goto,submit_4000_density

If (zombie_density_var = "6000% density")
	Goto,submit_6000_density


submit_Vanilla_density:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
TF_ReplaceLine(AI_PROP,"4 ",4,"	ZombieDensityMod(10);")
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act1a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act1a\act1a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act2a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act2a\act2a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act3a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3a\act3a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act3b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3b\act3b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act3c.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3c\act3c.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act4a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4a\act4a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\act4b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4b\act4b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\buildinginterior.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\buildinginterior\buildinginterior.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\cityhallb.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\cityhallb\cityhallb.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\hotel.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\hotel\hotel.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\market.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\market\market.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\parkinglot.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\parkinglot\parkinglot.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\policestation.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\policestation\policestation.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\VANILLA_OG\sewers.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\sewers\sewers.exp , 1
SplashTextOff
CustomMsgBox("zombie density","➤Density set to 100`% vanilla (default)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Density, ➤"Density set to 100`% vanilla (default)",
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_200_density:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
TF_ReplaceLine(AI_PROP,"4 ",4,"	ZombieDensityMod(20);")
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act1a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act1a\act1a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act2a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act2a\act2a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3a\act3a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3b\act3b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3c.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3c\act3c.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4a\act4a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4b\act4b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\buildinginterior.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\buildinginterior\buildinginterior.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\cityhallb.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\cityhallb\cityhallb.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\hotel.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\hotel\hotel.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\market.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\market\market.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\parkinglot.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\parkinglot\parkinglot.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\policestation.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\policestation\policestation.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\sewers.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\sewers\sewers.exp , 1
SplashTextOff
CustomMsgBox("zombie density","➤Density set to 200`% `nPlease note: this is a little janky and untested throughout the whole game.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Density, ➤Density set to "200`%" `nPlease note: this is a little janky and untested throughout the whole game ,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_400_density:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
TF_ReplaceLine(AI_PROP,"4 ",4,"	ZombieDensityMod(40);")
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act1a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act1a\act1a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act2a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act2a\act2a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3a\act3a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3b\act3b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3c.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3c\act3c.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4a\act4a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4b\act4b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\buildinginterior.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\buildinginterior\buildinginterior.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\cityhallb.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\cityhallb\cityhallb.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\hotel.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\hotel\hotel.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\market.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\market\market.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\parkinglot.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\parkinglot\parkinglot.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\policestation.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\policestation\policestation.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\sewers.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\sewers\sewers.exp , 1
SplashTextOff
CustomMsgBox("zombie density","➤Density set to 400`% `nPlease note: this is a little janky and untested throughout the whole game",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Density, ➤Density set to "400`%" `nPlease note: this is a little janky and untested throughout the whole game,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_600_density:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
TF_ReplaceLine(AI_PROP,"4 ",4,"	ZombieDensityMod(60);")
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act1a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act1a\act1a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act2a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act2a\act2a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3a\act3a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3b\act3b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3c.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3c\act3c.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4a\act4a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4b\act4b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\buildinginterior.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\buildinginterior\buildinginterior.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\cityhallb.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\cityhallb\cityhallb.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\hotel.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\hotel\hotel.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\market.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\market\market.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\parkinglot.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\parkinglot\parkinglot.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\policestation.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\policestation\policestation.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\sewers.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\sewers\sewers.exp , 1
SplashTextOff
CustomMsgBox("zombie density","➤Density set to 600`% `nPlease note: this is a little janky and untested throughout the whole game",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Density, ➤Density set to "600`%" `nPlease note: this is a little janky and untested throughout the whole game,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_800_density:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
TF_ReplaceLine(AI_PROP,"4 ",4,"	ZombieDensityMod(80);")
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act1a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act1a\act1a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act2a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act2a\act2a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3a\act3a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3b\act3b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3c.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3c\act3c.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4a\act4a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4b\act4b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\buildinginterior.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\buildinginterior\buildinginterior.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\cityhallb.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\cityhallb\cityhallb.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\hotel.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\hotel\hotel.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\market.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\market\market.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\parkinglot.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\parkinglot\parkinglot.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\policestation.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\policestation\policestation.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\sewers.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\sewers\sewers.exp , 1
SplashTextOff
CustomMsgBox("zombie density","➤Density set to 400`% `nPlease note: this is a little janky and untested throughout the whole game",main_font,"c6ebc72 s20 bold","202020")
;sgBox, 4160, Density, ➤Density set to "800`%" `nPlease note: this is a little janky and untested throughout the whole game,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_1000_density:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
TF_ReplaceLine(AI_PROP,"4 ",4,"	ZombieDensityMod(100);")
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act1a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act1a\act1a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act2a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act2a\act2a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3a\act3a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3b\act3b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3c.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3c\act3c.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4a\act4a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4b\act4b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\buildinginterior.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\buildinginterior\buildinginterior.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\cityhallb.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\cityhallb\cityhallb.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\hotel.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\hotel\hotel.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\market.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\market\market.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\parkinglot.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\parkinglot\parkinglot.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\policestation.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\policestation\policestation.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\sewers.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\sewers\sewers.exp , 1
SplashTextOff
CustomMsgBox("zombie density","➤Density set to 1000`% `nPlease note: this is a little janky and untested throughout the whole game",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Density, ➤Density set to "1000`%" `nPlease note: this is a little janky and untested throughout the whole game,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_2000_density:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
TF_ReplaceLine(AI_PROP,"4 ",4,"	ZombieDensityMod(200);")
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act1a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act1a\act1a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act2a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act2a\act2a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3a\act3a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3b\act3b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3c.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3c\act3c.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4a\act4a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4b\act4b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\buildinginterior.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\buildinginterior\buildinginterior.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\cityhallb.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\cityhallb\cityhallb.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\hotel.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\hotel\hotel.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\market.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\market\market.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\parkinglot.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\parkinglot\parkinglot.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\policestation.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\policestation\policestation.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\sewers.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\sewers\sewers.exp , 1
SplashTextOff
CustomMsgBox("zombie density","➤Density set to 2000`% `nPlease note: this is a little janky and untested throughout the whole game",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Density, ➤Density set to "2000`%" `nPlease note: this is a little janky and untested throughout the whole game,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_4000_density:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
TF_ReplaceLine(AI_PROP,"4 ",4,"	ZombieDensityMod(400);")
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act1a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act1a\act1a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act2a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act2a\act2a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3a\act3a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3b\act3b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3c.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3c\act3c.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4a\act4a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4b\act4b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\buildinginterior.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\buildinginterior\buildinginterior.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\cityhallb.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\cityhallb\cityhallb.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\hotel.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\hotel\hotel.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\market.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\market\market.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\parkinglot.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\parkinglot\parkinglot.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\policestation.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\policestation\policestation.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\sewers.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\sewers\sewers.exp , 1
SplashTextOff
CustomMsgBox("zombie density","➤Density set to 4000`% `nPlease note: this is a little janky and untested throughout the whole game",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Density, ➤Density set to "4000`%" `nPlease note: this is a little janky and untested throughout the whole game,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_6000_density:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
TF_ReplaceLine(AI_PROP,"4 ",4,"	ZombieDensityMod(600);")
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act1a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act1a\act1a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act2a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act2a\act2a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3a\act3a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3b\act3b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act3c.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act3c\act3c.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4a.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4a\act4a.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\act4b.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\act4b\act4b.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\buildinginterior.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\buildinginterior\buildinginterior.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\cityhallb.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\cityhallb\cityhallb.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\hotel.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\hotel\hotel.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\market.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\market\market.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\parkinglot.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\parkinglot\parkinglot.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\policestation.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\policestation\policestation.exp , 1
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\FILES_FOR_INCREASED_ZOM_DENSITY\PATCHED\sewers.exp, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA2\data\maps\sewers\sewers.exp , 1
SplashTextOff
CustomMsgBox("zombie density","➤Density set to 6000`% `nPlease note: this is a little janky and untested throughout the whole game",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Density, ➤Density set to "6000`%" `nPlease note: this is a little janky and untested throughout the whole game,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return




Submit_Weather:
play_click_sound_func()
gui,1: Submit, NoHide
If (weather_override_var = "Default(vanilla)")
	Goto,submit_Vanilla_weather

If (weather_override_var = "just night")
	Goto,submit_just_night_weather

If (weather_override_var = "Rain(day)")
	Goto,submit_Rain_day_weather

If (weather_override_var = "Rain(night)")
	Goto,submit_Rain_night_weather

If (weather_override_var = "Storm(day)")
	Goto,submit_Storm_day_weather

If (weather_override_var = "Storm(night)")
	Goto,submit_Storm_night_weather

If (weather_override_var = "Just night(Darker)")
	Goto,submit_Just_night_Darker_weather

If (weather_override_var = "Rain(Darker night)")
	Goto,submit_Rain_darker_weather

If (weather_override_var = "Storm(Darker night)")
	Goto,submit_storm_Darker_weather
return


submit_Vanilla_weather:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\weather\weather.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scd
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\logic_script.scr
SmartZip("loose_files\Time-weather_vanilla.zip", "EXTRACTED_DATA0\data")
SplashTextOff
CustomMsgBox("time/weather","➤Time/Weather set to vanilla (default)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, timeweather, ➤Time/Weather set to vanilla (default),
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_just_night_weather:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\weather\weather.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scd
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\logic_script.scr
SmartZip("loose_files\time-weather_Just_night.zip", "EXTRACTED_DATA0\data")
SplashTextOff
CustomMsgBox("time/weather","➤Time/Weather set to Night",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, timeweather, ➤Time/Weather set to Night,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_Rain_day_weather:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\weather\weather.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scd
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\logic_script.scr
SmartZip("loose_files\time-weather_Rain_day.zip", "EXTRACTED_DATA0\data")
SplashTextOff
CustomMsgBox("time/weather","➤Time/Weather set to Rainy day`n`nNote: for unknown reasons weather sounds might not play",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, timeweather, ➤Time/Weather set to Rainy day`n`nNote: for unknown reasons weather sounds might not play,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_Rain_night_weather:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\weather\weather.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scd
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\logic_script.scr
SmartZip("loose_files\time-weather_Rain_night.zip", "EXTRACTED_DATA0\data")
SplashTextOff
CustomMsgBox("time/weather","➤Time/Weather set to Rainy night`n`nNote: for unknown reasons weather sounds might not play",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, timeweather, ➤Time/Weather set to Rainy night`n`nNote: for unknown reasons weather sounds might not play,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_Storm_day_weather:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\weather\weather.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scd
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\logic_script.scr
SmartZip("loose_files\time-weather_storm_day.zip", "EXTRACTED_DATA0\data")
SplashTextOff
CustomMsgBox("time/weather","➤Time/Weather set to Stormy day`n`nNote: for unknown reasons weather sounds might not play",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, timeweather, ➤Time/Weather set to Stormy day`n`nNote: for unknown reasons weather sounds might not play,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_Storm_night_weather:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\weather\weather.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scd
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\logic_script.scr
SmartZip("loose_files\time-weather_storm_night.zip", "EXTRACTED_DATA0\data")
SplashTextOff
CustomMsgBox("time/weather","➤Time/Weather set to Stormy night`n`nNote: for unknown reasons weather sounds might not play",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, timeweather, ➤Time/Weather set to Stormy night`n`nNote: for unknown reasons weather sounds might not play,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_Just_night_Darker_weather:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\weather\weather.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scd
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\logic_script.scr
SmartZip("loose_files\time-weather_Just_night_darker.zip", "EXTRACTED_DATA0\data")
SplashTextOff
CustomMsgBox("time/weather","➤Time/Weather set to Dark night",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, timeweather, ➤Time/Weather set to Dark night,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_Rain_darker_weather:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\weather\weather.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scd
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\logic_script.scr
SmartZip("loose_files\time-weather_Rain_night_darker.zip", "EXTRACTED_DATA0\data")
SplashTextOff
CustomMsgBox("time/weather","➤Time/Weather set to Dark rainy night`n`nNote: for unknown reasons weather sounds might not play",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, timeweather, ➤Time/Weather set to Dark rainy night`n`nNote: for unknown reasons weather sounds might not play,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_storm_Darker_weather:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\weather\weather.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scd
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scr
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\scripts\logic_script.scr
SmartZip("loose_files\time-weather_storm_night_darker.zip", "EXTRACTED_DATA0\data")
SplashTextOff
CustomMsgBox("time/weather","➤Time/Weather set to Dark stormy night`n`nNote: for unknown reasons weather sounds might not play",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, timeweather, ➤Time/Weather set to Dark stormy night`n`nNote: for unknown reasons weather sounds might not play,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return



Submit_zombies_spawn:
play_click_sound_func()
gui,1: Submit, NoHide
If (Zombie_spawn_var = "Normal spawns")
Goto,submit_norm_zom_spawn
If (Zombie_spawn_var = "Butchers")
Goto,submit_Butcher_zom_spawn
If (Zombie_spawn_var = "Rams")
Goto,submit_Ram_zom_spawn
If (Zombie_spawn_var = "Bloaters")
Goto,submit_Bloater_zom_spawn
If (Zombie_spawn_var = "Thugs")
Goto,submit_Thug_zom_spawn
If (Zombie_spawn_var = "Suiciders")
Goto,submit_suicide_zom_spawn
If (Zombie_spawn_var = "bandits(Firearms)")
Goto,submit_bandit_gun_zom_spawn
If (Zombie_spawn_var = "bandits(melee)")
Goto,submit_bandit_no_guns_zom_spawn
If (Zombie_spawn_var = "bandits")
Goto,submit_bandit_both_zom_spawn
If (Zombie_spawn_var = "Infected Ryder")
Goto,submit_infected_ryder_zom_spawn
return

submit_infected_ryder_zom_spawn:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SmartZip("loose_files\force_infected_ryder_white_spawns.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("zombie preset","➤Zombies spawns set to INFECTED RYDER WHITE`nPlease note that the full game has not been testing using these option and such may cause weird things",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Zombies spawns set to INFECTED RYDER WHITE,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_norm_zom_spawn:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SmartZip("loose_files\Default_spawns.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("zombie preset","➤Zombies spawns set to Normal (default)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Zombies spawns set to Normal (default),
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_Butcher_zom_spawn:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SmartZip("loose_files\force_butcher_spawn.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("zombie preset","➤Spawn overide set to ""Butchers""`n(May god have mercy on you) `nPlease note that the full game has not been testing using these option and such may cause weird things",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Spawn overide set to ""Butchers""`n(May god have mercy on you) `nPlease note that the full game has not been testing using these option and such may cause weird things`,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_Ram_zom_spawn:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SmartZip("loose_files\Force_ram_spawn.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("zombie preset","➤Spawn overide set to ""Rammers"" `nPlease note that the full game has not been testing using these option and such may cause weird things",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Spawn overide set to ""Rammers"" `nPlease note that the full game has not been testing using these option and such may cause weird things`,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_Bloater_zom_spawn:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SmartZip("loose_files\Force_bloater_spawn.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("zombie preset","➤Spawn overide set to ""Bloaters"" `nPlease note that the full game has not been testing using these option and such may cause weird things",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Spawn overide set to ""Bloaters"" `nPlease note that the full game has not been testing using these option and such may cause weird things`,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_bandit_both_zom_spawn:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SmartZip("loose_files\Force_bandits_spawn.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("zombie preset","➤Spawn overide set to ""Bandits"" `nPlease note that the full game has not been testing using these option and such may cause weird things",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Spawn overide set to ""Bandits"" `nPlease note that the full game has not been testing using these option and such may cause weird things`,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_bandit_gun_zom_spawn:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SmartZip("loose_files\Force_bandits(firearms).zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("zombie preset","➤Spawn overide set to ""Bandits(firearms)"" `nPlease note that the full game has not been testing using these option and such may cause weird things",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Spawn overide set to ""Bandits(firearms)"" `nPlease note that the full game has not been testing using these option and such may cause weird things`,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_bandit_no_guns_zom_spawn:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SmartZip("loose_files\Force_bandits(melee).zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("zombie preset","➤Spawn overide set to ""Bandits(Melee)"" `nPlease note that the full game has not been testing using these option and such may cause weird things",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Spawn overide set to ""Bandits(Melee)"" `nPlease note that the full game has not been testing using these option and such may cause weird things`,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_Thug_zom_spawn:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SmartZip("loose_files\Force_thug_spawn.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("zombie preset","➤Spawn overide set to ""Thugs"" `nPlease note that the full game has not been testing using these option and such may cause weird things",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Spawn overide set to ""Thugs"" `nPlease note that the full game has not been testing using these option and such may cause weird things`,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_suicide_zom_spawn:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SmartZip("loose_files\Force_suicide_spawn.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("zombie preset","➤Spawn overide set to ""Suiciders""`nNote: They really like to explode...`nPlease note that the full game has not been testing using these option and such may cause weird things",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Spawn overide set to ""Suiciders""`nNote: They really like to explode...`nPlease note that the full game has not been testing using these option and such may cause weird things`,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

Chromatic_aberration:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,Chromatic_aberration_var
IfEqual, Chromatic_aberration_var, 1
goto, Chromatic_aberration_yes
IfEqual,Chromatic_aberration_var,0
goto, Chromatic_aberration_no
Chromatic_aberration_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(varlist_main,"128",128,"VarFloat(""f_pp_chromatic_aberration_scale"", 0.0) //Default_value")
SplashTextOff
CustomMsgBox("Chromatic aberration","➤Chromatic aberration disabled",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,ca option,➤Chromatic aberration disabled,
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Enable_BUTTONS_Function()
return
Chromatic_aberration_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(varlist_main,"128",128,"VarFloat(""f_pp_chromatic_aberration_scale"", 1.0) //Default_value")
SplashTextOff
CustomMsgBox("Chromatic aberration","➤Chromatic aberration enabled",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,ca option,➤Chromatic aberration enabled,
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return



Submit_zombies_size:
play_click_sound_func()
gui,1: Submit, NoHide
If (Zombie_size_var = "Extra small")
Goto,submit_extrasmallzom
If (Zombie_size_var = "small ""Midget"" zombies")
Goto,submit_MIDGETZOM
If (Zombie_size_var = "normal size zombies")
Goto,submit_NORMSIZEZOM
If (Zombie_size_var = "large zombies")
Goto,submit_LARGESIZEZOM
If (Zombie_size_var = "Supersize zombies")
Goto,submit_SUPASIZEZOM
return
submit_NORMSIZEZOM:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai.pre
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai_pre.def
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai.pre
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai_pre.def
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
SmartZip("loose_files\PRESETS_NORM_ZOMSIZE.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("Zombie size","➤Zombies size set to Normal (default)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Zombies size set to Normal (default),
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return
submit_extrasmallzom:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai.pre
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai_pre.def
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai.pre
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai_pre.def
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
SmartZip("loose_files\PRESETS_XTRASMOL_ZOMSIZE.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("Zombie size","➤Zombies size set to extra small",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Zombies size set to extra small,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return
submit_MIDGETZOM:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai.pre
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai_pre.def
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai.pre
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai_pre.def
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
SmartZip("loose_files\PRESETS_MIDGET_ZOMSIZE.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("Zombie size","➤Zombies size set to midget",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Zombies size set to midget,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return
submit_LARGESIZEZOM:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai.pre
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai_pre.def
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai.pre
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai_pre.def
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
SmartZip("loose_files\PRESETS_LARGE_ZOMSIZE.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("Zombie size","➤Zombies size set to large",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Zombies size set to large,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return
submit_SUPASIZEZOM:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai.pre
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai_pre.def
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai.pre
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai_pre.def
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
SmartZip("loose_files\PRESETS_SUPASIZE_ZOMSIZE.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
CustomMsgBox("Zombie size","➤Zombies size set to supersize",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, ZOMBIE SIZE, ➤Zombies size set to Supersize,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

Submit_fov:
play_click_sound_func()
Enable_BUTTONS_Function()
gui,1: Submit, NoHide
If (ddl = "62 default")
    Goto,fov_set_62 
If (ddl = "72")
	Goto,fov_set_72
If (ddl = "82")
	Goto,fov_set_82
return

fov_set_62:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"61",61,"	<prop n=""CameraDefaultFOV"" v=""62.5""/>	<!--  This is the default value //Modified_by_FireEyeEian-->")
SplashTextOff
CustomMsgBox("fov","➤FOV set to 62.5 (default)`n`nPlease note: I highly recommend enabling ""Firearms tweaks and fixes"" and ""Better firearms upgrading"" `nas they fix bugs with firearms and make upgrading even more usefull.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, FOV CHANGE, ➤FOV set to 62.5 (default)`n`nPlease note: I highly recomended enabling ""Firearms tweaks and fixes"" and ""Better firearms upgrading"" as they fix bugs with firearms and make upgrading even more usefull.,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

fov_set_72:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"61",61,"	<prop n=""CameraDefaultFOV"" v=""72""/>	<!--  Modified by FireEyeEian-->")
;shotguns_recoilfov_fix
	;Shotgun_shortgen
	TF_ReplaceLine(INV_GEN,"17303",17303,"        ShootVertRecoil(0.06);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17347",17347,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17377",17377,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17407",17407,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17437",17437,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;Shotgun_gen
	TF_ReplaceLine(INV_GEN,"17485",17485,"        ShootVertRecoil(0.06);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17535",17535,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17564",17564,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17593",17593,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17622",17622,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;Shotgun_bgen
	TF_ReplaceLine(INV_GEN,"17669",17669,"        ShootVertRecoil(0.06);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17719",17719,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17748",17748,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17777",17777,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17806",17806,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;Shotgun_cgen
	TF_ReplaceLine(INV_GEN,"17853",17853,"        ShootVertRecoil(0.06);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17903",17903,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17932",17932,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17961",17961,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17990",17990,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;Shotgun_dGen
	TF_ReplaceLine(INV_GEN,"18037",18037,"        ShootVertRecoil(0.06);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18087",18087,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18116",18116,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18145",18145,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18174",18174,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;Shotgun_EGen
	TF_ReplaceLine(INV_GEN,"18221",18221,"        ShootVertRecoil(0.06);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18271",18271,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18300",18300,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18329",18329,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18358",18358,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;Shotgun_FGen
	TF_ReplaceLine(INV_GEN,"18405",18405,"        ShootVertRecoil(0.06);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18455",18455,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18484",18484,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18513",18513,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18542",18542,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;leg_crowd_pleaser
	TF_ReplaceLine(INV_GEN,"20684",20684,"        ShootVertRecoil(0.06);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"20730",20730,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"20761",20761,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"20792",20792,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"20823",20823,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
;pistols-recoilfov_fix
;deag_hipfire_recoilfov_fix
	TF_ReplaceLine(INV_GEN,"17095",17095,"        ShootVertRecoil(0.015); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"21238",21238,"        ShootVertRecoil(0.02); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"21275",21275,"        ShootVertRecoil(0.02); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"21312",21312,"        ShootVertRecoil(0.02); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"21349",21349,"        ShootVertRecoil(0.02); //Modified_by_FireEyeEian --fov_EDIT")s
;MAG_hipfire_recoilfov_fix
	TF_ReplaceLine(INV_GEN,"16674",16674,"        ShootVertRecoil(0.017); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"20802",20802,"        ShootVertRecoil(0.01); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"20839",20839,"        ShootVertRecoil(0.01); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"20876",20876,"        ShootVertRecoil(0.01); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"20914",20914,"        ShootVertRecoil(0.01); //Modified_by_FireEyeEian --fov_EDIT")
;m9_hipfire_recoilfov_fix
	TF_ReplaceLine(INV_GEN,"16884",16884,"        ShootVertRecoil(0.015); //Modified_by_FireEyeEian --fov_EDIT")
;mcalls_hipfire_recoilfov_fix
	TF_ReplaceLine(INV_GEN,"20474",20474,"        ShootVertRecoil(0.015); //Modified_by_FireEyeEian --fov_EDIT")
SplashTextOff
CustomMsgBox("fov","➤FOV changed to 72 (+10)`n➤Pistol & shotgun +Recoil scaled to fov`n`nPlease note: I highly recommend enabling ""Firearms tweaks and fixes"" and ""Better firearms upgrading"" `nas they fix bugs with firearms and make upgrading even more usefull.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, FOV CHANGE, ➤FOV changed to 72 (+10)`n➤Pistol & shotgun +Recoil scaled to fov`n`nPlease note: I highly recomended enabling ""Firearms tweaks and fixes"" and ""Better firearms upgrading"" as they fix bugs with firearms and make upgrading even more usefull.,
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

fov_set_82:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"61",61,"	<prop n=""CameraDefaultFOV"" v=""82""/>	<!--  Modified by FireEyeEian-->")
;shotguns_recoilfov_fix
	;Shotgun_shortgen
	TF_ReplaceLine(INV_GEN,"17303",17303,"        ShootVertRecoil(0.033);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17347",17347,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17377",17377,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17407",17407,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17437",17437,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;Shotgun_gen
	TF_ReplaceLine(INV_GEN,"17485",17485,"        ShootVertRecoil(0.033);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17535",17535,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17564",17564,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17593",17593,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17622",17622,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;Shotgun_bgen
	TF_ReplaceLine(INV_GEN,"17669",17669,"        ShootVertRecoil(0.033);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17719",17719,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17748",17748,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17777",17777,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17806",17806,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;Shotgun_cgen
	TF_ReplaceLine(INV_GEN,"17853",17853,"        ShootVertRecoil(0.033);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17903",17903,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17932",17932,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17961",17961,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"17990",17990,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;Shotgun_dGen
	TF_ReplaceLine(INV_GEN,"18037",18037,"        ShootVertRecoil(0.033);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18087",18087,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18116",18116,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18145",18145,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18174",18174,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;Shotgun_EGen
	TF_ReplaceLine(INV_GEN,"18221",18221,"        ShootVertRecoil(0.033);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18271",18271,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18300",18300,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18329",18329,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18358",18358,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;Shotgun_FGen
	TF_ReplaceLine(INV_GEN,"18405",18405,"        ShootVertRecoil(0.033);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18455",18455,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18484",18484,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18513",18513,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"18542",18542,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
	;leg_crowd_pleaser
	TF_ReplaceLine(INV_GEN,"20684",20684,"        ShootVertRecoil(0.033);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"20730",20730,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"20761",20761,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"20792",20792,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
		TF_ReplaceLine(INV_GEN,"20823",20823,"        ShootVertRecoil(0.14);       //Modified_by_FireEyeEian --fov_EDIT")
;pistols-recoilfov_fix
;deag_hipfire_recoilfov_fix
	TF_ReplaceLine(INV_GEN,"17095",17095,"        ShootVertRecoil(0.008); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"21238",21238,"        ShootVertRecoil(0.03); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"21275",21275,"        ShootVertRecoil(0.03); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"21312",21312,"        ShootVertRecoil(0.03); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"21349",21349,"        ShootVertRecoil(0.03); //Modified_by_FireEyeEian --fov_EDIT")
;MAG_hipfire_recoilfov_fix
	TF_ReplaceLine(INV_GEN,"16674",16674,"        ShootVertRecoil(0.010); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"20802",20802,"        ShootVertRecoil(0.02); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"20839",20839,"        ShootVertRecoil(0.02); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"20876",20876,"        ShootVertRecoil(0.02); //Modified_by_FireEyeEian --fov_EDIT")
		;TF_ReplaceLine(INV_GEN,"20914",20914,"        ShootVertRecoil(0.02); //Modified_by_FireEyeEian --fov_EDIT")
;m9_hipfire_recoilfov_fix
	TF_ReplaceLine(INV_GEN,"16884",16884,"        ShootVertRecoil(0.015); //Modified_by_FireEyeEian --fov_EDIT")
;mcalls_hipfire_recoilfov_fix
	TF_ReplaceLine(INV_GEN,"20474",20474,"        ShootVertRecoil(0.015); //Modified_by_FireEyeEian --fov_EDIT")
;colt_hipfire_recoilfov_fix
	TF_ReplaceLine(INV_GEN,"16463",16463,"        ShootVertRecoil(0.015); //Modified_by_FireEyeEian --fov_EDIT")
SplashTextOff
CustomMsgBox("fov","➤FOV changed to 82 (+20)`n➤Pistol & shotgun +Recoil scaled to fov`n`nPlease note: I highly recommend enabling ""Firearms tweaks and fixes"" and ""Better firearms upgrading"" `nas they fix bugs with firearms and make upgrading even more usefull.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, FOV CHANGE, ➤FOV changed to 82 (+20)`n➤Pistol & shotgun Recoil scaled to fov`n`nPlease note: I highly recomended enabling ""Firearms tweaks and fixes"" and ""Better firearms upgrading"" as they fix bugs with firearms and make upgrading even more usefull.,
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian")) 
return



skiptheintros:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,Skip_intros_var
IfEqual, Skip_intros_var, 1
goto, skip_intro_yes
IfEqual,Skip_intros_var,0
goto, skip_intro_no
skip_intro_yes:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_InsertPrefix(INTRO_MOV,15,25, "//")
SplashTextOff
CustomMsgBox("Intro movies","➤Intro videos will be disabled",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Intro vid option,➤Intro videos will be disabled,
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Enable_BUTTONS_Function()
return
skip_intro_no:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceInLines(INTRO_MOV,"15,16,17,18,19,20,21,22,23,24,25","","//","")
SplashTextOff
CustomMsgBox("intro movies","➤Intro videos will play",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Intro vid option,➤Intro videos wll play,
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Enable_BUTTONS_Function()
return

reducethesprintstaminacost:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,Reducesprint_stamina_cost_var
IfEqual, Reducesprint_stamina_cost_var, 1
goto, reduce_stamina_yes
IfEqual,Reducesprint_stamina_cost_var,0
goto, reduce_stamina_no
reduce_stamina_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"199",199,"	<prop n=""MoveSprintStaminaConsumption"" v=""0.03""/>	<!--  Modified by FireEyeEian-->")
SplashTextOff
CustomMsgBox("Stamina options","➤Sprint stamina cost set to reduced (0.03)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Stamina option,➤Sprint stamina cost set to reduced (0.03)
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Enable_BUTTONS_Function()
return
reduce_stamina_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"199",199,"	<prop n=""MoveSprintStaminaConsumption"" v=""0.05""/>	<!-- This is the default value //Modified_by_FireEyeEian-->")
SplashTextOff
CustomMsgBox("Stamina options","➤Sprint stamina cost set to default (0.05)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Stamina option,➤Sprint stamina cost set to default (0.05),
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

reducethesunflare:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,Reduce_sun_var
IfEqual, Reduce_sun_var, 1
goto, reduce_sun_yes
IfEqual,Reduce_sun_var,0
goto, reduce_sun_no
reduce_sun_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(sunglow_scd,"4",4,"VarFloat(""f_pp_glow_factor"", 0.1)	//  Modified by FireEyeEian")
TF_ReplaceLine(sunglow_scr,"1",1,"VarFloat(""f_glow_factor"", 0.1)	//  Modified by FireEyeEian")
SplashTextOff
CustomMsgBox("sunflare option","➤Reduced sunflare to 90`%",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,sunflare option,➤Reduced sunflare to 90`%
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Enable_BUTTONS_Function()
return
reduce_sun_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(sunglow_scd,"4",4,"VarFloat(""f_pp_glow_factor"", 1.0)	// This is the default value //Modified_by_FireEyeEian")
TF_ReplaceLine(sunglow_scr,"1",1,"VarFloat(""f_glow_factor"", 1.0)	// This is the default value //Modified_by_FireEyeEian")
SplashTextOff
CustomMsgBox("sunflare","➤Set sunflare to default (100`%)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,sunflare option,➤Set sunflare to default (100`%)
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Enable_BUTTONS_Function()
return


Submit_FINAL:
play_click_sound_func()
Disable_BUTTONS_Function()
MsgBox, 4385, ARE YOU SURE?, Add selected mods to Data0.pak?,
IfMsgBox ok
    Goto,mergedatapak_steam
IfMsgBox, Cancel
Enable_BUTTONS_Function()
    return
mergedatapak_steam:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
FileDelete, %Deadisland_dir%/DI/data0.pak
SetWorkingDir %Deadisland_dir%/DI
GOTO, write_mods_to_file
return

write_mods_to_file:
FileCreateDir, %A_Temp%\@DIDMM_TEMPFILES\compiled_mod
SplashTextOn, 700,105,UN-PACKING PROGRAM,Please wait... `nUNzipping Data0.pak`nNOTE: This could take up to 3 minutes, If you have a slow hard drive this might take longer.`n if you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
 WinSet, AlwaysOnTop, Off, UN-PACKING PROGRAM
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
;RunWait, %A_Temp%\@DIDMM_TEMPFILES\FileZipUp.exe,,Hide, Runwait_zip_OutputVar ;depreciated
SmartZip("EXTRACTED_DATA0\data", "compiled_mod\Data0.zip", "UpdateProgress")
Sleep, 300 ;whynot.jpg
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\compiled_mod\Data0.zip, %Deadisland_dir%\DI\Data0.pak ,1
Sleep, 200
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\compiled_mod\Data0.zip
play_click_sound_func()
SplashTextOff
play_final_sound_func()
CustomMsgBox("Stamina options","➤Game has been Patched and is ready to play`n(You can close this application)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,Game has been Patched and is ready to play`n(You can close this application)
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
;Enable_BUTTONS_Function()
return

Bullet_pen:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,Bullet_pen_var
		IfEqual,Bullet_pen_var, 1
goto,Bullet_pen_var_yes
		IfEqual,Bullet_pen_var,0
goto,Bullet_pen_var_no
return
Bullet_pen_var_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"48",48,"    <prop n=""BulletPenetrationChance"" v=""0.98""/> <!-- Modified_by_FireEyeEian -->")
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("Bullet penetration","➤Bullet penetration enabled`n(98`% chance)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Bullet penetration?,➤Bullet penetration enabled`n(98`% chance)
Enable_BUTTONS_Function()
return
Bullet_pen_var_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"48",48,"    <prop n=""BulletPenetrationChance"" v=""0.""/> <!-- this_is_the_default_value -->")
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("Bullet penetration","➤Bullet penetration disabled",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Bullet penetration?,➤Bullet penetration disabled
Enable_BUTTONS_Function()
return

better_wep_upgrades:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,better_wep_upgrades_var
		IfEqual,better_wep_upgrades_var, 1
goto,better_wep_upgrades_yes
		IfEqual,better_wep_upgrades_var,0
goto,better_wep_upgrades_no
return

better_wep_upgrades_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;;;colt_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"16439",16439,"        ShotTime(1.0); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"16523",16523,"        ShotTime(0.94); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"16524",16524,"        ReloadTime(3.8); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"16550",16550,"        ShootVertRecoil(0.0095); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
;;;colt_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"16560",16560,"        ShotTime(0.88); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"16561",16561,"        ReloadTime(3.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"16587",16587,"        ShootVertRecoil(0.0090); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
;;;colt_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"16597",16597,"        ShotTime(0.82); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"16598",16598,"        ReloadTime(3.2); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"16624",16624,"        ShootVertRecoil(0.0085); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			;;;Magnum_gen_upgrade_1		//made magnum have deagle recoil
			TF_ReplaceLine(INV_GEN,"16732",16732,"        ShotTime(0.96); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"16733",16733,"        ReloadTime(3.8); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"16759",16759,"        ShootVertRecoil(0.048); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			;;;magnum_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"16769",16769,"        ShotTime(0.90); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"16770",16770,"        ReloadTime(3.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"16796",16796,"        ShootVertRecoil(0.047); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			;;;Magnum_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"16806",16806,"        ShotTime(0.82); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"16807",16807,"        ReloadTime(3.2); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"16833",16833,"        ShootVertRecoil(0.046); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
;;;M9_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"16943",16943,"        ShotTime(0.28); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"16944",16944,"        ReloadTime(1.2); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"16970",16970,"        ShootVertRecoil(0.008); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
;;;m9_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"16980",16980,"        ShotTime(0.27); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"16981",16981,"        ReloadTime(1.1); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"17007",17007,"        ShootVertRecoil(0.007); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
;;;M9_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17017",17017,"        ShotTime(0.26); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"17018",17018,"        ReloadTime(1.0); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"17044",17044,"        ShootVertRecoil(0.006); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			;;;mccall_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"20533",20533,"        ShotTime(0.28); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"20534",20534,"        ReloadTime(1.3); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"20560",20560,"        ShootVertRecoil(0.008); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			;;;mccall_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"20570",20570,"        ShotTime(0.27); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"20571",20571,"        ReloadTime(1.1); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"20597",20597,"        ShootVertRecoil(0.007); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			;;;mccall_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"20607",20607,"        ShotTime(0.26); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"20608",20608,"        ReloadTime(0.9); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"20634",20634,"        ShootVertRecoil(0.006); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
;;;Deag_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"17153",17153,"        ShotTime(0.38); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"17154",17154,"        ReloadTime(1.2); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"17180",17180,"        ShootVertRecoil(0.012); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
;;;Deag_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"17190",17190,"        ShotTime(0.37); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"17191",17191,"        ReloadTime(1.1); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"17217",17217,"        ShootVertRecoil(0.010); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
;;;Deag_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17227",17227,"        ShotTime(0.36); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"17228",17228,"        ReloadTime(1.0); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"17254",17254,"        ShootVertRecoil(0.008); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			;;;Auto_gen_upgrade_1
			;TF_ReplaceLine(INV_GEN,"18647",18647,"        ShotTime(0.09); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")        
			TF_ReplaceLine(INV_GEN,"18648",18648,"        ReloadTime(2.95); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			TF_ReplaceLine(INV_GEN,"18670",18670,"        ShootMaxAngle(0.069); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"18673",18673,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			;;;Auto_gen_upgrade_2 
			;TF_ReplaceLine(INV_GEN,"18682",18682,"        ShotTime(0.08); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")     
			TF_ReplaceLine(INV_GEN,"18683",18683,"        ReloadTime(2.65); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			TF_ReplaceLine(INV_GEN,"18705",18705,"        ShootMaxAngle(0.064); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"18708",18708,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			;;;Auto_gen_upgrade_3
			;TF_ReplaceLine(INV_GEN,"18717",18717,"        ShotTime(0.07); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")        
			TF_ReplaceLine(INV_GEN,"18718",18718,"        ReloadTime(2.35); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			TF_ReplaceLine(INV_GEN,"18740",18740,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			TF_ReplaceLine(INV_GEN,"18743",18743,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
;;;Auto_gen_B_upgrade_1
;TF_ReplaceLine(INV_GEN,"18849",18849,"        ShotTime(0.09); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")        
TF_ReplaceLine(INV_GEN,"18850",18850,"        ReloadTime(2.95); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
TF_ReplaceLine(INV_GEN,"18872",18872,"        ShootMaxAngle(0.069); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"18875",18875,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
;;;Auto_gen_B_upgrade_2
;TF_ReplaceLine(INV_GEN,"18884",18884,"        ShotTime(0.08); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")        
TF_ReplaceLine(INV_GEN,"18885",18885,"        ReloadTime(2.65); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
TF_ReplaceLine(INV_GEN,"18907",18907,"        ShootMaxAngle(0.064); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"18910",18910,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
;;;Auto_gen_B_upgrade_3
;TF_ReplaceLine(INV_GEN,"18919",18919,"        ShotTime(0.07); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")        
TF_ReplaceLine(INV_GEN,"18920",18920,"        ReloadTime(2.35); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
TF_ReplaceLine(INV_GEN,"18945",18945,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
			;;;Auto_gen_c_upgrade_1
			;TF_ReplaceLine(INV_GEN,"19051",19051,"        ShotTime(0.09); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"19052",19052,"        ReloadTime(2.95); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			TF_ReplaceLine(INV_GEN,"19074",19074,"        ShootMaxAngle(0.069); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")   
			TF_ReplaceLine(INV_GEN,"19077",19077,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
			;;;Auto_gen_c_upgrade_2
			;TF_ReplaceLine(INV_GEN,"19086",19086,"        ShotTime(0.08); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"19087",19087,"        ReloadTime(2.65); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			TF_ReplaceLine(INV_GEN,"19109",19109,"        ShootMaxAngle(0.064); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
			TF_ReplaceLine(INV_GEN,"19112",19112,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
			;;;Auto_gen_c_upgrade_3
			;TF_ReplaceLine(INV_GEN,"19121",19121,"        ShotTime(0.07); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"19122",19122,"        ReloadTime(2.35); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			TF_ReplaceLine(INV_GEN,"19144",19144,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
			TF_ReplaceLine(INV_GEN,"19147",19147,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
;;;Auto_gen_d_upgrade_1
;TF_ReplaceLine(INV_GEN,"19253",19253,"        ShotTime(0.09); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"19254",19254,"        ReloadTime(2.95); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
TF_ReplaceLine(INV_GEN,"19276",19276,"        ShootMaxAngle(0.069); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")   
TF_ReplaceLine(INV_GEN,"19279",19279,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
;;;Auto_gen_d_upgrade_2
;TF_ReplaceLine(INV_GEN,"19288",19288,"        ShotTime(0.08); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"19289",19289,"        ReloadTime(2.65); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
TF_ReplaceLine(INV_GEN,"19311",19311,"        ShootMaxAngle(0.064); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
TF_ReplaceLine(INV_GEN,"19314",19314,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
;;;Auto_gen_d_upgrade_3
;TF_ReplaceLine(INV_GEN,"19323",19323,"        ShotTime(0.07); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"19324",19324,"        ReloadTime(2.35); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
TF_ReplaceLine(INV_GEN,"19346",19346,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
TF_ReplaceLine(INV_GEN,"19349",19349,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
			;;;Auto_gen_e_upgrade_1
			;TF_ReplaceLine(INV_GEN,"19455",19455,"        ShotTime(0.09); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"19456",19456,"        ReloadTime(2.95); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			TF_ReplaceLine(INV_GEN,"19478",19478,"        ShootMaxAngle(0.069); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")   
			TF_ReplaceLine(INV_GEN,"19481",19481,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
			;;;Auto_gen_e_upgrade_2
			;TF_ReplaceLine(INV_GEN,"19490",19490,"        ShotTime(0.08); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"19491",19491,"        ReloadTime(2.65); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			TF_ReplaceLine(INV_GEN,"19513",19513,"        ShootMaxAngle(0.064); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
			TF_ReplaceLine(INV_GEN,"19516",19516,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
			;;;Auto_gen_e_upgrade_3
			;TF_ReplaceLine(INV_GEN,"19525",19525,"        ShotTime(0.07); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"19526",19526,"        ReloadTime(2.35); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			TF_ReplaceLine(INV_GEN,"19548",19548,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
			TF_ReplaceLine(INV_GEN,"19551",19551,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
;;;Burst_gen_upgrade_1
;TF_ReplaceLine(INV_GEN,"19661",19661,"        ShotTime(0.09); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"19662",19662,"        ReloadTime(2.95); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")   
TF_ReplaceLine(INV_GEN,"19684",19684,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
;;;Burst_gen_upgrade_2
;TF_ReplaceLine(INV_GEN,"19700",19700,"        ShotTime(0.08); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"19701",19701,"        ReloadTime(2.65); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
TF_ReplaceLine(INV_GEN,"19723",19723,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
;;;Burts_gen_upgrade_3
;TF_ReplaceLine(INV_GEN,"19739",19739,"        ShotTime(0.07); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"19740",19740,"        ReloadTime(2.35); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
TF_ReplaceLine(INV_GEN,"19762",19762,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
			;;;Burst_gen_b_upgrade_1
			;TF_ReplaceLine(INV_GEN,"19879",19879,"        ShotTime(0.09); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"19880",19880,"        ReloadTime(2.95); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")   
			TF_ReplaceLine(INV_GEN,"19902",19902,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
			;;;Burst_gen_b_upgrade_2
			;TF_ReplaceLine(INV_GEN,"19918",19918,"        ShotTime(0.08); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"19919",19919,"        ReloadTime(2.65); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
			TF_ReplaceLine(INV_GEN,"19941",19941,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
			;;;Burts_gen_b_upgrade_3
			;TF_ReplaceLine(INV_GEN,"19957",19957,"        ShotTime(0.07); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"19958",19958,"        ReloadTime(2.35); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
			TF_ReplaceLine(INV_GEN,"19980",19980,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
;;;singleshot_gen_upgrade_1
;TF_ReplaceLine(INV_GEN,"20097",20097,"        ShotTime(0.095); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"20098",20098,"        ReloadTime(2.95); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")   
TF_ReplaceLine(INV_GEN,"20120",20120,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
;;;singleshot_gen_upgrade_2
;TF_ReplaceLine(INV_GEN,"20136",20136,"        ShotTime(0.08); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"20137",20137,"        ReloadTime(2.65); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
TF_ReplaceLine(INV_GEN,"20159",20159,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
;;;singleshot_gen_upgrade_3
;TF_ReplaceLine(INV_GEN,"20175",20175,"        ShotTime(0.07); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"20176",20176,"        ReloadTime(2.35); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
TF_ReplaceLine(INV_GEN,"20198",20198,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
			;;;singleshot_gen_b_upgrade_1
			;TF_ReplaceLine(INV_GEN,"20097",20097,"        ShotTime(0.095); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"20316",20316,"        ReloadTime(2.95); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")   
			TF_ReplaceLine(INV_GEN,"20338",20338,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
			;;;singleshot_gen_b_upgrade_2
			;TF_ReplaceLine(INV_GEN,"20136",20136,"        ShotTime(0.08); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"20355",20355,"        ReloadTime(2.65); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
			TF_ReplaceLine(INV_GEN,"20377",20377,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES") 
			;;;singleshot_gen_b_upgrade_3
			;TF_ReplaceLine(INV_GEN,"20175",20175,"        ShotTime(0.07); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"20394",20394,"        ReloadTime(2.35); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")      
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")  
			TF_ReplaceLine(INV_GEN,"20416",20416,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
;;;;;;Shottys
			;;;ShortyShotgun_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"17356",17356,"        ShotTime(1.14); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"17357",17357,"        ReloadTime(5.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
			;;;ShortyShotgun_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"17386",17386,"        ShotTime(1.13); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"17387",17387,"        ReloadTime(5.0); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")        
			;;;ShortyShotgun_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"17416",17416,"        ShotTime(1.12); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"17417",17417,"        ReloadTime(4.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")        
;;;Shotgun_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"17543",17543,"        ShotTime(1.14); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"17544",17544,"        ReloadTime(5.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
;;;Shotgun_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"17572",17572,"        ShotTime(1.13); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"17573",17573,"        ReloadTime(5.0); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
;;;Shotgun_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17601",17601,"        ShotTime(1.12); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"17602",17602,"        ReloadTime(4.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
			;;;Shotgun_b_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"17727",17727,"        ShotTime(1.14); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"17728",17728,"        ReloadTime(5.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
			;;;Shotgun_b_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"17756",17756,"        ShotTime(1.13); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"17757",17757,"        ReloadTime(5.0); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
			;;;Shotgun_b_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"17785",17785,"        ShotTime(1.12); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"17786",17786,"        ReloadTime(4.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
;;;Shotgun_c_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"17911",17911,"        ShotTime(1.14); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"17912",17912,"        ReloadTime(5.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
;;;Shotgun_c_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"17940",17940,"        ShotTime(1.13); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"17941",17941,"        ReloadTime(5.0); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
;;;Shotgun_c_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17969",17969,"        ShotTime(1.12); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"17970",17970,"        ReloadTime(4.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			;;;Shotgun_d_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"18095",18095,"        ShotTime(1.14); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"18096",18096,"        ReloadTime(5.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
			;;;Shotgun_d_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"18124",18124,"        ShotTime(1.13); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"18125",18125,"        ReloadTime(5.0); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
			;;;Shotgun_d_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"18153",18153,"        ShotTime(1.12); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"18154",18154,"        ReloadTime(4.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
;;;Shotgun_e_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"18279",18279,"        ShotTime(1.14); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"18280",18280,"        ReloadTime(5.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
;;;Shotgun_e_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"18308",18308,"        ShotTime(1.13); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"18309",18309,"        ReloadTime(5.0); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
;;;Shotgun_e_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"18337",18337,"        ShotTime(1.12); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
TF_ReplaceLine(INV_GEN,"18338",18338,"        ReloadTime(4.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
			;;;Shotgun_f_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"18463",18463,"        ShotTime(1.14); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"18464",18464,"        ReloadTime(5.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
			;;;Shotgun_f_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"18492",18492,"        ShotTime(1.13); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"18493",18493,"        ReloadTime(5.0); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")         
			;;;Shotgun_f_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"18521",18521,"        ShotTime(1.12); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")          
			TF_ReplaceLine(INV_GEN,"18522",18522,"        ReloadTime(4.5); //Modified_by_FireEyeEian //BETTER_WEP_UPGRADES")
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("weapon upgrades","➤Better weapon upgrades enabled`n`nPLEASE NOTE: ONLY THE AUTOMATIC RELOAD SPEED IS AFFECTED `n(this is due to how dead island handles weapons generation;`nThe reload speed will be default if you hit the reload key manually",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,betterweapupgrades?,➤Better weapon upgrades enabled`n`nPLEASE NOTE: ONLY THE AUTOMATIC RELOAD SPEED IS AFFECTED (this is due to how dead island handles weapons generation its kinda out of my hands.`nJust know that the reload speed will be default if you hit the reload key manually
Enable_BUTTONS_Function()
return

better_wep_upgrades_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;;;colt_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"16439",16439,"        ShotTime(0.6); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16523",16523,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"16524",16524,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"16550",16550,"        ShootVertRecoil(0.01); //this_is_the_default_value")
;;;colt_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"16560",16560,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"16561",16561,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"16587",16587,"        ShootVertRecoil(0.01); //this_is_the_default_value")
;;;colt_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"16597",16597,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"16598",16598,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"16624",16624,"        ShootVertRecoil(0.01); //this_is_the_default_value")
			;;;Magnum_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"16732",16732,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"16733",16733,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"16759",16759,"        ShootVertRecoil(0.01); //this_is_the_default_value")
			;;;magnum_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"16769",16769,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"16770",16770,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"16796",16796,"        ShootVertRecoil(0.01); //this_is_the_default_value")
			;;;Magnum_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"16806",16806,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"16807",16807,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"16833",16833,"        ShootVertRecoil(0.01); //this_is_the_default_value")
;;;M9_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"16943",16943,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"16944",16944,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"16970",16970,"        ShootVertRecoil(0.01); //this_is_the_default_value")
;;;m9_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"16980",16980,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"16981",16981,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"17007",17007,"        ShootVertRecoil(0.01); //this_is_the_default_value")
;;;M9_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17017",17017,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"17018",17018,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"17044",17044,"        ShootVertRecoil(0.01); //this_is_the_default_value")
			;;;mccall_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"20533",20533,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"20534",20534,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"20560",20560,"        ShootVertRecoil(0.01); //this_is_the_default_value")
			;;;mccall_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"20570",20570,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"20571",20571,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"20597",20597,"        ShootVertRecoil(0.01); //this_is_the_default_value")
			;;;mccall_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"20607",20607,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"20608",20608,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"20634",20634,"        ShootVertRecoil(0.01); //this_is_the_default_value")
;;;Deag_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"17153",17153,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"17154",17154,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"17180",17180,"        ShootVertRecoil(0.05); //this_is_the_default_value")
;;;Deag_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"17190",17190,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"17191",17191,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"17217",17217,"        ShootVertRecoil(0.05); //this_is_the_default_value")
;;;Deag_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17227",17227,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"17228",17228,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"17254",17254,"        ShootVertRecoil(0.05); //this_is_the_default_value")
			;;;Auto_gen_upgrade_1
			;TF_ReplaceLine(INV_GEN,"18647",18647,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")        
			TF_ReplaceLine(INV_GEN,"18648",18648,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"18670",18670,"        ShootMaxAngle(0.074); //this_is_the_default_value")      
			TF_ReplaceLine(INV_GEN,"18673",18673,"        ShootVertRecoil(0.045); //this_is_the_default_value")
			;;;Auto_gen_upgrade_2
			;TF_ReplaceLine(INV_GEN,"18682",18682,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")     
			TF_ReplaceLine(INV_GEN,"18683",18683,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"18705",18705,"        ShootMaxAngle(0.074); //this_is_the_default_value")      
			TF_ReplaceLine(INV_GEN,"18708",18708,"        ShootVertRecoil(0.045); //this_is_the_default_value")
			;;;Auto_gen_upgrade_3
			;TF_ReplaceLine(INV_GEN,"18717",18717,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")       
			TF_ReplaceLine(INV_GEN,"18718",18718,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"18740",18740,"        ShootMaxAngle(0.074); //this_is_the_default_value")      
			TF_ReplaceLine(INV_GEN,"18743",18743,"        ShootVertRecoil(0.045); //this_is_the_default_value")
;;;Auto_gen_B_upgrade_1
;TF_ReplaceLine(INV_GEN,"18849",18849,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")        
TF_ReplaceLine(INV_GEN,"18850",18850,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"18872",18872,"        ShootMaxAngle(0.074); //this_is_the_default_value")     
TF_ReplaceLine(INV_GEN,"18875",18875,"        ShootVertRecoil(0.045); //this_is_the_default_value")
;;;Auto_gen_B_upgrade_2
;TF_ReplaceLine(INV_GEN,"18884",18884,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")        
TF_ReplaceLine(INV_GEN,"18885",18885,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"18907",18907,"        ShootMaxAngle(0.074); //this_is_the_default_value")      
TF_ReplaceLine(INV_GEN,"18910",18910,"        ShootVertRecoil(0.045); //this_is_the_default_value") 
;;;Auto_gen_B_upgrade_3
;TF_ReplaceLine(INV_GEN,"18919",18919,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")        
TF_ReplaceLine(INV_GEN,"18920",18920,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.074); //this_is_the_default_value")      
TF_ReplaceLine(INV_GEN,"18945",18945,"        ShootVertRecoil(0.045); //this_is_the_default_value") 
			;;;Auto_gen_c_upgrade_1
			;TF_ReplaceLine(INV_GEN,"19051",19051,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"19052",19052,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"19074",19074,"        ShootMaxAngle(0.074); //this_is_the_default_value")         
			TF_ReplaceLine(INV_GEN,"19077",19077,"        ShootVertRecoil(0.045); //this_is_the_default_value") 
			;;;Auto_gen_c_upgrade_2
			;TF_ReplaceLine(INV_GEN,"19086",19086,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"19087",19087,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"19109",19109,"        ShootMaxAngle(0.074); //this_is_the_default_value")        
			TF_ReplaceLine(INV_GEN,"19112",19112,"        ShootVertRecoil(0.045); //this_is_the_default_value") 
			;;;Auto_gen_c_upgrade_3
			;TF_ReplaceLine(INV_GEN,"19121",19121,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"19122",19122,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"19144",19144,"        ShootMaxAngle(0.074); //this_is_the_default_value")        
			TF_ReplaceLine(INV_GEN,"19147",19147,"        ShootVertRecoil(0.045); //this_is_the_default_value") 
;;;Auto_gen_d_upgrade_1
;TF_ReplaceLine(INV_GEN,"19253",19253,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"19254",19254,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"19276",19276,"        ShootMaxAngle(0.074); //this_is_the_default_value")         
TF_ReplaceLine(INV_GEN,"19279",19279,"        ShootVertRecoil(0.045); //this_is_the_default_value") 
;;;Auto_gen_d_upgrade_2
;TF_ReplaceLine(INV_GEN,"19288",19288,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"19289",19289,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"19311",19311,"        ShootMaxAngle(0.074); //this_is_the_default_value")       
TF_ReplaceLine(INV_GEN,"19314",19314,"        ShootVertRecoil(0.045); //this_is_the_default_value") 
;;;Auto_gen_d_upgrade_3
;TF_ReplaceLine(INV_GEN,"19323",19323,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"19324",19324,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
TF_ReplaceLine(INV_GEN,"19346",19346,"        ShootMaxAngle(0.074); //this_is_the_default_value")       
TF_ReplaceLine(INV_GEN,"19349",19349,"        ShootVertRecoil(0.045); //this_is_the_default_value") 
			;;;Auto_gen_e_upgrade_1
			;TF_ReplaceLine(INV_GEN,"19455",19455,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"19456",19456,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"19478",19478,"        ShootMaxAngle(0.074); //this_is_the_default_value")         
			TF_ReplaceLine(INV_GEN,"19481",19481,"        ShootVertRecoil(0.045); //this_is_the_default_value") 
			;;;Auto_gen_e_upgrade_2
			;TF_ReplaceLine(INV_GEN,"19490",19490,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
			TF_ReplaceLine(INV_GEN,"19491",19491,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"19513",19513,"        ShootMaxAngle(0.074); //this_is_the_default_value")        
			TF_ReplaceLine(INV_GEN,"19516",19516,"        ShootVertRecoil(0.045); //this_is_the_default_value") 
			;;;Auto_gen_e_upgrade_3
			;TF_ReplaceLine(INV_GEN,"19525",19525,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"19526",19526,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			TF_ReplaceLine(INV_GEN,"19548",19548,"        ShootMaxAngle(0.074); //this_is_the_default_value")        
			TF_ReplaceLine(INV_GEN,"19551",19551,"        ShootVertRecoil(0.045); //this_is_the_default_value") 
;;;Burst_gen_upgrade_1
;TF_ReplaceLine(INV_GEN,"19661",19661,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"19662",19662,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value")         
TF_ReplaceLine(INV_GEN,"19684",19684,"        ShootVertRecoil(0.015); //this_is_the_default_value") 
;;;Burst_gen_upgrade_2
;TF_ReplaceLine(INV_GEN,"19700",19700,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"19701",19701,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value")        
TF_ReplaceLine(INV_GEN,"19723",19723,"        ShootVertRecoil(0.015); //this_is_the_default_value") 
;;;Burts_gen_upgrade_3
;TF_ReplaceLine(INV_GEN,"19739",19739,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"19740",19740,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value")        
TF_ReplaceLine(INV_GEN,"19762",19762,"        ShootVertRecoil(0.015); //this_is_the_default_value") 
			;;;Burst_gen_b_upgrade_1
			;TF_ReplaceLine(INV_GEN,"19879",19879,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"19880",19880,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value")         
			TF_ReplaceLine(INV_GEN,"19902",19902,"        ShootVertRecoil(0.015); //this_is_the_default_value") 
			;;;Burst_gen_b_upgrade_2
			;TF_ReplaceLine(INV_GEN,"19918",19918,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"19919",19919,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value")        
			TF_ReplaceLine(INV_GEN,"19941",19941,"        ShootVertRecoil(0.015); //this_is_the_default_value") 
			;;;Burts_gen_b_upgrade_3
			;TF_ReplaceLine(INV_GEN,"19957",19957,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"19958",19958,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value")        
			TF_ReplaceLine(INV_GEN,"19980",19980,"        ShootVertRecoil(0.015); //this_is_the_default_value") 
;;;singleshot_gen_upgrade_1
;TF_ReplaceLine(INV_GEN,"20097",20097,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"20098",20098,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value")         
TF_ReplaceLine(INV_GEN,"20120",20120,"        ShootVertRecoil(0.015); //this_is_the_default_value") 
;;;singleshot_gen_upgrade_2
;TF_ReplaceLine(INV_GEN,"20136",20136,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"20137",20137,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value")        
TF_ReplaceLine(INV_GEN,"20159",20159,"        ShootVertRecoil(0.015); //this_is_the_default_value") 
;;;singleshot_gen_upgrade_3
;TF_ReplaceLine(INV_GEN,"20175",20175,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"20176",20176,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value")        
TF_ReplaceLine(INV_GEN,"20198",20198,"        ShootVertRecoil(0.015); //this_is_the_default_value") 
			;;;singleshot_gen_b_upgrade_1
			;TF_ReplaceLine(INV_GEN,"20097",20097,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"20316",20316,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value")         
			TF_ReplaceLine(INV_GEN,"20338",20338,"        ShootVertRecoil(0.015); //this_is_the_default_value") 
			;;;singleshot_gen_b_upgrade_2
			;TF_ReplaceLine(INV_GEN,"20136",20136,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"20355",20355,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value")        
			TF_ReplaceLine(INV_GEN,"20377",20377,"        ShootVertRecoil(0.015); //this_is_the_default_value") 
			;;;singleshot_gen_b_upgrade_3
			;TF_ReplaceLine(INV_GEN,"20175",20175,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"20394",20394,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value")        
			TF_ReplaceLine(INV_GEN,"20416",20416,"        ShootVertRecoil(0.015); //this_is_the_default_value")
;;;;;;Shottys
			;;;ShortyShotgun_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"17356",17356,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
			TF_ReplaceLine(INV_GEN,"17357",17357,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")        
			;;;ShortyShotgun_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"17386",17386,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"17387",17387,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")        
			;;;ShortyShotgun_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"17416",17416,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"17417",17417,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")        
;;;Shotgun_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"17543",17543,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"17544",17544,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
;;;Shotgun_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"17572",17572,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"17573",17573,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
;;;Shotgun_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17601",17601,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"17602",17602,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
			;;;Shotgun_b_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"17727",17727,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"17728",17728,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
			;;;Shotgun_b_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"17756",17756,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"17757",17757,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
			;;;Shotgun_b_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"17785",17785,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"17786",17786,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
;;;Shotgun_c_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"17911",17911,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"17912",17912,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
;;;Shotgun_c_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"17940",17940,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"17941",17941,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
;;;Shotgun_c_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17969",17969,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"17970",17970,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			;;;Shotgun_d_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"18095",18095,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"18096",18096,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
			;;;Shotgun_d_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"18124",18124,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"18125",18125,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
			;;;Shotgun_d_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"18153",18153,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"18154",18154,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
;;;Shotgun_e_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"18279",18279,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"18280",18280,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
;;;Shotgun_e_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"18308",18308,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"18309",18309,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
;;;Shotgun_e_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"18337",18337,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
TF_ReplaceLine(INV_GEN,"18338",18338,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
			;;;Shotgun_f_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"18463",18463,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"18464",18464,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
			;;;Shotgun_f_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"18492",18492,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"18493",18493,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")         
			;;;Shotgun_f_gen_upgrade_3
			TF_ReplaceLine(I1NV_GEN,"18521",18521,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")          
			TF_ReplaceLine(INV_GEN,"18522",18522,"        //placeholderforwepupgrades //Modified_by_FireEyeEian --Default value")
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("weapon upgrades","➤Better weapon upgrades disabled.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,betterweapupgrades?,➤Better weapon upgrades disabled.
Enable_BUTTONS_Function()
return



removereverb:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,Remove_reverb_sound_var
IfEqual, Remove_reverb_sound_var, 1
goto, Remove_reverb_sound_yes
IfEqual,Remove_reverb_sound_var,0
goto, Remove_reverb_sound_no
return

Remove_reverb_sound_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\gameaudioeffects.scr
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\gameaudioeffects.scr.modded , %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\gameaudioeffects.scr,1
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("Reverb sounds","➤Reverb disabled.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Reverb?,➤Reverb disabled.
Enable_BUTTONS_Function()
return

Remove_reverb_sound_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
FileDelete, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\gameaudioeffects.scr
FileCopy, %A_Temp%\@DIDMM_TEMPFILES\loose_files\gameaudioeffects.scr.nomod , %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\gameaudioeffects.scr,1
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("Reverb sounds","➤Reverb enabled.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Reverb?,➤Reverb enabled.
Enable_BUTTONS_Function()
return


add_weps:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,custom_wep_var
IfEqual, custom_wep_var, 1
goto, custom_wep_var_yes
IfEqual,custom_wep_var,0
 goto, custom_wep_var_no
return

custom_wep_var_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;Defender-----------------------------////////Defender\\\\\\\\\--------------------------------------------------------------------------------------------------
;better reload speed
	;TF_ReplaceLine(INV_GEN,"20853",20853,"        ReloadTime(2.65);")
;better crit chance
	;TF_ReplaceLine(INV_GEN,"20889",20889,"        CriticalProb(0.09);")
	;TF_ReplaceLine(INV_GEN,"20890",20890,"        CriticalDamage(110.0);")
	;TF_ReplaceLine(INV_GEN,"20838",20838,"        HeadSmashProb(0.4);")
;more ammo capacity
	;TF_ReplaceLine(INV_GEN,"20852",20852,"        AmmoCount(40);")
;make defender chug
	;TF_ReplaceLine(INV_GEN,"20848",20848,"        ShotTime(0.17); //Makes Defender chug //Modified_by_FireEyeEian")
;make a bit more accurate with new chug setting
	;TF_ReplaceLine(INV_GEN,"20917",20917,"        ShootMaxAngle(0.07);")
	;TF_ReplaceLine(INV_GEN,"20952",20952,"        ShootMaxAngle(0.07);")
	;TF_ReplaceLine(INV_GEN,"20987",20987,"        ShootMaxAngle(0.07);")
	;TF_ReplaceLine(INV_GEN,"21022",21022,"        ShootMaxAngle(0.07);")
;crowdpleaser-----------------------------////////crowdpleaser\\\\\\\\\------------------------------------------------------------------------------------------
;better reload speed
	;TF_ReplaceLine(INV_GEN,"20666",20666,"        ReloadTime(4.5);")
;better crit chance
	;TF_ReplaceLine(INV_GEN,"20702",20702,"        CriticalProb(0.09);")
	;TF_ReplaceLine(INV_GEN,"20703",20703,"        CriticalDamage(110.0);")
	;TF_ReplaceLine(INV_GEN,"20651",20651,"        HeadSmashProb(1.3);")
	;TF_ReplaceLine(INV_GEN,"20653",20653,"        ArmsCutProb(1.3);")
	;TF_ReplaceLine(INV_GEN,"20654",20654,"        LegsCutProb(1.3);")
;more ammo capacity
	;TF_ReplaceLine(INV_GEN,"20665",20665,"        AmmoCount(12);")
;more shot per shot
	;TF_ReplaceLine(INV_GEN,"20690",20690,"        BulletsPerShot(15);")
;make spread smaller
;hipfire
	;TF_ReplaceLine(INV_GEN,"20680",20680,"        ShootMinAngle(0.03);")
	;TF_ReplaceLine(INV_GEN,"20681",20681,"        ShootMaxAngle(0.07);")
;ads
	;TF_ReplaceLine(INV_GEN,"20728",20728,"        ShootMaxAngle(0.04);")
	;TF_ReplaceLine(INV_GEN,"20759",20759,"        ShootMaxAngle(0.04);")
	;TF_ReplaceLine(INV_GEN,"20790",20790,"        ShootMaxAngle(0.04);")
	;TF_ReplaceLine(INV_GEN,"20821",20821,"        ShootMaxAngle(0.04);")
;M72-----------------------------////////m72\\\\\\\\\------------------------------------------------------------------------------------------
TF_ReplaceLine(INV_patch,"1901",1901,"        AnimPrefix(""Anaconda"");")
TF_ReplaceLine(INV_patch,"1903",1903,"        ShotTime(2.6);")
TF_ReplaceLine(INV_patch,"1908",1908,"        ReloadTime(3.4);")
TF_ReplaceLine(INV_patch,"1936",1936,"        AimFov(1.5);")
TF_ReplaceLine(INV_patch,"1940",1940,"        Price(900);")
TF_ReplaceLine(INV_patch,"1961",1961,"        PriceMult(0.9);")
;m60-----------------------------////////m60\\\\\\\\\------------------------------------------------------------------------------------------
TF_ReplaceLine(INV_patch,"1811",1811,"        AnimPrefix(""m16"");")
TF_ReplaceLine(INV_patch,"1813",1813,"        ShotTime(0.12);")
TF_ReplaceLine(INV_patch,"1818",1818,"        ReloadTime(-1.7);")
TF_ReplaceLine(INV_patch,"1845",1845,"        AimFov(1.8);")
TF_ReplaceLine(INV_patch,"1826",1826,"        HandOffset(HandModification_Normal, [0.000,-0.15,0.300]); // Converted")
TF_ReplaceLine(INV_patch,"1878",1878,"        HandOffset(HandModification_Normal, [0.085,-0.15,1.000]); // Converted")
TF_ReplaceLine(INV_patch,"1849",1849,"        Price(800);")
TF_ReplaceLine(INV_patch,"1838",1838,"        ShootVertRecoil(0.025);")
;--------explosive wep craft-------------------
TF_InsertLine(INV_spec,"830",830,"        ")
TF_InsertLine(INV_spec,"831",831,"        Item(""Craftplan_HE_Rounds"", CategoryType_Collectable)")
TF_InsertLine(INV_spec,"832",832,"    {")
TF_InsertLine(INV_spec,"833",833,"        Name(""Crafting plans for explosive weapons (Cheat)"");")
TF_InsertLine(INV_spec,"834",834,"        Description('Modifies guns to use High explosive rounds   Can be used like a gun or can be used to launch trucks by shooting at a truck while a player is inside.            Note: This is a cheat mod');")
TF_InsertLine(INV_spec,"835",835,"        ItemType(ItemType_CraftPlan);")
TF_InsertLine(INV_spec,"836",836,"        Price(50);")
TF_InsertLine(INV_spec,"837",837,"        Mesh(""blueprint_a.msh"");")
TF_InsertLine(INV_spec,"838",838,"        Skin(""default_hl"");")
TF_InsertLine(INV_spec,"839",839,"        BaseItem(""Firearm_M9Gen"", ""Weapon_Craft6"", """");")
TF_InsertLine(INV_spec,"840",840,"        BaseItem(""Firearm_DesertEagleGen"", ""Weapon_Craft6"", """");")
TF_InsertLine(INV_spec,"841",841,"        BaseItem(""Firearm_leg_Mccall9Mm"", ""Weapon_Craft5"", """");")
TF_InsertLine(INV_spec,"842",842,"        BaseItem(""Firearm_AutoRifle"", ""Weapon_Craft5"", """");")
TF_InsertLine(INV_spec,"843",843,"        BaseItem(""Firearm_SingleShotRifle"", ""Weapon_Craft5"", """");")
TF_InsertLine(INV_spec,"844",844,"        BaseItem(""Firearm_BurstRifle"", ""Weapon_Craft5"", """");")
TF_InsertLine(INV_spec,"845",845,"        BaseItem(""Firearm_leg_DefenderOfTheMotherland"", ""Weapon_Craft5"", """");")
TF_InsertLine(INV_spec,"846",846,"        BaseItem(""Firearm_Shotgun"", """", """");")
TF_InsertLine(INV_spec,"847",847,"        BaseItem(""Firearm_ShotgunShort"", """", """");")
TF_InsertLine(INV_spec,"848",848,"        BaseItem(""Firearm_leg_CrowdPleaser"", """", """");")
TF_InsertLine(INV_spec,"849",849,"        NamePrefix(""&CraftBlastPrefixName&"");")
TF_InsertLine(INV_spec,"850",850,"        AdditionalDamageType(DamageType_Blast);")
TF_InsertLine(INV_spec,"851",851,"        AdditionalDamage(5000.0);")
TF_InsertLine(INV_spec,"852",852,"        AdditionalBlastRange(3.0);    // Converted")
TF_InsertLine(INV_spec,"853",853,"        AdditionalCriticalPhysicsDamage(70.0);")
TF_InsertLine(INV_spec,"854",854,"        AdditionalDamadeLevel(2);")
TF_InsertLine(INV_spec,"855",855,"        Color(Color_Green);")
TF_InsertLine(INV_spec,"856",856,"        }") 
TF_InsertLine(INV_spec,"857",857,"        ")
TF_InsertLine(DLC_shop,"91",91,"	Item(""Craftplan_HE_Rounds"", )")
;--------m72 ammo-------------------
TF_InsertLine(INV_spec,"858",858,"        Item(""Craftplan_M72ammo"", CategoryType_Collectable)")
TF_InsertLine(INV_spec,"859",859,"    {")
TF_InsertLine(INV_spec,"860",860,"        Name(""Crafting plans for M72 rocket ammo"");")
TF_InsertLine(INV_spec,"861",861,"        Description('Ammo for the M72 rocket launcher');")
TF_InsertLine(INV_spec,"862",862,"        ItemType(ItemType_CraftPlan);")
TF_InsertLine(INV_spec,"863",863,"        Price(2000);")
TF_InsertLine(INV_spec,"864",864,"        Mesh(""blueprint_a.msh"");")
TF_InsertLine(INV_spec,"865",865,"        Skin(""default_hl"");")
TF_InsertLine(INV_spec,"866",866,"        BaseItem(""zzz_Ammo_M72"", """", """");")
TF_InsertLine(INV_spec,"867",867,"        RequiredItem(""CraftPart_MetalScrap"", 5);")
TF_InsertLine(INV_spec,"868",868,"        RequiredItem(""CraftPart_Detergent"", 3);")
TF_InsertLine(INV_spec,"869",869,"        RequiredItem(""CraftPart_Tape"", 2);")
TF_InsertLine(INV_spec,"870",870,"        RequiredItem(""CraftPart_Wire"", 3);")
TF_InsertLine(INV_spec,"871",871,"        RequiredItem(""CraftPart_BatteryLarge"", 1);")
TF_InsertLine(INV_spec,"872",872,"        RequiredItem(""CraftPart_Glue"", 1);")
TF_InsertLine(INV_spec,"873",873,"        RequiredItem(""CraftPart_GasForLighter"", 2);")
TF_InsertLine(INV_spec,"874",874,"        RequiredItem(""CraftPart_Magnet"", 2);")
TF_InsertLine(INV_spec,"875",875,"        RequiredItem(""CraftPart_Battery"", 2);")
TF_InsertLine(INV_spec,"876",876,"        RequiredItem(""CraftPart_ElectronicScrap"", 4);")
TF_InsertLine(INV_spec,"877",877,"        Color(Color_Yellow);")
TF_InsertLine(INV_spec,"878",878,"        CraftCreatesBaseItem(true);")
TF_InsertLine(INV_spec,"879",879,"    }")
TF_InsertLine(INV_spec,"880",880,"    ")
TF_InsertLine(DLC_shop,"92",92,"	Item(""Craftplan_M72ammo"", )")
;--------m60 ammo-------------------
TF_InsertLine(INV_spec,"881",881,"        Item(""Craftplan_M60ammo"", CategoryType_Collectable)")
TF_InsertLine(INV_spec,"882",882,"    {")
TF_InsertLine(INV_spec,"883",883,"        Name(""Crafting plans for M60 7.62 ammo"");")
TF_InsertLine(INV_spec,"884",884,"        Description('Ammo for the M60 Machine gun (7.62)');")
TF_InsertLine(INV_spec,"885",885,"        ItemType(ItemType_CraftPlan);")
TF_InsertLine(INV_spec,"886",886,"        Price(720);")
TF_InsertLine(INV_spec,"887",887,"        Mesh(""blueprint_a.msh"");")
TF_InsertLine(INV_spec,"888",888,"        Skin(""default_hl"");")
TF_InsertLine(INV_spec,"889",889,"        BaseItem(""zzz_Ammo_M60"", """", """");")
TF_InsertLine(INV_spec,"890",890,"        RequiredItem(""CraftPart_MetalScrap"", 4);")
TF_InsertLine(INV_spec,"891",891,"        RequiredItem(""CraftPart_Detergent"", 2);")
TF_InsertLine(INV_spec,"892",892,"        //RequiredItem(""CraftPart_Tape"", 2);")
TF_InsertLine(INV_spec,"893",893,"        //RequiredItem(""CraftPart_Wire"", 2);")
TF_InsertLine(INV_spec,"894",894,"        //RequiredItem(""CraftPart_BatteryLarge"", 2);")
TF_InsertLine(INV_spec,"895",895,"        //RequiredItem(""CraftPart_Glue"", 2);")
TF_InsertLine(INV_spec,"896",896,"        //RequiredItem(""CraftPart_GasForLighter"", 2);")
TF_InsertLine(INV_spec,"897",897,"        //RequiredItem(""CraftPart_Magnet"", 2);")
TF_InsertLine(INV_spec,"898",898,"        //RequiredItem(""CraftPart_Battery"", 3);")
TF_InsertLine(INV_spec,"899",899,"        //RequiredItem(""CraftPart_ElectronicScrap"", 2);")
TF_InsertLine(INV_spec,"900",900,"        Color(Color_Yellow);")
TF_InsertLine(INV_spec,"901",901,"        CraftCreatesBaseItem(true);")
TF_InsertLine(INV_spec,"902",902,"    }")
TF_InsertLine(INV_spec,"903",903,"    ")
TF_InsertLine(DLC_shop,"93",93,"	Item(""Craftplan_M60ammo"", )")
;checks more ammo option to see what to set m60 ammo to and fix amount of m60 ammo available to craft
gui,1:Submit,nohide
GuiControlGet,more_ammo_var
	IfEqual, more_ammo_var, 1
goto, more_ammo_var_and_cust_wep_yes ;is more ammo enabled?
	IfEqual,more_ammo_var,0
goto, more_ammo_var_and_cust_wep_no
	return
more_ammo_var_and_cust_wep_yes:
TF_ReplaceLine(Def_lev,"249",249,"	<prop n=""MaxAmmoSniper"" v=""800""/>")
goto, custwepcont
more_ammo_var_and_cust_wep_no:
TF_ReplaceLine(Def_lev,"249",249,"	<prop n=""MaxAmmoSniper"" v=""200""/>")
goto, custwepcont
custwepcont:
;--------m60 Gun + m72 launcher-------------------
TF_InsertLine(DLC_shop,"10",10,"	ColorItem(""zzz_Firearm_M72"", , 4, 32)")
TF_InsertLine(DLC_shop,"11",11,"	ColorItem(""zzz_Firearm_M60"", , 4, 32)")
SplashTextOff
MsgBox,36, BeachBall Bomb?, Would you like to add in a throwable Beachball bomb? `n(This will re-skinn the deobomb to look like a beachball)
IfMsgBox, No
	Goto, Continue_on_cust_wep
IfMsgBox, yes
    Goto, Add_beachBall_bomb_cust_wep
return
Add_beachBall_bomb_cust_wep:
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(inv_scr,"4899",4899,"        Mesh(""beach_ball_a.msh"");")
goto,Continue_on_cust_wep
return
Continue_on_cust_wep:
SplashTextOff
MsgBox,36, Add explosive cheat ammo?, Would you like to add a craft plan for explosive ammo for all weapons?`n`n                          (THIS IS A CHEAT MOD)
IfMsgBox, No
	Goto, Add_Cheat_ammo_no
IfMsgBox, yes
    Goto, Continue_on_cust_wep_final
    return
Add_Cheat_ammo_no:
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(DLC_shop,"91",91,"	//Item(""Craftplan_HE_Rounds"", )")
goto, Continue_on_cust_wep_final
Continue_on_cust_wep_final:
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("Custom weapons","➤Custom weapons enabled.`n`nWeapons added:`n	>M60`n	>M72`n`n `*`*`*Custom items can be purchased from Wes Tweddle in the areana lobby`*`*`*",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Custom weapons,➤Custom weapons enabled.`n`nWeapons added:`n	>M60`n	>M72`n`n `*`*`*Custom items can be purchased from Wes Tweddle in the areana lobby`*`*`*
Enable_BUTTONS_Function()
return
        

custom_wep_var_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;Defender-----------------------------////////Defender\\\\\\\\\--------------------------------------------------------------------------------------------------
;better reload speed
;TF_ReplaceLine(INV_GEN,"20853",20853,"        ReloadTime(3.25);")
;better crit chance
;TF_ReplaceLine(INV_GEN,"20889",20889,"        CriticalProb(0.05);")
;TF_ReplaceLine(INV_GEN,"20890",20890,"        CriticalDamage(100.0);")
;TF_ReplaceLine(INV_GEN,"20838",20838,"        HeadSmashProb(0.2);")
;more ammo capacity
;TF_ReplaceLine(INV_GEN,"20852",20852,"        AmmoCount(30);")
;make defender chug
;TF_ReplaceLine(INV_GEN,"20848",20848,"        ShotTime(0.1); //this_is_the_default_value")
;make a bit more accurate with new chug setting
;TF_ReplaceLine(INV_GEN,"20917",20917,"        ShootMaxAngle(0.074);")
;TF_ReplaceLine(INV_GEN,"20952",20952,"        ShootMaxAngle(0.074);")
;TF_ReplaceLine(INV_GEN,"20987",20987,"        ShootMaxAngle(0.074);")
;TF_ReplaceLine(INV_GEN,"21022",21022,"        ShootMaxAngle(0.074);")
;crowdpleaser-----------------------------////////crowdpleaser\\\\\\\\\------------------------------------------------------------------------------------------
;better reload speed
;TF_ReplaceLine(INV_GEN,"20666",20666,"        ReloadTime(6.0);")
;better crit chance
;TF_ReplaceLine(INV_GEN,"20702",20702,"        CriticalProb(0.05);")
;TF_ReplaceLine(INV_GEN,"20703",20703,"        CriticalDamage(100.0);")
;TF_ReplaceLine(INV_GEN,"20651",20651,"        HeadSmashProb(1.0);")
;TF_ReplaceLine(INV_GEN,"20653",20653,"        ArmsCutProb(1.0);")
;TF_ReplaceLine(INV_GEN,"20654",20654,"        LegsCutProb(1.0);")
;more ammo capacity
;TF_ReplaceLine(INV_GEN,"20665",20665,"        AmmoCount(8);")
;more shot per shot
;TF_ReplaceLine(INV_GEN,"20690",20690,"        BulletsPerShot(12);")
;make spread smaller
;hipfire
;TF_ReplaceLine(INV_GEN,"20680",20680,"        ShootMinAngle(0.04);")
;TF_ReplaceLine(INV_GEN,"20681",20681,"        ShootMaxAngle(0.08);")
;ads
;TF_ReplaceLine(INV_GEN,"20728 ",20728 ,"        ShootMaxAngle(0.05);")
;TF_ReplaceLine(INV_GEN,"20759 ",20759 ,"        ShootMaxAngle(0.05);")
;TF_ReplaceLine(INV_GEN,"20790 ",20790 ,"        ShootMaxAngle(0.05);")
;TF_ReplaceLine(INV_GEN,"20821 ",20821 ,"        ShootMaxAngle(0.05);")
;M72-----------------------------////////m72\\\\\\\\\------------------------------------------------------------------------------------------
TF_ReplaceLine(INV_patch,"1901",1901,"        AnimPrefix(""M72"");")
TF_ReplaceLine(INV_patch,"1903",1903,"        ShotTime(1.0);")
TF_ReplaceLine(INV_patch,"1908",1908,"        ReloadTime(-1.0);")
TF_ReplaceLine(INV_patch,"1936",1936,"        AimFov(2.0);")
;m60-----------------------------////////m60\\\\\\\\\------------------------------------------------------------------------------------------
TF_ReplaceLine(INV_patch,"1811",1811,"        AnimPrefix(""M60"");")
TF_ReplaceLine(INV_patch,"1813",1813,"        ShotTime(0.15);")
TF_ReplaceLine(INV_patch,"1818",1818,"        ReloadTime(-1.0);")
TF_ReplaceLine(INV_patch,"1845",1845,"        AimFov(2.0);")
TF_ReplaceLine(INV_patch,"1826",1826,"        HandOffset(HandModification_Normal, [-0.050,-0.050,-0.100]); // Converted")
TF_ReplaceLine(INV_patch,"1878",1878,"        HandOffset(HandModification_Normal, [0.0,0.0,-0.340]); // Converted")
;--------remove m60ammo=herounds+m72ammo from INV_SPEC ------------
TF_RemoveLines(INV_spec,831,904)

;checks more ammo option to see what to set m60 ammo to and fix amount of m60 ammo available to craft
gui,1:Submit,nohide
GuiControlGet,more_ammo_var
	IfEqual, more_ammo_var, 1
goto, more_ammo_var_and_cust_wep_no_yes
	IfEqual,more_ammo_var,0
goto, more_ammo_var_and_cust_wep_no_no
	return
more_ammo_var_and_cust_wep_no_yes:
TF_ReplaceLine(Def_lev,"249",249,"	<prop n=""MaxAmmoSniper"" v=""200""/>")
goto, custwepcont
more_ammo_var_and_cust_wep_no_no:
TF_ReplaceLine(Def_lev,"249",249,"	<prop n=""MaxAmmoSniper"" v=""15""/>")
goto, custwepcont_no
custwepcont_no:
;--------remove m60ammo+he-rounds+m72ammo from DLC_SHOP + re-add ------------
TF_RemoveLines(DLC_shop,93,95)
TF_RemoveLines(DLC_shop,10,11)

SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("Custom weapons","➤Custom weapons Disabled..",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Custom weapons,➤Custom weapons Disabled.
Enable_BUTTONS_Function()
return        
    

More_ammo:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,more_ammo_var
	IfEqual, more_ammo_var, 1
goto, more_ammo_var_yes
	IfEqual,more_ammo_var,0
goto, more_ammo_var_no
	return

more_ammo_var_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"246",246,"	<prop n=""MaxAmmoPistol"" v=""200""/>")
TF_ReplaceLine(Def_lev,"247",247,"	<prop n=""MaxAmmoRifle"" v=""150""/>")
TF_ReplaceLine(Def_lev,"248",248,"	<prop n=""MaxAmmoShotgun"" v=""90""/>")
;checks more ammo option to see what to set m60 ammo to and fix amount of m60 ammo available to craft
gui,1:Submit,nohide
GuiControlGet,custom_wep_var
	IfEqual, custom_wep_var, 1
goto, is_cust_wep_enabled_yes
	IfEqual,custom_wep_var,0
goto, is_cust_wep_enabled_no
	return
is_cust_wep_enabled_yes:
TF_ReplaceLine(Def_lev,"249",249,"	<prop n=""MaxAmmoSniper"" v=""400""/>")
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("more ammo","➤Hold more ammo enabled.`n•Max pistol ammo= 200`n•Max rifle ammo= 150`n•max shotgun ammo= 90",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,more ammo,➤Hold more ammo enabled.`n•Max pistol ammo= 200`n•Max rifle ammo= 150`n•max shotgun ammo= 90
Enable_BUTTONS_Function()
return        
is_cust_wep_enabled_no:
;TF_ReplaceLine(Def_lev,"249",249,"	<prop n=""MaxAmmoSniper"" v=""400""/>") ;not needed as no other weapon uses sniper ammo besides the m60 and the m60 is only enabled if custom weapons is enabled so it really doesn't matter
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("more ammo","➤Hold more ammo enabled.`n•Max pistol ammo= 200`n•Max rifle ammo= 150`n•max shotgun ammo= 90",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,more ammo,➤Hold more ammo enabled.
Enable_BUTTONS_Function()
return        


more_ammo_var_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"246",246,"	<prop n=""MaxAmmoPistol"" v=""50""/>")
TF_ReplaceLine(Def_lev,"247",247,"	<prop n=""MaxAmmoRifle"" v=""60""/>")
TF_ReplaceLine(Def_lev,"248",248,"	<prop n=""MaxAmmoShotgun"" v=""20""/>")
;checks more ammo option to see what to set m60 ammo to and fix amount of m60 ammo available to craft
gui,1:Submit,nohide
GuiControlGet,custom_wep_var
	IfEqual, custom_wep_var, 1
goto, no_is_cust_wep_enabled_yes
	IfEqual,custom_wep_var,0
goto, no_is_cust_wep_enabled_no
	return ;shouldn't be needed but why not ... looks good I guess
no_is_cust_wep_enabled_yes:
TF_ReplaceLine(Def_lev,"249",249,"	<prop n=""MaxAmmoSniper"" v=""200""/>")
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("more ammo","➤Hold more ammo disabled.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,more ammo,➤Hold more ammo Disabled.
Enable_BUTTONS_Function()
return        
no_is_cust_wep_enabled_no:
TF_ReplaceLine(Def_lev,"249",249,"	<prop n=""MaxAmmoSniper"" v=""15""/>")
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("more ammo","➤Hold more ammo disabled.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,more ammo,➤Hold more ammo Disabled.
Enable_BUTTONS_Function()
return        




deeper_pockets:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,Even_Deeper_pockets_var
		IfEqual, Even_Deeper_pockets_var, 1
goto, Even_Deeper_pockets_var_yes
		IfEqual,Even_Deeper_pockets_var,0
goto, Even_Deeper_pockets_var_no
	return

Even_Deeper_pockets_var_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;logan
TF_ReplaceLine(logan_skills,"165",165,"        <skill id=""DeeperPockets"" cat=""Tree3"" max_level=""3"" tier=""1"" desc_params=""6;12;18"">")
TF_ReplaceLine(logan_skills,"167",167,"            <effect id=""InventorySize"" change=""6""/>")
;purna
TF_ReplaceLine(purna_skills,"170",170,"        <skill id=""DeeperPockets"" cat=""Tree3"" max_level=""3"" tier=""1"" desc_params=""6;12;18"">")
TF_ReplaceLine(purna_skills,"172",172,"            <effect id=""InventorySize"" change=""6""/>")
;samb
 TF_ReplaceLine(samb_skills,"162",162,"        <skill id=""DeeperPockets"" cat=""Tree3"" max_level=""3"" tier=""2"" desc_params=""6;12;18"">")
 TF_ReplaceLine(samb_skills,"164",164,"            <effect id=""InventorySize"" change=""6""/>")
;xian
 TF_ReplaceLine(xian_skills,"119",119,"        <skill id=""DeeperPockets"" cat=""Tree3"" max_level=""3"" tier=""2"" desc_params=""6;12;18"">")
 TF_ReplaceLine(xian_skills,"121",121,"            <effect id=""InventorySize"" change=""6""/>")
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("Even Deeper pockets","➤Even deeper pockets enabled`n  To use: Please purchase `""deeper pockets`"" skill.`n`nPLEASE NOTE: If you are not starting a new play through (new character) then`n make sure you haven't got any of the ""Deeper pockets"" skills unlocked yet `notherwise this is pointless to enable",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Even Deeper pockets,➤Even deeper pockets enabled`n  To use: Please purchase `"deeper pockets`" skill.`n`nPLEASE NOTE: If you are not starting a new play through (new character) then`n make sure you haven't got any of the ""Deeper pockets"" skills unlocked yet otherwise this is pointless to enable
Enable_BUTTONS_Function()
return
Even_Deeper_pockets_var_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;logan
TF_ReplaceLine(logan_skills,"165",165,"        <skill id=""DeeperPockets"" cat=""Tree3"" max_level=""3"" tier=""1"" desc_params=""2;4;6"">")
TF_ReplaceLine(logan_skills,"167",167,"            <effect id=""InventorySize"" change=""2""/>")
;purna
TF_ReplaceLine(purna_skills,"170",170,"        <skill id=""DeeperPockets"" cat=""Tree3"" max_level=""3"" tier=""1"" desc_params=""2;4;6"">")
TF_ReplaceLine(purna_skills,"172",172,"            <effect id=""InventorySize"" change=""2""/>")
;samb
 TF_ReplaceLine(samb_skills,"162",162,"        <skill id=""DeeperPockets"" cat=""Tree3"" max_level=""3"" tier=""2"" desc_params=""2;4;6"">")
 TF_ReplaceLine(samb_skills,"164",164,"            <effect id=""InventorySize"" change=""2""/>")
;xian
 TF_ReplaceLine(xian_skills,"119",119,"        <skill id=""DeeperPockets"" cat=""Tree3"" max_level=""3"" tier=""2"" desc_params=""2;4;6"">")
 TF_ReplaceLine(xian_skills,"121",121,"            <effect id=""InventorySize"" change=""2""/>")
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
CustomMsgBox("Even Deeper pockets","➤Even deeper pockets disabled",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Even Deeper pockets,➤Even deeper pockets disabled.
Enable_BUTTONS_Function()
return 

betterweppov:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,better_wep_pov_var
IfEqual, better_wep_pov_var, 1
goto, better_wep_pov_var_yes
IfEqual,better_wep_pov_var,0
goto, better_wep_pov_var_no
return

better_wep_pov_var_yes:
DISABLE_BUTTONS_Function()
gui,1: Submit, NoHide
If (ddl = "62 default")
    Goto,betterweppov_62 
If (ddl = "72")
	Goto,betterweppov_72
If (ddl = "82")
	Goto,betterweppov_82
return

betterweppov_62:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian --wep_pov_EDIT"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;---weapon positions 
;Fury_guns\\\\\\\\\\\\\\\\\\
;Fury revolver-----------------------------------------------------------------------///////colt\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"265",265,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_spec,"288",288,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Fury m9-----------------------------------------------------------------------///////colt\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"345",345,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_spec,"369",369,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotguns\\\\\\\\\\\\\\\\\\\\
;leg_crowd
TF_ReplaceLine(INV_GEN,"20671",20671,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.010]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20678",20678,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shorty
TF_ReplaceLine(INV_GEN,"17297",17297,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17310",17310,"        AimFov(1.1); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgen
TF_ReplaceLine(INV_GEN,"17479",17479,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot b_gen
TF_ReplaceLine(INV_GEN,"17663",17663,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot c_gen
TF_ReplaceLine(INV_GEN,"17847",17847,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot d_gen
TF_ReplaceLine(INV_GEN,"18024",18024,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18031",18031,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot E_gen
TF_ReplaceLine(INV_GEN,"18208",18208,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18215",18215,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot F_gen
TF_ReplaceLine(INV_GEN,"18392",18392,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18399",18399,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;Defender----------------------------------------------------------------------------------////////Defender\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"20858",20858,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"20865",20865,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"20878",20878,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"20913",20913,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20948",20948,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20983",20983,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"21018",21018,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20914",20914,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20949",20949,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20984",20984,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"21019",21019,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;singleshot b----------------------------------------------------------------------------    ------////////singleshot b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"20240",20240,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"20247",20247,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"20260",20260,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"20295",20295,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20334",20334,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20373",20373,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20412",20412,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20296",20296,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20335",20335,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20374",20374,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20413",20413,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;singleshot----------------------------------------------------------------------------------////////singleshot\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"20022",20022,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"20029",20029,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"20042",20042,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"20077",20077,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20116",20116,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20155",20155,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20194",20194,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20078",20078,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20117",20117,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20156",20156,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20195",20195,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;Burst b----------------------------------------------------------------------------------////////Burst b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19804",19804,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"19811",19811,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19824",19824,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19859",19859,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19898",19898,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19937",19937,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19976",19976,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19860",19860,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19899",19899,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19938",19938,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19977",19977,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;Burst---------------------------------done-------------------------------------------------////////Burst\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19586",19586,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"19593",19593,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19606",19606,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19641",19641,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19680",19680,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19719",19719,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19758",19758,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19642",19642,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19681",19681,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19720",19720,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19759",19759,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto e gen----------------------------------------------------------------------------------////////Auto e gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19384",19384,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"19391",19391,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19404",19404,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19439",19439,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19474",19474,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19509",19509,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19544",19544,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19440",19440,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19475",19475,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19510",19510,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19545",19545,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto d gen---------------------------------------------------------------------------------////////Auto d gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19182",19182,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"19189",19189,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19202",19202,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19237",19237,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19272",19272,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19307",19307,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19342",19342,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19238",19238,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19273",19273,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19308",19308,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19343",19343,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto c gen----------------------------------------------------------------------------------////////Auto c gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18980",18980,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"18987",18987,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19000",19000,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19035",19035,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19070",19070,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19105",19105,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19140",19140,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19036",19036,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19071",19071,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19106",19106,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19141",19141,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto gen----------------------------------------------------------------------------------////////Auto gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18576",18576,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"18583",18583,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"18596",18596,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"18631",18631,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18666",18666,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18701",18701,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18736",18736,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot
TF_ReplaceLine(INV_GEN,"18632",18632,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18667",18667,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18702",18702,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18737",18737,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto b gen----------------------------------------------------------------------------------////////Auto b gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18778",18778,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"18785",18785,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"18798",18798,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"18833",18833,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18868",18868,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18903",18903,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18938",18938,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot
TF_ReplaceLine(INV_GEN,"18834",18834,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18869",18869,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18904",18904,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18939",18939,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;heavy pistol----------------------------------------------------------------------------------///////heavy pistol\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"17089",17089,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"17102",17102,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"17137",17137,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.120]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17174",17174,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.120]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17211",17211,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.120]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17248",17248,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.120]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")

;McCalls----------------------------------------------------------------------------------///////McCalls\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"20468",20468,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"20481",20481,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"20517",20517,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20554",20554,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20591",20591,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20628",20628,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")

;Colt revolver-----------------------------------------------------------------------///////colt\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16457",16457,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"16471",16471,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"16507",16507,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16544",16544,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16581",16581,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16618",16618,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")

;M9----------------------------------------------------------------------------------///////M9\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16878",16878,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"16891",16891,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"16927",16927,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16964",16964,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17001",17001,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17038",17038,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")

;Magnum revolver--------------------------------------------------------------------///////magnum\\\\\\\-------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16668",16668,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"16681",16681,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"16716",16716,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16753",16753,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16790",16790,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16827",16827,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
Goto, swayfix_62
return

weppovfinal_62_final:
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian --wep_pov_EDIT"))
CustomMsgBox("Firearms overhaul","➤Firearms tweaks and fixes enabled (fov 62)`n•Removes blur on weapon sights.`n•Pushes weapons out to more realistic positions.`n•Improves hip-fire holding position of rifles to a more low-right position allowing better field of view.`n•Fixes iron sight and red dot misalignment bug.`n•Fixes most clipping when at a high FOV (Scales with selected FOV).",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Wep POV,➤Firearms tweaks and fixes enabled (fov 62).
Enable_BUTTONS_Function()
return

betterweppov_72:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian --wep_pov_EDIT"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;---weapon positions
;Fury_guns\\\\\\\\\\\\\\\\\\
;Fury revolver-----------------------------------------------------------------------///////furycolt\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"265",265,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_spec,"288",288,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Fury m9-----------------------------------------------------------------------///////furym9\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"345",345,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_spec,"369",369,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotguns\\\\\\\\\\\\\\\\\\\\
;leg_crowd-----------------------------------------------------------------------/////leg_crwd\\\\\-------------------------------------------------------------------------
TF_ReplaceLine(INV_GEN,"20671",20671,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20678",20678,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shorty
TF_ReplaceLine(INV_GEN,"17297",17297,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17310",17310,"        AimFov(1.3); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgen
TF_ReplaceLine(INV_GEN,"17479",17479,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot b_gen
TF_ReplaceLine(INV_GEN,"17663",17663,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot c_gen
TF_ReplaceLine(INV_GEN,"17847",17847,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot d_gen
TF_ReplaceLine(INV_GEN,"18024",18024,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18031",18031,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot E_gen
TF_ReplaceLine(INV_GEN,"18208",18208,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18215",18215,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot F_gen
TF_ReplaceLine(INV_GEN,"18392",18392,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18399",18399,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;Defender----------------------------------------------------------------------------------////////Defender\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"20858",20858,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"20865",20865,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"20878",20878,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"20913",20913,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20948",20948,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20983",20983,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"21018",21018,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20914",20914,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20949",20949,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20984",20984,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"21019",21019,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;singleshot b----------------------------------------------------------------------------------////////singleshot b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"20240",20240,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"20247",20247,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"20260",20260,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"20295",20295,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20334",20334,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20373",20373,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20412",20412,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20296",20296,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20335",20335,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20374",20374,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20413",20413,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;singleshot----------------------------------------------------------------------------------////////singleshot\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"20022",20022,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"20029",20029,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"20042",20042,"        AimFov(1.8); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"20077",20077,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20116",20116,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20155",20155,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20194",20194,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20078",20078,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20117",20117,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20156",20156,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20195",20195,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;Burst b----------------------------------------------------------------------------------////////Burst b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19804",19804,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"19811",19811,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19824",19824,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19859",19859,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19898",19898,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19937",19937,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19976",19976,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19860",19860,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19899",19899,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19938",19938,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19977",19977,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;Burst----------------------------------------------------------------------------------////////Burst\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19586",19586,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"19593",19593,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19606",19606,"        AimFov(1.8); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19641",19641,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19680",19680,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19719",19719,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19758",19758,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19642",19642,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19681",19681,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19720",19720,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19759",19759,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto e gen----------------------------------------------------------------------------------////////Auto e gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19384",19384,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"19391",19391,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19404",19404,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19439",19439,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19474",19474,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19509",19509,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19544",19544,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19440",19440,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19475",19475,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19510",19510,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19545",19545,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto d gen----------------------------------------------------------------------------------////////Auto d gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19182",19182,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"19189",19189,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19202",19202,"        AimFov(1.7); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19237",19237,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19272",19272,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19307",19307,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19342",19342,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19238",19238,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19273",19273,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19308",19308,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19343",19343,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto c gen----------------------------------------------------------------------------------////////Auto c gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18980",18980,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"18987",18987,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19000",19000,"        AimFov(1.8); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19035",19035,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19070",19070,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19105",19105,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19140",19140,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19036",19036,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19071",19071,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19106",19106,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19141",19141,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto gen----------------------------------------------------------------------------------////////Auto gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18576",18576,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"18583",18583,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"18596",18596,"        AimFov(1.8); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"18631",18631,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18666",18666,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18701",18701,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18736",18736,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot
TF_ReplaceLine(INV_GEN,"18632",18632,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18667",18667,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18702",18702,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18737",18737,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto b gen----------------------------------------------------------------------------------////////Auto b gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18778",18778,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"18785",18785,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"18798",18798,"        AimFov(1.8); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"18833",18833,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18868",18868,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18903",18903,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18938",18938,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot
TF_ReplaceLine(INV_GEN,"18834",18834,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18869",18869,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18904",18904,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18939",18939,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;heavy pistol----------------------------------------------------------------------------------///////heavy pistol\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"17089",17089,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"17102",17102,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"17137",17137,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17174",17174,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17211",17211,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17248",17248,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")

;McCalls----------------------------------------------------------------------------------///////McCalls\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"20468",20468,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"20481",20481,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"20517",20517,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20554",20554,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20591",20591,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20628",20628,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")

;Colt revolver-----------------------------------------------------------------------///////colt\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16457",16457,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"16471",16471,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"16507",16507,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16544",16544,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16581",16581,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16618",16618,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")

;M9----------------------------------------------------------------------------------///////M9\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16878",16878,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"16891",16891,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"16927",16927,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16964",16964,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17001",17001,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17038",17038,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")

;Magnum revolver--------------------------------------------------------------------///////magnum\\\\\\\-------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16668",16668,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"16681",16681,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"16716",16716,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16753",16753,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16790",16790,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16827",16827,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
Goto, swayfix_72
return

weppovfinal_72_final:
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian --wep_pov_EDIT"))
CustomMsgBox("Firearms overhaul","➤Firearms tweaks and fixes enabled (fov 72).`n•Removes blur on weapon sights.`n•Pushes weapons out to more realistic positions.`n•Improves hip-fire holding position of rifles to a more low-right position allowing better field of view.`n•Fixes iron sight and red dot misalignment bug.`n•Fixes most clipping when at a high FOV (Scales with selected FOV).",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Wep POV,➤Firearms tweaks and fixes enabled (fov 72).
Enable_BUTTONS_Function()
return

betterweppov_82:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian --wep_pov_EDIT"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;---weapon positions 
;Fury_guns\\\\\\\\\\\\\\\\\\
;Fury revolver-----------------------------------------------------------------------///////furycolt\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"265",265,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_spec,"288",288,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Fury m9-----------------------------------------------------------------------///////furym9\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"345",345,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_spec,"369",369,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotguns\\\\\\\\\\\\\\\\\\\\
;leg_crowd
TF_ReplaceLine(INV_GEN,"20671",20671,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20678",20678,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shorty
TF_ReplaceLine(INV_GEN,"17297",17297,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17310",17310,"        AimFov(1.2); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgen
TF_ReplaceLine(INV_GEN,"17479",17479,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot b_gen
TF_ReplaceLine(INV_GEN,"17663",17663,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot c_gen
TF_ReplaceLine(INV_GEN,"17847",17847,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot d_gen
TF_ReplaceLine(INV_GEN,"18024",18024,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18031",18031,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot E_gen
TF_ReplaceLine(INV_GEN,"18208",18208,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18215",18215,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;shot F_gen
TF_ReplaceLine(INV_GEN,"18392",18392,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18399",18399,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;Defender----------------------------------------------------------------------------------////////Defender\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"20858",20858,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"20865",20865,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"20878",20878,"        AimFov(1.9); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"20913",20913,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20948",20948,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20983",20983,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"21018",21018,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20914",20914,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20949",20949,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20984",20984,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"21019",21019,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;singleshot b----------------------------------------------------------------------------------////////singleshot b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"20240",20240,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"20247",20247,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"20260",20260,"        AimFov(1.9); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"20295",20295,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20334",20334,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20373",20373,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20412",20412,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20296",20296,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20335",20335,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20374",20374,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20413",20413,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;singleshot----------------------------------------------------------------------------------////////singleshot\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"20022",20022,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"20029",20029,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"20042",20042,"        AimFov(2.0); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"20077",20077,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20116",20116,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20155",20155,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20194",20194,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20078",20078,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20117",20117,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20156",20156,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20195",20195,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")


;Burst b----------------------------------------------------------------------------------////////Burst b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19804",19804,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"19811",19811,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19824",19824,"        AimFov(1.9); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19859",19859,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19898",19898,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19937",19937,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19976",19976,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19860",19860,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19899",19899,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19938",19938,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19977",19977,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;Burst----------------------------------------------------------------------------------////////Burst\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19586",19586,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"19593",19593,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19606",19606,"        AimFov(2.0); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19641",19641,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19680",19680,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19719",19719,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19758",19758,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19642",19642,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19681",19681,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19720",19720,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19759",19759,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto e gen----------------------------------------------------------------------------------////////Auto e gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19384",19384,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"19391",19391,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19404",19404,"        AimFov(1.9); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19439",19439,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19474",19474,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19509",19509,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19544",19544,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19440",19440,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19475",19475,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19510",19510,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19545",19545,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto d gen----------------------------------------------------------------------------------////////Auto d gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19182",19182,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"19189",19189,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19202",19202,"        AimFov(1.9); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19237",19237,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19272",19272,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19307",19307,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19342",19342,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19238",19238,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19273",19273,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19308",19308,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19343",19343,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto c gen----------------------------------------------------------------------------------////////Auto c gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18980",18980,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"18987",18987,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"19000",19000,"        AimFov(2.0); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"19035",19035,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19070",19070,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19105",19105,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19140",19140,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19036",19036,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19071",19071,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19106",19106,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"19141",19141,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto gen----------------------------------------------------------------------------------////////Auto gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18576",18576,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"18583",18583,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"18596",18596,"        AimFov(2.0); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"18631",18631,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18666",18666,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18701",18701,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18736",18736,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot
TF_ReplaceLine(INV_GEN,"18632",18632,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18667",18667,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18702",18702,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18737",18737,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;auto b gen----------------------------------------------------------------------------------////////Auto b gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18778",18778,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian --wep_pov_EDIT")
;blur
TF_ReplaceLine(INV_GEN,"18785",18785,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"18798",18798,"        AimFov(2.0); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"18833",18833,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18868",18868,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18903",18903,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18938",18938,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;Handrot
TF_ReplaceLine(INV_GEN,"18834",18834,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18869",18869,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18904",18904,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18939",18939,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian --wep_pov_EDIT")

;heavy pistol----------------------------------------------------------------------------------///////heavy pistol\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"17089",17089,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"17102",17102,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"17137",17137,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.040]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17174",17174,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.045]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17211",17211,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.045]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17248",17248,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.045]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")

;McCalls----------------------------------------------------------------------------------///////McCalls\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"20468",20468,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"20481",20481,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"20517",20517,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20554",20554,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20591",20591,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20628",20628,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")

;Colt revolver-----------------------------------------------------------------------///////colt\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16457",16457,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"16471",16471,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"16507",16507,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16544",16544,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16581",16581,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16618",16618,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")

;M9----------------------------------------------------------------------------------///////M9\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16878",16878,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"16891",16891,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"16927",16927,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16964",16964,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17001",17001,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17038",17038,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")

;Magnum revolver--------------------------------------------------------------------///////magnum\\\\\\\-------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16668",16668,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;aimfov
TF_ReplaceLine(INV_GEN,"16681",16681,"        AimFov(1.05); //Modified_by_FireEyeEian --wep_pov_EDIT")
;handoffset
TF_ReplaceLine(INV_GEN,"16716",16716,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16753",16753,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16790",16790,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16827",16827,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian --wep_pov_EDIT")
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
Goto, swayfix_82
return

weppovfinal_82_final:
SplashTextOff
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian --wep_pov_EDIT"))
CustomMsgBox("Firearms overhaul","➤Firearms tweaks and fixes enabled (fov 82).`n•Removes blur on weapon sights.`n•Pushes weapons out to more realistic positions.`n•Improves hip-fire holding position of rifles to a more low-right position allowing better field of view.`n•Fixes iron sight and red dot misalignment bug.`n•Fixes most clipping when at a high FOV (Scale with selected FOV).",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Wep POV,➤Firearms tweaks and fixes enabled (fov 82).
Enable_BUTTONS_Function()
return

swayfix_62:
;m9
TF_ReplaceLine(INV_GEN,"16928",16928,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16965",16965,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17002",17002,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17039",17039,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Colt
TF_ReplaceLine(INV_GEN,"16508",16508,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16545",16545,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16582",16582,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16619",16619,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Deagle
TF_ReplaceLine(INV_GEN,"17138",17138,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17175",17175,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17212",17212,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17249",17249,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Magnum
TF_ReplaceLine(INV_GEN,"16717",16717,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16754",16754,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16791",16791,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16828",16828,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Mcall's
TF_ReplaceLine(INV_GEN,"20518",20518,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20555",20555,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20592",20592,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20629",20629,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian --wep_pov_EDIT")
Goto, weppovfinal_62_final
return

swayfix_72:
;M9
TF_ReplaceLine(INV_GEN,"16928",16928,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16965",16965,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17002",17002,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17039",17039,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Colt
TF_ReplaceLine(INV_GEN,"16508",16508,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16545",16545,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16582",16582,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16619",16619,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Deagle
TF_ReplaceLine(INV_GEN,"17138",17138,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17175",17175,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17212",17212,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17249",17249,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Magnum
TF_ReplaceLine(INV_GEN,"16717",16717,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16754",16754,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16791",16791,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16828",16828,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Mcall's
TF_ReplaceLine(INV_GEN,"20518",20518,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20555",20555,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20592",20592,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20629",20629,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian --wep_pov_EDIT")
;;;;;
;;;;;
;shotgun_gen
TF_ReplaceLine(INV_GEN,"17533",17533,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17562",17562,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17591",17591,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17620",17620,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgun_bgen
TF_ReplaceLine(INV_GEN,"17717",17717,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17746",17746,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17775",17775,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17804",17804,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgun_cgen
TF_ReplaceLine(INV_GEN,"17901",17901,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17930",17930,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17959",17959,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17988",17988,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgun_dgen
TF_ReplaceLine(INV_GEN,"18085",18085,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18114",18114,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18143",18143,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18172",18172,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgun_egen
TF_ReplaceLine(INV_GEN,"18269",18269,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18298",18298,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18327",18327,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18356",18356,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgun_fgen
TF_ReplaceLine(INV_GEN,"18453",18453,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18482",18482,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18511",18511,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18540",18540,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgun_shorty
TF_ReplaceLine(INV_GEN,"17345",17345,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17375",17375,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17405",17405,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17435",17435,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian --wep_pov_EDIT")
Goto, weppovfinal_72_final
return

swayfix_82:
;M9
TF_ReplaceLine(INV_GEN,"16928",16928,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16965",16965,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17002",17002,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17039",17039,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Colt
TF_ReplaceLine(INV_GEN,"16508",16508,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16545",16545,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16582",16582,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16619",16619,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Deagle
TF_ReplaceLine(INV_GEN,"17138",17138,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17175",17175,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17212",17212,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17249",17249,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Magnum
TF_ReplaceLine(INV_GEN,"16717",16717,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16754",16754,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16791",16791,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"16828",16828,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
;Mcall's
TF_ReplaceLine(INV_GEN,"20518",20518,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20555",20555,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20592",20592,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"20629",20629,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian --wep_pov_EDIT")
;;;;;
;;;;;
;shotgun_gen
TF_ReplaceLine(INV_GEN,"17533",17533,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17562",17562,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17591",17591,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17620",17620,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgun_bgen
TF_ReplaceLine(INV_GEN,"17717",17717,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17746",17746,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17775",17775,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17804",17804,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgun_cgen
TF_ReplaceLine(INV_GEN,"17901",17901,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17930",17930,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17959",17959,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17988",17988,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgun_dgen
TF_ReplaceLine(INV_GEN,"18085",18085,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18114",18114,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18143",18143,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18172",18172,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgun_egen
TF_ReplaceLine(INV_GEN,"18269",18269,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18298",18298,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18327",18327,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18356",18356,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgun_fgen
TF_ReplaceLine(INV_GEN,"18453",18453,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18482",18482,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18511",18511,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"18540",18540,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
;shotgun_shorty
TF_ReplaceLine(INV_GEN,"17345",17345,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17375",17375,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17405",17405,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
TF_ReplaceLine(INV_GEN,"17435",17435,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian --wep_pov_EDIT")
Goto, weppovfinal_82_final
return


;--------------------------------------------------set to NO -----\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\/////////////////////////////////////////////////////////////////////////////////
;--------------------------------------------------set to NO -----\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\/////////////////////////////////////////////////////////////////////////////////
;--------------------------------------------------set to NO -----\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\/////////////////////////////////////////////////////////////////////////////////
;--------------------------------------------------set to NO -----\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\/////////////////////////////////////////////////////////////////////////////////
;--------------------------------------------------set to NO -----\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\/////////////////////////////////////////////////////////////////////////////////
better_wep_pov_var_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;swayfix
;M9
TF_ReplaceLine(INV_GEN,"16928",16928,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16965",16965,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17002",17002,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17039",17039,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
;Colt
TF_ReplaceLine(INV_GEN,"16508",16508,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16545",16545,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16582",16582,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16619",16619,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
;Deagle
TF_ReplaceLine(INV_GEN,"17138",17138,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17175",17175,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17212",17212,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17249",17249,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
;Magnum
TF_ReplaceLine(INV_GEN,"16717",16717,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16754",16754,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16791",16791,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16828",16828,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
;Mcall's
TF_ReplaceLine(INV_GEN,"20518",20518,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20555",20555,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20592",20592,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20629",20629,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
;;;;;
;;;;;
;shotgun_gen
TF_ReplaceLine(INV_GEN,"17533",17533,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17562",17562,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17591",17591,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17620",17620,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
;shotgun_bgen
TF_ReplaceLine(INV_GEN,"17717",17717,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17746",17746,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17775",17775,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17804",17804,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
;shotgun_cgen
TF_ReplaceLine(INV_GEN,"17901",17901,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17930",17930,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17959",17959,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17988",17988,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
;shotgun_dgen
TF_ReplaceLine(INV_GEN,"18085",18085,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18114",18114,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18143",18143,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18172",18172,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
;shotgun_egen
TF_ReplaceLine(INV_GEN,"18269",18269,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18298",18298,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18327",18327,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18356",18356,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
;shotgun_fgen
TF_ReplaceLine(INV_GEN,"18453",18453,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18482",18482,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18511",18511,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18540",18540,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
;shotgun_shorty
TF_ReplaceLine(INV_GEN,"17345",17345,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17375",17375,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17405",17405,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17435",17435,"        SwayMaxAngle(0.02);  //this_is_the_default_value")
;---weapon positions 
;Fury_guns\\\\\\\\\\\\\\\\\\
;Fury revolver-----------------------------------------------------------------------///////furycolt\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"265",265,"        HolderOffset([0.0,0.1,0.0]);    // Converted //Modified_by_FireEyeEian //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_spec,"288",288,"        AimFov(1.5); //Modified_by_FireEyeEian //this_is_the_default_value")
;Fury m9-----------------------------------------------------------------------///////furym9\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"345",345,"        HolderOffset([0.0,0.1,0.0]);    // Converted //Modified_by_FireEyeEian //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_spec,"369",369,"        AimFov(1.5); //Modified_by_FireEyeEian //this_is_the_default_value")
;shotguns\\\\\\\\\\\\\\\\\\\\
;leg_crowd 
TF_ReplaceLine(INV_GEN,"20671",20671,"        HolderOffset([0.0,0.1,0.0]);    // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20678",20678,"        AimBlurStart(0.3); // Converted //this_is_the_default_value")
;shorty
TF_ReplaceLine(INV_GEN,"17297",17297,"        AimBlurStart(0.3); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17310",17310,"        AimFov(1.5); //this_is_the_default_value")
;shotgen
TF_ReplaceLine(INV_GEN,"17479",17479,"        AimBlurStart(0.3); // Converted //this_is_the_default_value")
;shot b_gen
TF_ReplaceLine(INV_GEN,"17663",17663,"        AimBlurStart(0.3); // Converted //this_is_the_default_value")
;shot c_gen
TF_ReplaceLine(INV_GEN,"17847",17847,"        AimBlurStart(0.3); // Converted //this_is_the_default_value ")
;shot d_gen
TF_ReplaceLine(INV_GEN,"18024",18024,"        HolderOffset([0.0,0.1,0.0]);    // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18031",18031,"        AimBlurStart(0.3); // Converted //this_is_the_default_value")
;shot E_gen
TF_ReplaceLine(INV_GEN,"18208",18208,"        HolderOffset([0.0,0.1,0.0]);    // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18215",18215,"        AimBlurStart(0.3); // Converted //this_is_the_default_value")
;shot F_gen
TF_ReplaceLine(INV_GEN,"18392",18392,"        HolderOffset([0.0,0.1,0.0]);    // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18399",18399,"        AimBlurStart(0.3); // Converted //this_is_the_default_value")
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;Defender----------------------------------------------------------------------------------////////Defender\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"20858",20858,"        HolderOffset([0.0,0.1,0.0]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"20865",20865,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"20878",20878,"        AimFov(2.0); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"20913",20913,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20948",20948,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20983",20983,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"21018",21018,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
;Handrot
TF_ReplaceLine(INV_GEN,"20914",20914,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20949",20949,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20984",20984,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"21019",21019,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")

;singleshot b----------------------------------------------------------------------------------////////singleshot b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"20240",20240,"        HolderOffset([0.0,0.1,0.0]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"20247",20247,"        AimBlurStart(0.2); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"20260",20260,"        AimFov(2.0); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"20295",20295,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20334",20334,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20373",20373,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20412",20412,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
;Handrot
TF_ReplaceLine(INV_GEN,"20296",20296,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20335",20335,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20374",20374,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20413",20413,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")

;singleshot----------------------------------------------------------------------------------////////singleshot\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"20022",20022,"        HolderOffset([0.0,0.1,0.0]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"20029",20029,"        AimBlurStart(0.2); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"20042",20042,"        AimFov(2.0); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"20077",20077,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20116",20116,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20155",20155,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20194",20194,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
;Handrot
TF_ReplaceLine(INV_GEN,"20078",20078,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20117",20117,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20156",20156,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20195",20195,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value") 
;burst b----------------------------------------------------------------------------------////////Burst b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"19804",19804,"        HolderOffset([0.0,0.1,0.0]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"19811",19811,"        AimBlurStart(0.2); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"19824",19824,"        AimFov(2.0); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"19859",19859,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19898",19898,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19937",19937,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19976",19976,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
;Handrot
TF_ReplaceLine(INV_GEN,"19860",19860,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19899",19899,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19938",19938,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19977",19977,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")

;burst----------------------------------------------------------------------------------////////Burst\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"19586",19586,"        HolderOffset([0.0,0.1,0.0]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"19593",19593,"        AimBlurStart(0.2); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"19606",19606,"        AimFov(2.0); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"19641",19641,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19680",19680,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19719",19719,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19758",19758,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
;Handrot
TF_ReplaceLine(INV_GEN,"19642",19642,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19681",19681,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19720",19720,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19759",19759,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")

;auto e gen----------------------------------------------------------------------------------////////Auto e gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"19384",19384,"        HolderOffset([0.1,-0.1,0.15]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"19391",19391,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"19404",19404,"        AimFov(2.0); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"19439",19439,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19474",19474,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19509",19509,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19544",19544,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
;Handrot
TF_ReplaceLine(INV_GEN,"19440",19440,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19475",19475,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19510",19510,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19545",19545,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")

;auto d gen----------------------------------------------------------------------------------////////Auto d gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"19182",19182,"        HolderOffset([0.1,-0.1,0.15]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"19189",19189,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"19202",19202,"        AimFov(2.0); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"19237",19237,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19272",19272,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19307",19307,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19342",19342,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
;Handrot
TF_ReplaceLine(INV_GEN,"19238",19238,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19273",19273,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19308",19308,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19343",19343,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")

;auto c gen----------------------------------------------------------------------------------////////Auto c gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"18980",18980,"        HolderOffset([0.1,-0.1,0.15]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"18987",18987,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"19000",19000,"        AimFov(2.0); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"19035",19035,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19070",19070,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19105",19105,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19140",19140,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
;Handrot
TF_ReplaceLine(INV_GEN,"19036",19036,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19071",19071,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19106",19106,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19141",19141,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")

;auto  gen----------------------------------------------------------------------------------////////Auto gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"18576",18576,"        HolderOffset([0.1,-0.1,0.15]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"18583",18583,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"18596",18596,"        AimFov(2.0); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"18631",18631,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18666",18666,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]`); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18701",18701,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18736",18736,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
;Handrot
TF_ReplaceLine(INV_GEN,"18632",18632,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18667",18667,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18702",18702,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18737",18737,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
;auto b gen----------------------------------------------------------------------------------////////Auto b gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"18778",18778,"        HolderOffset([0.1,-0.1,0.15]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"18785",18785,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"18798",18798,"        AimFov(2.0); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"18833",18833,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18868",18868,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18903",18903,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18938",18938,"        HandOffset(HandModification_Normal, [-0.0059,-0.03391,0.070]); // Converted //this_is_the_default_value")
;Handrot
TF_ReplaceLine(INV_GEN,"18834",18834,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18869",18869,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18904",18904,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18939",18939,"        HandRot(HandModification_Normal, [-0.1875,0.1875,0.0]); //this_is_the_default_value")

;heavy pistol----------------------------------------------------------------------------------///////heavy pistol\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"17089",17089,"        AimBlurStart(0.26); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"17102",17102,"        AimFov(2.0);  //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"17137",17137,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17174",17174,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17211",17211,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17248",17248,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //this_is_the_default_value")


;McCalls----------------------------------------------------------------------------------///////McCalls\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"20468",20468,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"20481",20481,"        AimFov(1.5); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"20517",20517,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20554",20554,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20591",20591,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20628",20628,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")


;Colt revolver-----------------------------------------------------------------------///////colt\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16457",16457,"        AimBlurStart(0.3); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"16471",16471,"        AimFov(2.0); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"16507",16507,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16544",16544,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16581",16581,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16618",16618,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //this_is_the_default_value")



;M9----------------------------------------------------------------------------------///////M9\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16878",16878,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"16891",16891,"        AimFov(2.0); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"16927",16927,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16964",16964,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17001",17001,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17038",17038,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")



;Magnum revolver--------------------------------------------------------------------///////magnum\\\\\\\-------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16668",16668,"        AimBlurStart(0.4); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"16681",16681,"        AimFov(2.5); //this_is_the_default_value")
;handoffset
TF_ReplaceLine(INV_GEN,"16716",16716,"        HandOffset(HandModification_Normal, [0.00125,0.00125,0.16]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16753",16753,"        HandOffset(HandModification_Normal, [0.00125,0.00125,0.16]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16790",16790,"        HandOffset(HandModification_Normal, [0.00125,0.00125,0.16]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16827",16827,"        HandOffset(HandModification_Normal, [0.00125,0.00125,0.16]); // Converted //this_is_the_default_value")
SplashTextOff
CustomMsgBox("Firearms overhaul","➤Firearms tweaks and fixes Disabled.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Wep POV,➤Firearms tweaks and fixes disabled.
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Enable_BUTTONS_Function()
return

improved_loot:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,improved_loot_var
IfEqual, improved_loot_var, 1
goto, improved_loot_yes
IfEqual,improved_loot_var,0
goto, improved_loot_no
return
Continue_on_improved_loot:
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return


improved_loot_yes:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;default chest
TF_ReplaceLine(def_loot,"66",66,"		ColorWeight(Color_White, 55.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"67",67,"		ColorWeight(Color_Green, 32.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"68",68,"		ColorWeight(Color_Violet, 8.0);	//Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"69",69,"		ColorWeight(Color_Yellow, 3.0);	//Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"70",70,"		ColorWeight(Color_Orange, 2.0);	//Modified_by_FireEyeEian")
;lockpick1
TF_ReplaceLine(def_loot,"75",75,"		ColorWeight(Color_White, 0.0);   //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"76",76,"		ColorWeight(Color_Green, 77.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"77",77,"		ColorWeight(Color_Violet, 10.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"78",78,"		ColorWeight(Color_Yellow, 8.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"79",79,"		ColorWeight(Color_Orange, 5.0);  //Modified_by_FireEyeEian")
;lockpick2
TF_ReplaceLine(def_loot,"84",84,"		ColorWeight(Color_White, 0.0);   //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"85",85,"		ColorWeight(Color_Green, 55.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"86",86,"		ColorWeight(Color_Violet, 16.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"87",87,"		ColorWeight(Color_Yellow, 15.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"88",88,"		ColorWeight(Color_Orange, 14.0); //Modified_by_FireEyeEian")
;lockpick3
TF_ReplaceLine(def_loot,"93",93,"		ColorWeight(Color_White, 0.0);   //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"94",94,"		ColorWeight(Color_Green, 37.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"95",95,"		ColorWeight(Color_Violet, 33.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"96",96,"		ColorWeight(Color_Yellow, 14.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"97",97,"		ColorWeight(Color_Orange, 16.0); //Modified_by_FireEyeEian")
;Ram
TF_ReplaceLine(def_loot,"111",111,"		ColorWeight(Color_White, 0.0);   //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"112",112,"		ColorWeight(Color_Green, 5.0);   //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"113",113,"		ColorWeight(Color_Violet, 30.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"114",114,"		ColorWeight(Color_Yellow, 50.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"115",115,"		ColorWeight(Color_Orange, 15.0); //Modified_by_FireEyeEian")
;MeleeFighter
TF_ReplaceLine(def_loot,"138",138,"		ColorWeight(Color_White, 0.0);    //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"139",139,"		ColorWeight(Color_Green, 6.0);    //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"140",140,"		ColorWeight(Color_Violet, 31.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"141",141,"		ColorWeight(Color_Yellow, 52.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"142",142,"		ColorWeight(Color_Orange, 11.0);  //Modified_by_FireEyeEian")
SplashTextOff
CustomMsgBox("Loot bug","*Just a heads up:  The game doesn't seem to follow what I change in the default.loot file `nSo this mod may or may not work. `n`nlooking into the issue.",error_font,"cf22e30 s20 bold","202020")
;MsgBox just a heads up:  The game doesnt seem to follow what I change in the default.loot file `nSo this mod may or may not work. `n`nlooking into the issue.
CustomMsgBox("Improved loot option","➤Loot will be improved (Chests/Butchers/Rams).",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Improved loot option,➤Loot will be improved (Chests/Butchers/Rams).
MsgBox,36, To cheat or not cheat?, Would you like to enable cheat chest mode?`n(This will make all chests (including butchers and rams) have a drop rate of 100`% for legendary items)
IfMsgBox, No
	Goto, Continue_on_improved_loot
IfMsgBox, yes
   Goto, enable_cheat_chests
return

enable_cheat_chests:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;default chest
TF_ReplaceLine(def_loot,"66",66,"		ColorWeight(Color_White, 0.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"67",67,"		ColorWeight(Color_Green, 0.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"68",68,"		ColorWeight(Color_Violet, 0.0);	//Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"69",69,"		ColorWeight(Color_Yellow, 0.0);	//Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"70",70,"		ColorWeight(Color_Orange, 100.0);	//Modified_by_FireEyeEian")
;lockpick1
TF_ReplaceLine(def_loot,"75",75,"		ColorWeight(Color_White, 0.0);   //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"76",76,"		ColorWeight(Color_Green, 0.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"77",77,"		ColorWeight(Color_Violet, 0.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"78",78,"		ColorWeight(Color_Yellow, 0.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"79",79,"		ColorWeight(Color_Orange, 100.0);  //Modified_by_FireEyeEian")
;lockpick2
TF_ReplaceLine(def_loot,"84",84,"		ColorWeight(Color_White, 0.0);   //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"85",85,"		ColorWeight(Color_Green, 0.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"86",86,"		ColorWeight(Color_Violet, 0.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"87",87,"		ColorWeight(Color_Yellow, 0.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"88",88,"		ColorWeight(Color_Orange, 100.0); //Modified_by_FireEyeEian")
;lockpick3
TF_ReplaceLine(def_loot,"93",93,"		ColorWeight(Color_White, 0.0);   //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"94",94,"		ColorWeight(Color_Green, 0.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"95",95,"		ColorWeight(Color_Violet, 0.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"96",96,"		ColorWeight(Color_Yellow, 0.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"97",97,"		ColorWeight(Color_Orange, 100.0); //Modified_by_FireEyeEian")
;Ram
TF_ReplaceLine(def_loot,"111",111,"		ColorWeight(Color_White, 0.0);   //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"112",112,"		ColorWeight(Color_Green, 0.0);   //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"113",113,"		ColorWeight(Color_Violet, 0.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"114",114,"		ColorWeight(Color_Yellow, 0.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"115",115,"		ColorWeight(Color_Orange, 100.0); //Modified_by_FireEyeEian")
;MeleeFighter
TF_ReplaceLine(def_loot,"138",138,"		ColorWeight(Color_White, 0.0);    //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"139",139,"		ColorWeight(Color_Green, 0.0);    //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"140",140,"		ColorWeight(Color_Violet, 0.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"141",141,"		ColorWeight(Color_Yellow, 0.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"142",142,"		ColorWeight(Color_Orange, 100.0);  //Modified_by_FireEyeEian")
SplashTextOff
CustomMsgBox("Improved loot option","➤Cheat chests enabled (Chests/Butchers/Rams will drop legendary items 100`% of the time).",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Improved loot option,➤Cheat chests enabled (Chests/Butchers/Rams will drop legendary items 100`% of the time).
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

improved_loot_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;default chest
TF_ReplaceLine(def_loot,"66",66,"		ColorWeight(Color_White, 92.0); //this_is_the_default_value")
TF_ReplaceLine(def_loot,"67",67,"		ColorWeight(Color_Green, 5.0);  //this_is_the_default_value")
TF_ReplaceLine(def_loot,"68",68,"		ColorWeight(Color_Violet, 2.0);	//this_is_the_default_value")
TF_ReplaceLine(def_loot,"69",69,"		ColorWeight(Color_Yellow, 1.0);	//this_is_the_default_value")
TF_ReplaceLine(def_loot,"70",70,"		ColorWeight(Color_Orange, 0.0);	//this_is_the_default_value")
;lockpick1
TF_ReplaceLine(def_loot,"75",75,"		ColorWeight(Color_White, 0.0);  //this_is_the_default_value")
TF_ReplaceLine(def_loot,"76",76,"		ColorWeight(Color_Green, 92.0); //this_is_the_default_value")
TF_ReplaceLine(def_loot,"77",77,"		ColorWeight(Color_Violet, 5.0); //this_is_the_default_value")
TF_ReplaceLine(def_loot,"78",78,"		ColorWeight(Color_Yellow, 2.0); //this_is_the_default_value")
TF_ReplaceLine(def_loot,"79",79,"		ColorWeight(Color_Orange, 1.0); //this_is_the_default_value")
;lockpick2
TF_ReplaceLine(def_loot,"84",84,"		ColorWeight(Color_White, 0.0);   //this_is_the_default_value")
TF_ReplaceLine(def_loot,"85",85,"		ColorWeight(Color_Green, 85.0);  //this_is_the_default_value")
TF_ReplaceLine(def_loot,"86",86,"		ColorWeight(Color_Violet, 10.0); //this_is_the_default_value")
TF_ReplaceLine(def_loot,"87",87,"		ColorWeight(Color_Yellow, 4.0);  //this_is_the_default_value")
TF_ReplaceLine(def_loot,"88",88,"		ColorWeight(Color_Orange, 1.0);  //this_is_the_default_value")
;lockpick3
TF_ReplaceLine(def_loot,"93",93,"		ColorWeight(Color_White, 0.0);   //this_is_the_default_value")
TF_ReplaceLine(def_loot,"94",94,"		ColorWeight(Color_Green, 77.0);  //this_is_the_default_value")
TF_ReplaceLine(def_loot,"95",95,"		ColorWeight(Color_Violet, 15.0); //this_is_the_default_value")
TF_ReplaceLine(def_loot,"96",96,"		ColorWeight(Color_Yellow, 6.0);  //this_is_the_default_value")
TF_ReplaceLine(def_loot,"97",97,"		ColorWeight(Color_Orange, 2.0);  //this_is_the_default_value")
;Ram
TF_ReplaceLine(def_loot,"111",111,"		ColorWeight(Color_White, 0.0);   //this_is_the_default_value")
TF_ReplaceLine(def_loot,"112",112,"		ColorWeight(Color_Green, 10.0);  //this_is_the_default_value")
TF_ReplaceLine(def_loot,"113",113,"		ColorWeight(Color_Violet, 30.0); //this_is_the_default_value")
TF_ReplaceLine(def_loot,"114",114,"		ColorWeight(Color_Yellow, 50.0); //this_is_the_default_value")
TF_ReplaceLine(def_loot,"115",115,"		ColorWeight(Color_Orange, 10.0); //this_is_the_default_value")
;MeleeFighter
TF_ReplaceLine(def_loot,"138",138,"		ColorWeight(Color_White, 0.0);    //this_is_the_default_value")
TF_ReplaceLine(def_loot,"139",139,"		ColorWeight(Color_Green, 10.0);   //this_is_the_default_value")
TF_ReplaceLine(def_loot,"140",140,"		ColorWeight(Color_Violet, 30.0);  //this_is_the_default_value")
TF_ReplaceLine(def_loot,"141",141,"		ColorWeight(Color_Yellow, 50.0);  //this_is_the_default_value")
TF_ReplaceLine(def_loot,"142",142,"		ColorWeight(Color_Orange, 10.0);  //this_is_the_default_value")
SplashTextOff
CustomMsgBox("Improved loot option","➤Loot will be default.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Improved loot option,➤Loot will be default.
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

noclip_truck:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,noclip_truck_var
	IfEqual,noclip_truck_var, 1
goto, noclip_truck_yes
	IfEqual,noclip_truck_var,0
goto, noclip_truck_no
	return
noclip_truck_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(cardi_phx,"77",77,"    Ignore(1) //Modified_by_FireEyeEian")
TF_ReplaceLine(cardi_phx,"91",91,"    Ignore(1) //Modified_by_FireEyeEian")
;TF_ReplaceLine(truckdi_phx,"73",73,"    Ignore(1) //Modified_by_FireEyeEian")
;TF_ReplaceLine(truckdi_phx,"87",87,"    Ignore(1) //Modified_by_FireEyeEian")
SplashTextOff
CustomMsgBox("Noclip trucks","➤Noclip trucks enabled. `nPlease note:`n The armored truck will not be affected because it will fall halfway through the `nground after getting out of the hotel preventing you from getting inside.`n`nAlso note that the jeep will fall through the first bridge in the jungle.. You've been warned..",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Noclip trucks,➤Noclip trucks enabled. `nPlease note:`n 		The armored truck will not be affected because it will fall halfway through the ground after getting out of the hotel preventing you from getting inside.`n`nAlso note that the jeep will fall through the first bridge in the jungle.. You've been warned..
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return
noclip_truck_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(cardi_phx,"77",77,"    Ignore(0) //Modified_by_FireEyeEian")
TF_ReplaceLine(cardi_phx,"91",91,"    Ignore(0) //Modified_by_FireEyeEian")
;TF_ReplaceLine(truckdi_phx,"73",73,"    Ignore(0) //Modified_by_FireEyeEian")
;TF_ReplaceLine(truckdi_phx,"87",87,"    Ignore(0) //Modified_by_FireEyeEian")
SplashTextOff
CustomMsgBox("Noclip trucks","➤Noclip trucks disabled.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Noclip trucks,➤Noclip trucks disabled.
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

noclip_player:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,noclip_player_var
	IfEqual,noclip_player_var, 1
goto, noclip_player_yes
	IfEqual,noclip_player_var,0
goto, noclip_player_no
	return
noclip_player_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(odephysicswalkfly,"68",68,"    Ignore(1) //Modified_by_FireEyeEian")
TF_ReplaceLine(odephysicswalkfly,"78",78,"    Ignore(1) //Modified_by_FireEyeEian")
SplashTextOff
CustomMsgBox("Noclip player","➤Noclip player enabled. `nPlease note:`n This will allow you to walk through certain objects but beware `nthis is wonky and not tested throughout the whole game and you will probabbly `nneed to un-mod and re-mod to get through certain parts... You've been warned..",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Noclip players,➤Noclip player enabled. `nPlease note:`n 		This will allow you to walk through certain objects but beware this is wonky and not tested throughout the whole game and you will probabbly need to un-mod and re-mod to get through certain parts... You've been warned..
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return
noclip_player_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(odephysicswalkfly,"68",68,"    Ignore(0) //Modified_by_FireEyeEian")
TF_ReplaceLine(odephysicswalkfly,"78",78,"    Ignore(0) //Modified_by_FireEyeEian")
SplashTextOff
CustomMsgBox("Noclip players","➤Noclip players disabled.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Noclip players,➤Noclip players disabled.
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return


reducejumpstaminacost:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,Jump_stamina_var
IfEqual, Jump_stamina_var, 1
goto, reduce_jump_stamina_yes
IfEqual,Jump_stamina_var,0
goto, reduce_jump_stamina_no
reduce_jump_stamina_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"236",236,"	<prop n=""JumpStaminaCost"" v=""0.03""/>	<!--  Modified by FireEyeEian-->")
SplashTextOff
CustomMsgBox("Jump stamina option","➤Jump stamina cost set to 50`% (0.03)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Jump stamina option,➤Jump stamina cost set to 50`% (0.03)
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Enable_BUTTONS_Function()
return
reduce_jump_stamina_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"236",236,"	<prop n=""JumpStaminaCost"" v=""0.06""/>	<!-- This is the default value //Modified_by_FireEyeEian-->")
SplashTextOff
CustomMsgBox("Jump stamina option","➤Jump stamina cost set to default (0.06)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Jump stamina option,➤Jump stamina cost set to default (0.06),
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

EnableRunningwithwep:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,Run_WITH_WEP_VAR
IfEqual, Run_WITH_WEP_VAR, 1
goto, Run_WITH_WEP_yes
IfEqual,Run_WITH_WEP_VAR,0
goto, Run_WITH_WEP_no
Run_WITH_WEP_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"63",63,"	<prop n=""HideWeaponsDuringSprint"" v=""0.0""/>	<!--  Modified by FireEyeEian-->")
SplashTextOff
CustomMsgBox("Run w/weps","➤Weapons will be shown when sprinting.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Run w/weps,➤Weapons will be shown when sprinting
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return
Run_WITH_WEP_no:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"63",63,"	<prop n=""HideWeaponsDuringSprint"" v=""1.0""/>	<!-- This is the default value //Modified_by_FireEyeEian-->")
SplashTextOff
CustomMsgBox("Run w/weps","➤Weapons will be hidden when sprinting (vanilla)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Run w/weps,➤Weapons will be hidden when sprinting (vanilla),
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

movment_tweaks:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,better_movement_var
IfEqual, better_movement_var, 1
goto, better_movement_yes
IfEqual,better_movement_var,0
goto, better_movement_no
better_movement_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
;Strafing will no longer slow you down increase by 1.2 (48%)
TF_ReplaceLine(Def_lev,"197",197,"	<prop n=""MoveStrafeMaxSpeed"" v=""3.70""/>	    <!-- Converted //Modified_by_FireEyeEian-->")
;instant acceleration also increases acceleration by 2.0
TF_ReplaceLine(Def_lev,"200",200,"	<prop n=""MoveAcceleration"" v=""12.00""/>  	    <!-- Converted //Modified_by_FireEyeEian-->")
TF_ReplaceLine(Def_lev,"201",201,"	<prop n=""MoveDeceleration"" v=""12.00""/>	    <!-- Converted //Modified_by_FireEyeEian-->")
;slighty faster walking (+0.20) also makes walking backwards slighty faster (+0.20)
TF_ReplaceLine(Def_lev,"193",193,"	<prop n=""MoveForwardMaxSpeed"" v=""3.70""/>	    <!-- Converted //Modified_by_FireEyeEian-->")
TF_ReplaceLine(Def_lev,"195",195,"	<prop n=""MoveBackwardMaxSpeed"" v=""2.70""/>	    <!-- Converted //Modified_by_FireEyeEian-->")
SplashTextOff
CustomMsgBox("Movement option","➤Strafing will no longer slow you down(`+1.2, 48`% increase)`n➤Acceleration increases by 2.0 (20`% increase) and instant acceleration`n➤Slighty faster walking `+0.20 (5.7`% increase)`n➤Slighty faster backwards `+0.20 (5.7`% increase)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Movement option,➤Strafing will no longer slow you down(`+1.2, 48`% increase)`n➤Acceleration increases by 2.0 (20`% increase) and instant acceleration`n➤Slighty faster walking `+0.20 (5.7`% increase)`n➤Slighty faster backwards `+0.20 (5.7`% increase),
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return
better_movement_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"197",197,"  <prop n=""MoveStrafeMaxSpeed"" v=""2.50""/>    <!-- Converted--> <!-- this_is_the_default_value-->")
TF_ReplaceLine(Def_lev,"200",200,"	<prop n=""MoveAcceleration"" v=""7.00""/>  	    <!-- Converted--> <!-- this_is_the_default_value-->")
TF_ReplaceLine(Def_lev,"201",201,"	<prop n=""MoveDeceleration"" v=""10.00""/>	    <!-- Converted--> <!-- this_is_the_default_value-->")
TF_ReplaceLine(Def_lev,"193",193,"	<prop n=""MoveForwardMaxSpeed"" v=""3.50""/>	    <!-- Converted--> <!-- this_is_the_default_value-->")
TF_ReplaceLine(Def_lev,"195",195,"	<prop n=""MoveBackwardMaxSpeed"" v=""2.50""/>	    <!-- Converted--> <!-- this_is_the_default_value-->")
SplashTextOff
CustomMsgBox("Movement option","➤Movement set to vanilla values.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Movement option,➤Movement set to vanilla values,
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return


better_durability:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,better_durability_var
IfEqual, better_durability_var, 1
goto, better_durability_yes
IfEqual,better_durability_var,0
goto, better_durability_no

better_durability_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"104",104,"    <prop n=""BluntWpnDurabilityLoss"" v=""-2.0""/>	<!--  Modified by FireEyeEian-->")
TF_ReplaceLine(Def_lev,"113",113,"    <prop n=""CutWpnDurabilityLoss"" v=""-2.0""/>	<!--  Modified by FireEyeEian-->")
TF_ReplaceLine(Def_lev,"123",123,"    <prop n=""RangedWpnDurabilityLoss"" v=""-2.0""/>	<!--  Modified by FireEyeEian-->")
TF_ReplaceLine(Def_lev,"133",133,"    <prop n=""BulletWpnDurabilityLoss"" v=""-2.0""/>	<!--  Modified by FireEyeEian-->")
SplashTextOff
CustomMsgBox("Wep durability","➤Weapons deteriorate at a slower rate`nChanged from 1.0 durability loss to -2.0`n`nPlease note: This can become very OP with Xians upgraded skills",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Wep durability,➤Weapons deteriorate at a slower rate`nChanged from 1.0 durability loss to -2.0`n`nPlease note: This can become very OP with Xians upgraded skills,
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return
better_durability_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"104",104,"    <prop n=""BluntWpnDurabilityLoss"" v=""1.0""/>	")
TF_ReplaceLine(Def_lev,"113",113,"    <prop n=""CutWpnDurabilityLoss"" v=""1.0""/>	")
TF_ReplaceLine(Def_lev,"123",123,"    <prop n=""RangedWpnDurabilityLoss"" v=""1.0""/>	")
TF_ReplaceLine(Def_lev,"133",133,"    <prop n=""BulletWpnDurabilityLoss"" v=""1.0""/>	")
SplashTextOff
CustomMsgBox("wep durability","➤Weapons deteriorate at vanilla rate.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Wep durability,➤Weapons deteriorate at vanilla rate,
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return


Instant_breakdoor:
play_click_sound_func()
gui,1:Submit,nohide
GuiControlGet,Instant_breakdoor_var
IfEqual, Instant_breakdoor_var, 1
goto, Instant_breakdoor_yes
IfEqual,better_durability_var,0
goto, Instant_breakdoor_no

Instant_breakdoor_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"100",100,"	<prop n=""BreakDoorEffectivens"" v=""1""/>	<!--  Modified by FireEyeEian-->")
SplashTextOff
CustomMsgBox("break doors","➤breaking doors set to quick/easy.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Break door,➤breaking doors set to quick/easy,
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return
Instant_breakdoor_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"100",100,"	<prop n=""BreakDoorEffectivens"" v=""0""/>	")
SplashTextOff
CustomMsgBox("break doors","➤breaking doors set to vanilla.",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Break doors,➤breaking doors set to vanilla,
Enable_BUTTONS_Function()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

zom_diff_MENU:
;DISABLE_BUTTONS_Function_gui_3()
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
OnMessage(0x232, "move_window_gui3")
gui,3:Destroy
WinGetPos, X1, Y1, , ,A
gui,3: -caption +Owner1
gui,3:Color,2a2e33
gui,3:font, s11 Bold
gui,3:font, s13 cRed Bold
gui,3:add,button,w120 h30 vdiff_menu_done_var gclose_gui3,Done

gui,3: Add, button, X235 y50 w160 h50 vWRITE_ZOM_SETTINGS_TO_FILES_button_var gWRITE_ZOM_SETTINGS_TO_FILES_button,Confirm zombies

zom_list:="Normal zombies||One hit kill zombies|hard zombies|Headshot only zombies|"
gui,3: Add, DropDownList, X10 y50 w219 h200 vZombie_tweaks_var, % zom_list
GuiControlGet, ZOM_HWND, Hwnd, Zombie_tweaks_var ;doesn't work on other guis for some reason.
AddTooltip(ZOM_HWND,"Select zombie difficulty") ;doesn't work on other guis for some reason.

gui,3: Add, CheckBox, X10 y90 w190 h36 vrestrict_zombie_throwing_var ,zombies no throw weapons
GuiControlGet, restrict_zombie_throwing_HWND, Hwnd, restrict_zombie_throwing_var ;doesn't work on other guis for some reason.
AddTooltip(restrict_zombie_throwing_HWND,"makes it so zombies cant throw weapons") ;doesn't work on other guis for some reason.

gui,3:font, s15 cGreen Bold
gui,3:Add, text, X150 Y7 w230 h40 ,Zombie difficulty menu
gui,3:font, s11 Bold
gui,3:show,% "x" X1 +180 "y" Y1 +400,gui 3
gui,3:show,h150 w400
return

close_gui3:
gui,1: Submit, NoHide
gui,2: Submit, NoHide
gui,3: Submit, NoHide
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Enable_BUTTONS_Function()
gui,3:Destroy
return


WRITE_ZOM_SETTINGS_TO_FILES_button:
play_click_sound_func()
gui,1: Submit, NoHide
gui,2: Submit, NoHide
gui,3: Submit, NoHide
If (Zombie_tweaks_var = "Normal zombies")
Goto,submit_norm_zom
If (Zombie_tweaks_var = "One hit kill zombies")
Goto,submit_1hit_zom
If (Zombie_tweaks_var = "hard zombies")
Goto,submit_hard_zom
If (Zombie_tweaks_var = "Headshot only zombies")
Goto,submit_headshot_zom
return
submit_norm_zom:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileRemoveDir, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai,1
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
SmartZip("loose_files\ai_norm.zip", "EXTRACTED_DATA0\data")
SplashTextOff
CustomMsgBox("Zombie difficulty","➤Zombies set to Normal (default)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Zombie_difficulty, ➤Zombies set to Normal (default),
GuiControlGet,restrict_zombie_throwing_var
IfEqual, restrict_zombie_throwing_var, 1
Gosub, no_throw_yes
IfEqual,restrict_zombie_throwing_var,0
Gosub, no_throw_no
Enable_BUTTONS_Function_only_gui3()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_1hit_zom:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileRemoveDir, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai,1
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
SmartZip("loose_files\ai_norm.zip", "EXTRACTED_DATA0\data")
;vessle_data
TF_ReplaceLine(vessle_data,"806",806,"ParamBool(""one_shot"", 1) //modified by FireEyeEian--")
;Infected_data
TF_ReplaceLine(Infected_data,"685",685,"ParamBool(""one_shot"", 1) //modified by FireEyeEian--")
SplashTextOff
CustomMsgBox("Zombie difficulty","➤Zombies set to One-hit mode",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Zombie_difficulty, ➤Zombies set to One-hit mode,
GuiControlGet,restrict_zombie_throwing_var
IfEqual, restrict_zombie_throwing_var, 1
Gosub, no_throw_yes
IfEqual,restrict_zombie_throwing_var,0
Gosub, no_throw_no
Enable_BUTTONS_Function_only_gui3()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_hard_zom:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileRemoveDir, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai,1
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
SmartZip("loose_files\ai_norm.zip", "EXTRACTED_DATA0\data")
;;vessle_data
TF_ReplaceLine(vessle_data,"758",758,"ParamFloat(""pro_player_head_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data,"759",759,"ParamFloat(""head_health_influence"", 0.5) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data,"760",760,"ParamFloat(""left_arm_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data,"761",761,"ParamFloat(""right_arm_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data,"762",762,"ParamFloat(""left_leg_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data,"763",763,"ParamFloat(""right_leg_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data,"764",764,"ParamFloat(""torso_front_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data,"765",765,"ParamFloat(""torso_back_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data,"779",779,"ParamFloat(""health_mul"", 1.3) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data,"780",780,"ParamFloat(""head_health_mul"", 1.3) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data,"781",781,"ParamFloat(""arms_health_mul"", 0.39) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data,"782",782,"ParamFloat(""legs_health_mul"", 1.3) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data,"785",785,"ParamFloat(""damage_mul"", 1.3) //30% increase //Modified_ByFireEyeEian")

;;vessle_data_custom_0
TF_ReplaceLine(vessle_data_custom_0,"136",136,"ParamFloat(""health_mul"", 5.2) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data_custom_0,"138",138,"ParamFloat(""damage_mul"", 2.34) //30% increase //Modified_ByFireEyeEian")

;;vessle_data_custom_3
TF_ReplaceLine(vessle_data_custom_3,"61",61,"ParamFloat(""health_mul"", 1.625) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data_custom_3,"63",63,"ParamFloat(""damage_mul"", 1.625 //30% increase //Modified_ByFireEyeEian)")

;;vessle_data_custom_4
TF_ReplaceLine(vessle_data_custom_4,"123",123,"ParamFloat(""health_mul"", 0.975) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data_custom_4,"125",125,"ParamFloat(""damage_mul"", 0.975) //30% increase //Modified_ByFireEyeEian")

;;vessle_data_custom_5
TF_ReplaceLine(vessle_data_custom_5,"125",125,"ParamFloat(""health_mul"", 0.975) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data_custom_5,"127",127,"ParamFloat(""damage_mul"", 0.975) //30% increase //Modified_ByFireEyeEian")

;;vessle_data_custom_13
TF_ReplaceLine(vessle_data_custom_13,"122",122,"ParamFloat(""health_mul"", 0.975) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data_custom_13,"124",124,"ParamFloat(""damage_mul"", 0.975) //30% increase //Modified_ByFireEyeEian")

;;vessle_data_custom_15
TF_ReplaceLine(vessle_data_custom_15,"94",94,"ParamFloat(""health_mul"", 0.39) //30% increase //Modified_ByFireEyeEian")

;;vessle_data_custom_16
TF_ReplaceLine(vessle_data_custom_16,"170",170,"ParamFloat(""health_mul"", 2.86) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data_custom_16,"171",171,"ParamFloat(""head_health_influence"", 0.6) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data_custom_16,"172",172,"ParamFloat(""left_arm_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data_custom_16,"173",173,"ParamFloat(""right_arm_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data_custom_16,"174",174,"ParamFloat(""left_leg_health_influence"", 0.1) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data_custom_16,"175",175,"ParamFloat(""right_leg_health_influence"", 0.1) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data_custom_16,"176",176,"ParamFloat(""torso_front_health_influence"", 0.3) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(vessle_data_custom_16,"177",177,"ParamFloat(""torso_back_health_influence"", 0.3) //60% decrease //moddified_byFireEyeEian")

;;Infected_data
TF_ReplaceLine(Infected_data,"631",631,"ParamFloat(""pro_player_head_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data,"632",632,"ParamFloat(""head_health_influence"", 0.8) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data,"633",633,"ParamFloat(""left_arm_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data,"634",634,"ParamFloat(""right_arm_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data,"635",635,"ParamFloat(""left_leg_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data,"636",636,"ParamFloat(""right_leg_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data,"637",637,"ParamFloat(""torso_front_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data,"638",638,"ParamFloat(""torso_back_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data,"655",655,"ParamFloat(""health_mul"", 1.69) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"658",658,"ParamFloat(""legs_health_mul"", 1.3) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"661",661,"ParamFloat(""damage_mul"", 1.3) //60% increase //moddified_byFireEyeEian")


;;Infected_data_custom_0
TF_ReplaceLine(Infected_data_custom_0,"25",25,"ParamFloat(""health_mul"", 39.0) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data_custom_0,"29",29,"ParamFloat(""head_health_influence"", 0.8) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_0,"30",30,"ParamFloat(""left_arm_health_influence"", 0.8) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_0,"31",31,"ParamFloat(""right_arm_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_0,"32",32,"ParamFloat(""left_leg_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_0,"33",33,"ParamFloat(""right_leg_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_0,"34",34,"ParamFloat(""torso_front_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_0,"35",35,"ParamFloat(""torso_back_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_0,"27",27,"ParamFloat(""damage_mul"", 2.6) //60% increase //moddified_byFireEyeEian")


;;Infected_data_custom_1
TF_ReplaceLine(Infected_data_custom_1,"10",10,"ParamFloat(""health_mul"", 1.3) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data_custom_1,"12",12,"ParamFloat(""damage_mul"", 1.3) //30% increase //Modified_ByFireEyeEian")

;;Infected_data_custom_2
TF_ReplaceLine(Infected_data_custom_2,"10",10,"ParamFloat(""health_mul"", 1.3) // just to supply some data to parse //30% increase //Modified_ByFireEyeEian")

;;Infected_data_custom_3
TF_ReplaceLine(Infected_data_custom_3,"10",10,"ParamFloat(""health_mul"", 1.95) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data_custom_3,"12",12,"ParamFloat(""damage_mul"", 1.43) //30% increase //Modified_ByFireEyeEian")

;;Infected_data_custom_4
TF_ReplaceLine(Infected_data_custom_4,"10",10,"ParamFloat(""health_mul"", 13) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data_custom_4,"12",12,"ParamFloat(""damage_mul"", 13) //30% increase //Modified_ByFireEyeEian")

;;Infected_data_custom_5
TF_ReplaceLine(Infected_data_custom_5,"10",10,"ParamFloat(""health_mul"", 1.3) // just to supply some data to parse  //30% increase //Modified_ByFireEyeEian")

;;Infected_data_custom_6
TF_ReplaceLine(Infected_data_custom_6,"157",157,"ParamFloat(""walk_speed_alarmed"", 1.1)     // Converted")
TF_ReplaceLine(Infected_data_custom_6,"169",169,"ParamFloat(""torso_back_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_6,"181",181,"ParamFloat(""ram_damage_mul"", 1.3) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data_custom_6,"200",200,"ParamFloat(""health_mul"", 5.2) //30% increase //Modified_ByFireEyeEian")


;;Infected_data_custom_8
TF_ReplaceLine(Infected_data_custom_8,"41",41,"ParamFloat(""head_health_influence"", 0.8) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_8,"42",42,"ParamFloat(""left_arm_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_8,"43",43,"ParamFloat(""right_arm_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_8,"44",44,"ParamFloat(""left_leg_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_8,"45",45,"ParamFloat(""right_leg_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_8,"46",46,"ParamFloat(""torso_front_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_8,"47",47,"ParamFloat(""torso_back_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_8,"48",48,"ParamFloat(""health_mul"", 5.2) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data_custom_8,"50",50,"ParamFloat(""damage_mul"", 1.3) //30% increase //Modified_ByFireEyeEian")

;;Infected_data_custom_9
TF_ReplaceLine(Infected_data_custom_9,"25",25,"ParamFloat(""health_mul"", 6.5) //30% increase //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data_custom_9,"29",29,"ParamFloat(""head_health_influence"", 0.8) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_9,"30",30,"ParamFloat(""left_arm_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_9,"31",31,"ParamFloat(""right_arm_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_9,"32",32,"ParamFloat(""left_leg_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_9,"33",33,"ParamFloat(""right_leg_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_9,"34",34,"ParamFloat(""torso_front_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_9,"35",35,"ParamFloat(""torso_back_health_influence"", 0.4) //60% decrease //moddified_byFireEyeEian")
TF_ReplaceLine(Infected_data_custom_9,"27",27,"ParamFloat(""damage_mul"", 1.95) //30% increase //Modified_ByFireEyeEian")
SplashTextOff
CustomMsgBox("Zombie difficulty","➤Zombies set to Hard (30`% increase to health and Damage `nalso `n60`% decrease to damage influences)",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Zombie_difficulty, ➤Zombies set to Hard (30`% increase to health and Damage, also 60`% decrease to damage influences),
GuiControlGet,restrict_zombie_throwing_var
IfEqual, restrict_zombie_throwing_var, 1
Gosub, no_throw_yes
IfEqual,restrict_zombie_throwing_var,0
Gosub, no_throw_no
Enable_BUTTONS_Function_only_gui3()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return

submit_headshot_zom:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileRemoveDir, %A_Temp%\@DIDMM_TEMPFILES\EXTRACTED_DATA0\data\ai,1
SetWorkingDir %A_Temp%\@DIDMM_TEMPFILES
SmartZip("loose_files\ai_norm.zip", "EXTRACTED_DATA0\data")
;infected
TF_ReplaceLine(Infected_data,"633",633,"ParamFloat(""left_arm_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"634",634,"ParamFloat(""right_arm_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"635",635,"ParamFloat(""left_leg_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"636",636,"ParamFloat(""right_leg_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"637",637,"ParamFloat(""torso_front_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"638",638,"ParamFloat(""torso_back_health_influence"", 0.0) //Modified_ByFireEyeEian")
;infected_data_preset_custom_0
TF_ReplaceLine(Infected_data,"30",30,"ParamFloat(""left_arm_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"31",31,"ParamFloat(""right_arm_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"32",32,"ParamFloat(""left_leg_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"33",33,"ParamFloat(""right_leg_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"34",34,"ParamFloat(""torso_front_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"35",35,"ParamFloat(""torso_back_health_influence"", 0.0) //Modified_ByFireEyeEian")
;infected_data_preset_custom_6
TF_ReplaceLine(Infected_data,"169",169,"ParamFloat(""torso_back_health_influence"", 0.0) //Modified_ByFireEyeEian")
;infected_data_preset_custom_8
TF_ReplaceLine(Infected_data,"42",42,"ParamFloat(""left_arm_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"43",43,"ParamFloat(""right_arm_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"44",44,"ParamFloat(""left_leg_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"45",45,"ParamFloat(""right_leg_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"46",46,"ParamFloat(""torso_front_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"47",47,"ParamFloat(""torso_back_health_influence"", 0.0) //Modified_ByFireEyeEian")
;infected_data_preset_custom_9
TF_ReplaceLine(Infected_data,"30",30,"ParamFloat(""left_arm_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"31",31,"ParamFloat(""right_arm_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"32",32,"ParamFloat(""left_leg_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"33",33,"ParamFloat(""right_leg_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"34",34,"ParamFloat(""torso_front_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"35",35,"ParamFloat(""torso_back_health_influence"", 0.0) //Modified_ByFireEyeEian")
;vessle_data
TF_ReplaceLine(vessle_data,"760",760,"ParamFloat(""left_arm_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data,"761",761,"ParamFloat(""right_arm_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data,"762",762,"ParamFloat(""left_leg_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data,"763",763,"ParamFloat(""right_leg_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data,"764",764,"ParamFloat(""torso_front_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(vessle_data,"765",765,"ParamFloat(""torso_back_health_influence"", 0.0) //Modified_ByFireEyeEian")
;vessel_data_preset_custom_16
TF_ReplaceLine(Infected_data,"172",760,"ParamFloat(""left_arm_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"173",761,"ParamFloat(""right_arm_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"174",762,"ParamFloat(""left_leg_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"175",763,"ParamFloat(""right_leg_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"176",764,"ParamFloat(""torso_front_health_influence"", 0.0) //Modified_ByFireEyeEian")
TF_ReplaceLine(Infected_data,"177",765,"ParamFloat(""torso_back_health_influence"", 0.0) //Modified_ByFireEyeEian")
SplashTextOff
CustomMsgBox("Zombie difficulty","➤Zombies set to Headshot only mode",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Zombie_difficulty, ➤Zombies set to Headshot only mode,
GuiControlGet,restrict_zombie_throwing_var
IfEqual, restrict_zombie_throwing_var, 1
Gosub, no_throw_yes
IfEqual,restrict_zombie_throwing_var,0
Gosub, no_throw_no
Enable_BUTTONS_Function_only_gui3()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return





;chance_menu
CRIT_CHANCE_MENU:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
OnMessage(0x232, "move_window_gui2")
gui,2:Destroy
WinGetPos, X1, Y1, , ,A
gui,2: -caption +Owner1
gui,2:Color,2a2e33
gui,2:font, s11 Bold
gui,2:add,button,w120 h30 vcrit_done_button gclose_gui2,Done

crit_fist_list:="Default crit chance||100% crit chance|"
gui,2: Add, DropDownList, X10 y50 w185 h200 vcrit_chance_fists_var, % crit_fist_list
gui,2: Add, button, X200 y10 w170 h30 vconfirm_chance_fists_var gSubmit_crits_button,set crits
gui,2:font, s13 cRed Bold
gui,2: Add, text, X200 y50 w170 h30 ,Fist crit chance
gui,2:font, s11 Bold
;gui,2: Add, button, X200 y50 w170 h30 vconfirm_chance_fists_var gSubmit_crits,set Fists crit chance


crit_blunt_list:="Default crit chance||100% crit chance|"
gui,2: Add, DropDownList, X10 y85 w185 h200 vcrit_chance_blunt_var, % crit_blunt_list
gui,2:font, s13 cRed Bold
gui,2: Add, text, X200 y85 w170 h30 ,Blunt crit chance
gui,2:font, s11 Bold

crit_cut_list:="Default crit chance||100% crit chance|"
gui,2: Add, DropDownList, X10 y120 w185 h200 vcrit_chance_cut_var, % crit_cut_list
;gui,2: Add, button, X200 y120 w170 h30 vconfirm_chance_cut_var gSubmit_chance_cut,set Cut crit chance
gui,2:font, s13 cRed Bold
gui,2: Add, text, X200 y120 w170 h30 ,Cut crit chance
gui,2:font, s11 Bold

crit_ranged_list:="Default crit chance||100% crit chance|"
gui,2: Add, DropDownList, X10 y155 w185 h200 vcrit_chance_ranged_var, % crit_ranged_list
;gui,2: Add, button, X200 y155 w170 h30 vconfirm_chance_ranged_var gSubmit_chance_ranged,set Ranged crit chance
gui,2:font, s13 cRed Bold
gui,2: Add, text, X200 y155 w170 h30 ,Ranged crit chance
gui,2:font, s11 Bold

crit_bullet_list:="Default crit chance||100% crit chance|"
gui,2: Add, DropDownList, X10 y190 w185 h200 vcrit_chance_bullet_var, % crit_bullet_list
;gui,2: Add, button, X200 y190 w170 h30 vconfirm_chance_bullet_var gSubmit_chance_bullet,set Bullet crit chance
gui,2:font, s13 cRed Bold
gui,2: Add, text, X200 y190 w170 h30 ,Bullet crit chance
gui,2:font, s11 Bold
gui,2:show,% "x" X1 +390 "y" Y1 +400,gui 2  
gui,2:show,h235 w380
return

close_gui2:
gui,1: Submit, NoHide
gui,2: Submit, NoHide
gui,3: Submit, NoHide
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Enable_BUTTONS_Function()
gui,2:Destroy
return




Submit_crits_button:
play_click_sound_func()
gui,1: Submit, NoHide
gui,2: Submit, NoHide
Goto, fists_chance_1
return


fists_chance_1:
GuiControlGet,crit_chance_fists_var
If (crit_chance_fists_var = "Default crit chance")
	Goto,submit_fists_DEFAULT
else
	Goto,submit_fists_max
	return


Blunt_chance_1:
GuiControlGet,crit_chance_blunt_var
If (crit_chance_blunt_var = "Default crit chance")
	Goto,submit_blunt_DEFAULT
else
	Goto,submit_Blunt_max	

Cut_chance_1:
GuiControlGet,crit_chance_cut_var
If (crit_chance_cut_var = "Default crit chance")
	Goto,submit_cut_DEFAULT
else
	Goto,submit_Cut_max
	return

Ranged_chance_1:
GuiControlGet,crit_chance_ranged_var
If (crit_chance_ranged_var = "Default crit chance")
	Goto,submit_ranged_DEFAULT
else
	Goto,submit_Ranged_max
	return

Bullet_chance_1:
GuiControlGet,crit_chance_bullet_var
If (crit_chance_bullet_var = "Default crit chance")
	Goto,submit_bullet_DEFAULT
else
	Goto,submit_Bullet_max
	return


submit_fists_DEFAULT:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
TF_ReplaceLine(Def_lev,"86",86,"	<prop n=""FistsCriticalChance"" v=""0""/>")
SplashTextOff
CustomMsgBox("Crit chance","➤Crit chance for Fists set to DEFAULT",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Crit chance, ➤Crit chance for Fists set to DEFAULT,
Enable_BUTTONS_Function_only_gui2()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Goto, Blunt_chance_1
return

submit_blunt_DEFAULT:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
TF_ReplaceLine(Def_lev,"105",105,"	<prop n=""BluntCriticalChance"" v=""0""/>")
SplashTextOff
CustomMsgBox("Crit chance","➤Crit chance for Blunt set to DEFAULT",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Crit chance, ➤Crit chance for Blunt set to DEFAULT,
Enable_BUTTONS_Function_only_gui2()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Goto, Cut_chance_1
return

submit_cut_DEFAULT:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
TF_ReplaceLine(Def_lev,"114",114,"	<prop n=""CutCriticalChance"" v=""0""/>")
SplashTextOff
CustomMsgBox("Crit chance","➤Crit chance for Cut set to DEFAULT",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Crit chance, ➤Crit chance for Cut set to DEFAULT,
Enable_BUTTONS_Function_only_gui2()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Goto, Ranged_chance_1
return

submit_ranged_DEFAULT:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
TF_ReplaceLine(Def_lev,"124",124,"	<prop n=""RangedCriticalChance"" v=""0""/>")
SplashTextOff
CustomMsgBox("Crit chance","➤Crit chance for Ranged set to DEFAULT",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Crit chance, ➤Crit chance for Ranged set to DEFAULT,
Enable_BUTTONS_Function_only_gui2()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Goto, Bullet_chance_1
return

submit_bullet_DEFAULT:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
TF_ReplaceLine(Def_lev,"134",134,"	<prop n=""BulletCriticalChance"" v=""0""/>")
SplashTextOff
CustomMsgBox("Crit chance","➤Crit chance for Bullet set to DEFAULT",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Crit chance, ➤Crit chance for Bullet set to DEFAULT,
Enable_BUTTONS_Function_only_gui2()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return



submit_fists_MAX:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
TF_ReplaceLine(Def_lev,"86",86,"	<prop n=""FistsCriticalChance"" v=""999""/>")
SplashTextOff
CustomMsgBox("Crit chance","➤Crit chance for fists set to 100`%",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Crit chance, ➤Crit chance for fists set to 100`%,
Enable_BUTTONS_Function_only_gui2()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Goto, Blunt_chance_1
return

submit_blunt_MAX:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
TF_ReplaceLine(Def_lev,"105",105,"	<prop n=""BluntCriticalChance"" v=""999""/>")
SplashTextOff
CustomMsgBox("Crit chance","➤Crit chance for Blunt set to 100`%",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Crit chance, ➤Crit chance for Blunt set to 100`%,
Enable_BUTTONS_Function_only_gui2()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Goto, Cut_chance_1
return

submit_cut_MAX:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
TF_ReplaceLine(Def_lev,"114",114,"	<prop n=""CutCriticalChance"" v=""999""/>")
SplashTextOff
CustomMsgBox("Crit chance","➤Crit chance for Cut set to 100`%",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Crit chance, ➤Crit chance for Cut set to 100`%,
Enable_BUTTONS_Function_only_gui2()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Goto, Ranged_chance_1
return

submit_ranged_MAX:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
TF_ReplaceLine(Def_lev,"124",124,"	<prop n=""RangedCriticalChance"" v=""999""/>")
SplashTextOff
CustomMsgBox("Crit chance","➤Crit chance for Ranged set to 100`%",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Crit chance, ➤Crit chance for Ranged set to 100`%,
Enable_BUTTONS_Function_only_gui2()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
Goto, Bullet_chance_1
return

submit_bullet_MAX:
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
TF_ReplaceLine(Def_lev,"134",134,"	<prop n=""BulletCriticalChance"" v=""999""/>")
SplashTextOff
CustomMsgBox("Crit chance","➤Crit chance for Bullet set to 100`%",main_font,"c6ebc72 s20 bold","202020")
;MsgBox, 4160, Crit chance, ➤Crit chance for Bullet set to 100`%,
Enable_BUTTONS_Function_only_gui2()
EnableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return



;;;;;;no_throw_weapons_code_blocks
no_throw_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(vessle_data,"800",800,"ParamFloat(""weapon_throw_prob_mul"", 0.0) //moddified_byFireEyeEian")
SplashTextOff
CustomMsgBox("zombie throw","➤zombie will NOT throw weapons",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Break door,➤zombie will NOT throw weapons,
Enable_BUTTONS_Function_only_gui3()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return
no_throw_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
SplashTextOn, 700,105,Patching files,Please wait.... `n Patching files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"Alt+Del`" on your keyboard or force close the application
TF_ReplaceLine(vessle_data,"800",800,"ParamFloat(""weapon_throw_prob_mul"", 1.0)")
SplashTextOff
CustomMsgBox("zombie throw","➤zombie will throw weapons",main_font,"c6ebc72 s20 bold","202020")
;MsgBox,4160,Break doors,➤zombie will throw weapons,
Enable_BUTTONS_Function_only_gui3()
enableCloseButton(WinExist("Dead_Island_Definitive_mod_menu_by_FireEyeEian"))
return