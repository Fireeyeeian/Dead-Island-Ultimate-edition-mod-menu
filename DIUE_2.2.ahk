#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows, On
SetBatchLines, -1
#include tf.ahk
#include smartzip.ahk
#include AddTooltip.ahk
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

;Clean-up on exit- Register a function to be called on exit:
OnExit("ExitFunc")
; Register an object to be called on exit:
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
    	SplashTextOn, 400,50,Script Shutdown,Shutting down.....`n(Cleaning up files)
    	;Run,%A_Temp%\survival_extinguisher.ahk,,,
		Process, close,Background_music.exe
		Process, close,play_scream_sound_then_quit.exe ;shouldn't be running but whatever
		FileDelete, %A_Temp%\@DIUE_TEMPFILES\scripts\play_scream_sound_then_quit.exe
		Disable_BUTTONS_Function()
		;MsgBox,cleaning files
		FileRemoveDir,%A_Temp%\@DIUE_TEMPFILES\,1
		SplashTextOff
    }
}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;notes;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;notes;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;notes;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Random fixes /changes: fixed magnum recoil to be less like the revolver and more like the heavy pistol (on account of the damage)
;added hatchet(Melee_AxeUniversalGe) to shop: Wes Tweddle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;notes;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;notes;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;notes;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SetWorkingDir, %A_ScriptDir%
;setup temp files
FileCreateDir, %A_Temp%\@DIUE_TEMPFILES\
FileCreateDir, %A_Temp%\@DIUE_TEMPFILES\loose_files\
FileCreateDir, %A_Temp%\@DIUE_TEMPFILES\sounds\
FileCreateDir, %A_Temp%\@DIUE_TEMPFILES\scripts\

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;VvVcode below recovered from overwritten saveVvV;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

FileInstall, Required_files_and_scripts\scripts\survival_extinguisher.exe, %A_Temp%\@survival_extinguisher.exe,1
FileInstall, Required_files_and_scripts\scripts\Background_music.exe, %A_Temp%\@DIUE_TEMPFILES\scripts\Background_music.exe,1
FileInstall, Required_files_and_scripts\scripts\play_scream_sound_then_quit.exe, %A_Temp%\@DIUE_TEMPFILES\scripts\play_scream_sound_then_quit.exe,1
FileInstall, Required_files_and_scripts\game.ini, %A_Temp%\@DIUE_TEMPFILES\loose_files\game.ini , 1
FileInstall, Required_files_and_scripts\menumain_pc.xui_version, %A_Temp%\@DIUE_TEMPFILES\loose_files\menumain_pc.xui , 1
FileInstall, Required_files_and_scripts\vessel_data.scr.oneshot_zombie, %A_Temp%\@DIUE_TEMPFILES\loose_files\vessel_data.scr.oneshot_zombie , 1
FileInstall, Required_files_and_scripts\ai_norm.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\ai_norm.zip,1
FileInstall, Required_files_and_scripts\ai_hard.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\ai_hard.zip,1
FileInstall, Required_files_and_scripts\ai_Headshot.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\ai_Headshot.zip,1
FileInstall, Required_files_and_scripts\ai_Onehit.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\ai_Onehit.zip,1
FileInstall, Required_files_and_scripts\PRESETS_LARGE_ZOMSIZE.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\PRESETS_LARGE_ZOMSIZE.zip,1
FileInstall, Required_files_and_scripts\PRESETS_MIDGET_ZOMSIZE.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\PRESETS_MIDGET_ZOMSIZE.zip,1
FileInstall, Required_files_and_scripts\PRESETS_NORM_ZOMSIZE.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\PRESETS_NORM_ZOMSIZE.zip,1
FileInstall, Required_files_and_scripts\PRESETS_SUPASIZE_ZOMSIZE.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\PRESETS_SUPASIZE_ZOMSIZE.zip,1
FileInstall, Required_files_and_scripts\PRESETS_XTRASMOL_ZOMSIZE.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\PRESETS_XTRASMOL_ZOMSIZE.zip,1
FileInstall, Required_files_and_scripts\Force_bloater_spawn.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\Force_bloater_spawn.zip,1
FileInstall, Required_files_and_scripts\force_butcher_spawn.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\force_butcher_spawn.zip,1
FileInstall, Required_files_and_scripts\Force_thug_spawn.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\Force_thug_spawn.zip,1
FileInstall, Required_files_and_scripts\Force_suicide_spawn.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\Force_suicide_spawn.zip,1
FileInstall, Required_files_and_scripts\Force_ram_spawn.zip, %A_Temp%\@DIUE_TEMPFILES\loose_files\Force_ram_spawn.zip,1
FileInstall, Required_files_and_scripts\gameaudioeffects.scr.modded, %A_Temp%\@DIUE_TEMPFILES\loose_files\gameaudioeffects.scr.modded , 1
FileInstall, Required_files_and_scripts\gameaudioeffects.scr.nomod, %A_Temp%\@DIUE_TEMPFILES\loose_files\gameaudioeffects.scr.nomod , 1
FileInstall, UI\steps5.png, %A_Temp%\@DIUE_TEMPFILES\steps5.png , 1
FileInstall, Data0.pak, %A_Temp%\@DIUE_TEMPFILES\Data0.zip,1
FileInstall, Required_files_and_scripts\sounds\menu_click.wav, %A_Temp%\@DIUE_TEMPFILES\sounds\menu_click.wav,1
FileInstall, Required_files_and_scripts\sounds\DI_music.wav, %A_Temp%\@DIUE_TEMPFILES\sounds\DI_music.wav,1
FileInstall, Required_files_and_scripts\sounds\menu_highlight.wav, %A_Temp%\@DIUE_TEMPFILES\sounds\menu_highlight.wav,1
FileInstall, Required_files_and_scripts\sounds\scream_final.wav, %A_Temp%\@DIUE_TEMPFILES\sounds\scream_final.wav,1
FileInstall, Required_files_and_scripts\sounds\napalm.wav, %A_Temp%\@DIUE_TEMPFILES\sounds\napalm.wav,1
Run, %A_Temp%\@DIUE_TEMPFILES\scripts\play_scream_sound_then_quit.exe,,,
INV_GEN=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\inventory_gen.scr
INV_spec=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\inventory_special.scr
INV_patch=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\inventory_patch.scr
DLC_shop=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\dlc\shopsdlc1.scr
Def_lev=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\skills\default_levels.xml
INTRO_MOV=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\menu\movies\intromovies.scr
sunglow_scd=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_glow.scd
sunglow_scr=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_glow.scr
def_loot=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\default.loot
Logan_skills=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\skills\logan_skills.xml
Purna_skills=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\skills\purna_skills.xml
Samb_skills=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\skills\samb_skills.xml
Xian_skills=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\skills\xian_skills.xml
cardi_phx=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\odephysics\vehicle\cardi.phx
truckdi_phx=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\odephysics\vehicle\truckdi.phx
inv_scr=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\inventory.scr
var_amb_scd=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scd
var_amb_scr=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\scripts\varlist_ambient.scr
var_weather=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\scripts\weather\weather.scr
playerdi_pre=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\playerdi.pre
aispawnbox_pre_def=!%A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
play_click_sound_func(){
SoundPlay, %A_Temp%\@DIUE_TEMPFILES\sounds\menu_click.wav
}
play_final_sound_func(){
SoundPlay, %A_Temp%\@DIUE_TEMPFILES\sounds\napalm.wav
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
}
Enable_BUTTONS_Function(){
GuiControl,enabled,NightTime_var
GuiControl,Enabled,Zombie_spawn_var
GuiControl,Enabled,confirm_zom_spawn_var
GuiControl,Enabled,better_wep_pov_var
GuiControl,Enabled,Even_Deeper_pockets_var
GuiControl,Enabled,more_ammo_var
GuiControl,Enabled,noclip_truck_var
GuiControl,enable,better_wep_upgrades_var
GuiControl,Enabled,SUBMIT_FINAL
GuiControl,enabled,Remove_reverb_sound_var
GuiControl,show,DI_LOC_TEXT
GuiControl,Enabled,Bullet_pen_var
GuiControl,Enabled,Recoil_hfov_fix
GuiControl,Enabled,Skip_intros_var
GuiControl,Enabled,Reduce_sun_var
GuiControl,Enabled,Reducesprint_stamina_cost_var
GuiControl,Enabled,Jump_stamina_var
GuiControl,Enabled,Run_WITH_WEP_VAR
GuiControl,Enabled,improved_loot_var
GuiControl,Enabled,better_movement_var
GuiControl,Enabled,custom_wep_var
GuiControl,Enabled,Zombie_size_var
GuiControl,Enabled,confirm_zom_var
GuiControl,Enabled,confirm_zom_size_var
GuiControl,Enabled,Zombie_tweaks_var
}
Gui, Font, S10 BOLD Normal Cblack , Segoe ui
Gui, Font, S11 BOLD Cblack , Segoe ui
Gui, Add, Picture, x2 y-1 w1000 h570 , %A_Temp%\@DIUE_TEMPFILES\steps5.png
Gui, Add, Button, x602 y230 w120 h30 hWndhButton2 vselect_folder_button gselectfolder_button, SELECT FOLDER
GuiControlGet, SF_HWND, Hwnd, select_folder_button
AddTooltip(SF_HWND,"select Your DIDE folder")
Gui, Font, S10 BOLD Normal Cblack , Segoe ui
Gui, Font, S7 BOLD Cblack , Segoe ui
Gui, Add, text, x732 y220 w240 h50 vuser_Deadisland_DIRECTORY, [NO FOLDER SELECTED]
Gui, Font, S10 BOLD Normal Cblack , Segoe ui
Gui, Font, S11 BOLD Cblack , Segoe ui
Gui, Add, CheckBox, x15 y419 w190 h30 vSkip_intros_var gskiptheintros,Skip intro videos
GuiControlGet, SKP_INTRO_HWND, Hwnd, Skip_intros_var
AddTooltip(SKP_INTRO_HWND,"Disables the Intro movies/logos that play when the game starts")
Gui, Add, CheckBox, x15 y489 w190 h30 vReduce_sun_var greducethesunflare,Reduce sunflare by 90`%
GuiControlGet, SUN_FLARE_HWND, Hwnd, Reduce_sun_var
AddTooltip(SUN_FLARE_HWND,"Increases the transparency of the sun flare texture")
Gui, Font, S10 BOLD Normal Cblack , Segoe ui
Gui, Font, S10 BOLD Cblack , Segoe ui
Gui, Add, CheckBox, x15 y454 w190 h30 vReducesprint_stamina_cost_var greducethesprintstaminacost,Reduce sprinting stamina cost
GuiControlGet, SPRINT_STAM_HWND, Hwnd, Reducesprint_stamina_cost_var
AddTooltip(SPRINT_STAM_HWND,"Allows you to sprint for a longer duration before exhaustion")
Fov_list:="62 default||72|82|"
Gui, Font, S10 BOLD Normal Cblack , Segoe ui
Gui, Font, S8 BOLD Cblack , Segoe ui
Gui, Add, DropDownList, x260 y268 w90 h70 vDDL, % Fov_list
GuiControlGet, DDL_HWND, Hwnd, DDL
AddTooltip(DDL_HWND,"FOV stands for Field Of View`nBasically how wide your vision`nA lower number zooms in the camera, while a higher number zooms out the camera")
Gui, Add, button, x360 y268 w120 h21 vconfirm_fov gSubmit_fov, Confirm FOV
Gui, Font, S10 BOLD Cblack , Segoe ui
Gui, Add, button, x862 y14 w120 h110 vSUBMIT_FINAL gSubmit_FINAL, CLICK TO CONFIRM MODIFICATIONS
GuiControlGet, FINAL_HWND, Hwnd, SUBMIT_FINAL
AddTooltip(FINAL_HWND,"Confirm selected mods/changes and write changes to a new Data0.pak")
Gui, Add, CheckBox, Checked x862 y130 w120 h27 venable_music_var genable_music, Enable music?
GuiControlGet, MUSIC_HWND, Hwnd, enable_music_var
AddTooltip(MUSIC_HWND,"toggles the playing of dead island music while running this application")
Gui, Add, CheckBox, x15 y524 w190 h30 vRecoil_hfov_fix gRecoil_hfov_fix,high fov recoil fix
GuiControlGet, HFOV_HWND, Hwnd, Recoil_hfov_fix
AddTooltip(HFOV_HWND,"Reduces recoil animations for`n•Shotguns`nThis option can help if you get motion sick easily or have a high field of view")
Gui, Add, CheckBox, x210 y524 w190 h30 vJump_stamina_var greducejumpstaminacost,Reduce jump stamina cost
GuiControlGet, JUMP_STAM_HWND, Hwnd, Jump_stamina_var
AddTooltip(JUMP_STAM_HWND,"Allows you to jump more times before exhaustion")
Gui, Add, CheckBox, x210 y489 w190 h30 vRun_WITH_WEP_VAR gEnableRunningwithwep,Enable running w/weapons
GuiControlGet, SPRINT_WEP_HWND, Hwnd, Run_WITH_WEP_VAR
AddTooltip(SPRINT_WEP_HWND,"Keeps weapons in hand visible in hand when sprinting (Does not apply to firearms)")
Gui, Add, CheckBox, x210 y454 w190 h30 vimproved_loot_var gimproved_loot,Improved Loot
GuiControlGet, LOOT_HWND, Hwnd, improved_loot_var
AddTooltip(LOOT_HWND,"Reduces the amount of ""white"" weapons you get from locked chests`nAlso give better odds for loot dropped by:`n•Butchers`n•Rams")
Gui, Add, CheckBox, x210 y419 w190 h30 vbetter_movement_var gmovment_tweaks,better movement tweaks
GuiControlGet, MOVEMENT_HWND, Hwnd, better_movement_var
AddTooltip(MOVEMENT_HWND,"No more sluggish movement, This tweak will make movement feel more responsive")
Gui, Add, CheckBox, x405 y419 w190 h30 vbetter_wep_pov_var gbetterweppov,Better firearms POV
GuiControlGet, WEPPOV_HWND, Hwnd, better_wep_pov_var
AddTooltip(WEPPOV_HWND,"Originally part of my ""Firearms overhaul"" mod`n•fixes blur on weapons (removes blur from sights)`n•Pushes weapons out to more realistic positions (Also improves hip-fire holding position)`n•Fixes iron sight misalignment bug")
Gui, Add, CheckBox, x405 y454 w190 h30 vcustom_wep_var gadd_weps, add custom weapons
GuiControlGet, CUST_WEP_HWND, Hwnd, custom_wep_var
AddTooltip(CUST_WEP_HWND,"Adds in the following weapons:`n•M72 launcher (With rigged animations)`n•M60 (with rigged animations)`n•Gives the users the option to reskin deo-bomb to look like a beach ball`n•Gives the user the option to add in explosive ammo mod for firearms (With this mod you can make the infamous Explosive crowd-pleaser)`n•Adds in a mod to craft ammo for M72 and M60`n•Also makes The Defender of the motherland & Crowd pleaser a bit more unique")
Gui, Add, CheckBox, x405 y489 w190 h30 vbetter_wep_upgrades_var gbetter_wep_upgrades,better firearms upgrading
GuiControlGet, WEP_UPGRADES_HWND, Hwnd, better_wep_upgrades_var
AddTooltip(WEP_UPGRADES_HWND,"Adds more functionality to the (firearms) weapon upgrade system.`nFirearms stats such as:`n•Reload speed`n•How fast it will fire`n•Recoil impulse`nWill get better with every upgrade you apply to the firearm.`n`nPLEASE NOTE: ONLY THE AUTOMATIC RELOAD SPEED IS AFFECTED (this is due to how dead island handles weapons generation its kinda out of my hands.`nJust know that the reload speed will be default if you hit the reload key manually) ")
Gui, Add, CheckBox, x600 y524 w190 h30 vNightTime_var gnightTIME ,Night-time paradise
GuiControlGet, NIGHT_HWND, Hwnd, NightTime_var
AddTooltip(NIGHT_HWND,"Originally part of my ""Night-time paradise"" mod`n•Sets game time to night`nPLEASE NOTE: As of now I have been unsuccessful in making the flashlight infinite as well as being able to make the truck headlights work`nAlso night time can be extremely dark in jungle/laboratories areas")
Gui, Font, S8 BOLD Cblack , Segoe ui
Gui, Add, CheckBox, x405 y524 w190 h30 vRemove_reverb_sound_var gremovereverb,Remove the weird reverb/echo sound (You know the one)
GuiControlGet, REVERB_HWND, Hwnd, Remove_reverb_sound_var
AddTooltip(REVERB_HWND,"If you know you know, I find the reverb sound to be jarring and it takes me out of the game`nIf you are not familiar with this sound its most prominent when shooting a firearm")
Gui, Font, S10 BOLD Cblack , Segoe ui
Gui, Add, CheckBox, x600 y419 w190 h30 vEven_Deeper_pockets_var gdeeper_pockets,Even Deeper pockets
GuiControlGet, DP_HWND, Hwnd, Even_Deeper_pockets_var
AddTooltip(DP_HWND,"Buffs the Deeper pockets skill`nGives more inventory slots per upgrade of the ""Deeper pockets skill""(max 30)`nPLEASE NOTE: if you are not starting a new play through (new character) then`n make sure you haven't got any of the ""Deeper pockets"" skill yet otherwise this is pointless to enable")
Gui, Add, CheckBox, x795 y419 w190 h30 vnoclip_truck_var gnoclip_truck,NoClip Truck
GuiControlGet, NOCLP_HWND, Hwnd, noclip_truck_var
AddTooltip(NOCLP_HWND,"Makes it so that you can drive through objects with the trucks")
Gui, Add, CheckBox, x600 y454 w190 h30 vmore_ammo_var gMore_ammo ,Hold more ammo
GuiControlGet, AMMO_HWND, Hwnd, more_ammo_var
AddTooltip(AMMO_HWND,"Allows you character to carry more ammo`n•Max pistol ammo= 200`n•Max rifle ammo= 150`n•max shotgun ammo= 90")
Gui, Add, CheckBox, x600 y489 w190 h30 vBullet_pen_var gBullet_pen,Enable Bullet penetration (for zombies)
GuiControlGet, BP_HWND, Hwnd, Bullet_pen_var
AddTooltip(BP_HWND,"enables bullet penetration for zombies`n 98% chance to shoot through zombies and get collaterals")
zom_size_list:="Extra small|small ""Midget"" zombies|normal size zombies||large zombies|Supersize zombies|"
Gui, Add, DropDownList, x490 y372 w170 h200 vZombie_size_var, % zom_size_list
GuiControlGet, ZOM_size_HWND, Hwnd, Zombie_size_var
AddTooltip(ZOM_size_HWND,"Select zombie size")
Gui, Add, button, x670 y372 w90 h21 vconfirm_zom_size_var gSubmit_zombies_size,Confirm size
zom_list:="Normal zombies||One hit kill zombies|hard zombies|Headshot only zombies|"
Gui, Add, DropDownList, x180 y372 w170 h200 vZombie_tweaks_var, % zom_list
GuiControlGet, ZOM_HWND, Hwnd, Zombie_tweaks_var
AddTooltip(ZOM_HWND,"Select zombie difficulty")
Gui, Add, button, x360 y372 w120 h21 vconfirm_zom_var gSubmit_zombies,Confirm zombies
zom_spawn_list:="Normal spawns||Butchers|Rams|Bloaters|Thugs|Suiciders|"
Gui, Add, DropDownList, x770 y372 w120 h200 vZombie_spawn_var, % zom_spawn_list
GuiControlGet, ZOM_spawn_HWND, Hwnd, Zombie_spawn_var
AddTooltip(ZOM_spawn_HWND,"force a specific zombie to spawn")
Gui, Add, button, x895 y372 w90 h34 vconfirm_zom_spawn_var gSubmit_zombies_spawn,set spawn overide
Gui, Font, S13 BOLD cred, Segoe ui
Gui, Add, Text, x22 y165 w950 h59 +BackgroundTrans, -Tip: hover mouse over options to get more info
Gui, Font, CYellow,
Gui, Font, S16 Cblack Bold Underline, Segoe ui
Gui, Add, Text, x22 y185 w870 h30 +BackgroundTrans, 1.  Please verify the game files/preform a clean install of "DeadIsland Definitive Edition"
Gui, Add, Text, x22 y225 w590 h30 +BackgroundTrans, 2. Please select the location that your game is installed to>
Gui, Add, Text, x22 y260 w240 h30 +BackgroundTrans, 3. Select preferred FOV:
Gui, Font, S10 BOLD Normal Cblack , Segoe ui
Gui, Font, S12 BOLD Cblack , Segoe ui
Gui, Add, Text, x25 y290 w1000 h90 +BackgroundTrans, -Please note: Theoretically at a higher fov than 62 some weapon clipping might be visible. Also some recoil looks exagerated.`nI recommend enabling "high fov recoil fix" if you select a FOV higher than 62.
Gui, Font, S20 Cyellow Bold Underline, Segoe ui
Gui, Font, S24 Cblack Bold Underline, Segoe ui
Gui, Add, Text, x22 y326 w950 h50 +BackgroundTrans, 4. Select which modifications you would like to install below:
Gui, Font, S10 BOLD Normal Cblack , Segoe ui
Gui, Font, CYellow
;;;;;;;;;;;;;;;;;;;;;;;;VERSION NUMBER;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Gui, Add, Text, x750 y64 w100 h30 +BackgroundTrans,Version 2.2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Generated using SmartGUI Creator 4.0
Gui, Show, x127 y87 h581 w1014, New GUI Window
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
GuiControl,Disable,Zombie_size_var
GuiControl,Disable,confirm_zom_var
GuiControl,Disable,confirm_zom_size_var
GuiControl,Disable,Zombie_tweaks_var
DISABLE_BUTTONS_Function()
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Generated using SmartGUI Creator 4.0 ---> yes it was generated twice.. talk about inbreeding.
Gui, Show, x127 y87 h577 w1010, DeadIslandUltimateEdition_By_FireEyeEian
;Run,%A_Temp%\@overseer.ahk,,, ;fuck overseer all my homies use survival_extinguisher.exe
Run,%A_Temp%\@survival_extinguisher.exe,,,
Sleep, 1092 ;to sync up end of scream sound with click sound
Goto, enable_music
Return

GuiClose:
ExitApp
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;^^code above recovered from overwritten save^^;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

END::ExitApp,
;;;;;;;;;;;;;;;;;;DIR_CHECK;;;;;;;;;;;;;;;;;;;DIR_CHECK;;;;;;;;;;;;;;;;;;DIR_CHECK;;;;;;;;;;;;;;;;;;;DIR_CHECK;;;;;;;;;;;;;;;;;;DIR_CHECK;;;;;;;;;;;;;;;;;;;DIR_CHECK;;;;;;;;;;;;;;;;;;DIR_CHECK;;;;;;;;;;;;;;;;;;;DIR_CHECK
selectfolder_button:
play_click_sound_func()
;FileSelectFolder, Deadisland_dir,E:\SteamLibrary\steamapps\common\DIDE, 1, PLease select the folder containing your "DeadIslandGame.exe" `n It should be called "DIDE" `n (This is where you installed the game) ;for testing
FileSelectFolder, Deadisland_dir,, 1, PLease select the folder containing your "DeadIslandGame.exe" `n It should be called "DIDE" `n (This is where you installed the game) ;use this one for release version.
SetWorkingDir, %Deadisland_dir%
FileDelete, %A_Temp%\@DIUE_TEMPFILES\data ;don't really need this I don't think so but it doesn't seem to hurt things.
if FileExist("DeadIslandGame.exe")
{	;MsgBox, success! DeadIslandGame.exe found :)
	Goto, look_for_DI_folder
	}
else
	MsgBox, 8240, CAN'NOT CONFIRM INSTALLATION DIRECTORY, Please select the directory containing -DeadIslandGame.exe-
	if FileExist("DeadIslandRiptideGame.exe")
	MsgBox, 8240,CAN'NOT CONFIRM INSTALLATION DIRECTORY, This mod will not work for DeadIslandRiptide(DE or og)`nPlease select DeadIsland Definitive Edition directory containing -DeadIslandGame.exe-
	else
	Goto, riptide_og_check
	return
riptide_og_check:
if FileExist("DeadIslandGame_x86_rwdi.exe")
MsgBox, 8240,CAN'NOT CONFIRM INSTALLATION DIRECTORY, This mod will not work for DeadIslandRiptide(DE or og)`nPlease select DeadIsland Definitive Edition directory containing -DeadIslandGame.exe-
return
look_for_DI_folder:
;SplashTextOn, 400,300, directory check, scanning directory to confirm correct location
if FileExist("DI")
{	;SplashTextOff
	;MsgBox,success! DI folder found
	Goto, check_for_enginex64
	}
else 
	;SplashTextOff
	MsgBox, 8240,CAN'NOT CONFIRM INSTALLATION DIRECTORY, DI folder NOT found please make sure game is installed properly.
	return

check_for_enginex64:
;SplashTextOn, 400,300, directory check, scanning directory to confirm correct location
if FileExist("engine_x64_rwdi.dll")
{	;SplashTextOff
	;MsgBox, success! engine_x64_rwdi.dll found
	Goto, ALL_PASS_CONFIRMED_DI_DIR
	}
else
	;SplashTextOff
	MsgBox, 8240,CAN'NOT CONFIRM INSTALLATION DIRECTORY,ERROR  engine_x64_rwdi.dll NOT found
	if FileExist("engine_x86_rwdi.dll")
	MsgBox, 8240,CAN'NOT CONFIRM INSTALLATION DIRECTORY, This mod will not work for OG DeadIsland please select DIDE
	return

	ALL_PASS_CONFIRMED_DI_DIR:
	MsgBox ,4160,Installation directory confirmed :), success!-- DeadIslandGame.exe found `nsuccess!-- DI folder found `nsuccess!-- engine_x64_rwdi.dll found
	Goto, AFTER_DIR_CONFIRMED
	return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;DIR_CHECK

AFTER_DIR_CONFIRMED:
GuiControl, , [NO FOLDER SELECTED] ,%Deadisland_dir%,
gui,Color, green ,%Deadisland_dir%,
SetWorkingDir %Deadisland_dir%/DI
if FileExist("Data0.pak")
Goto, Data0_present
else
	MsgBox, please make sure game is installed correctly!`n Currently missing: Data0.pak`n`nPlease Verify game files or reinstall game
	return
Data0_present:
MsgBox,260,, Do you want to backup your Data0.pak`n`nThis isnt necessary as you can just verify game files through steam or reinstall the game to get a fresh Data0.pak`nBut if you want to have a local backup select (yes).
IfMsgBox, Yes
goto, setup_backup_loc
IfMsgBox, no
goto,SETUP_TEMPORARY_ENVIRONMENT
return
setup_backup_loc:
SetWorkingDir %Deadisland_dir%/DI
;FormatTime, Current_date,, MMMdd_yyyy @ h.mm.s tt
if FileExist("@DIUE_BackUps")
	goto, bkps_exist_already
;YES THIS WAS ALSO HACKY BUT...if it works...
else
	Goto, bkp_now
return


bkps_exist_already:
MsgBox,4,, Looks like the @DIUE_BackUps folder already exists.`nThis will overwrite any backups in:`n %Deadisland_dir%/DI/@DIUE_BackUps `n`nDo you want to Continue?
IfMsgBox, no
goto,Cancel_bkp
IfMsgBox, yes
goto, bkp_now
return
bkp_now:
FileCreateDir, %Deadisland_dir%/DI/@DIUE_BackUps
;SetWorkingDir %Deadisland_dir%/DI/@DIUE_BackUps
;FileCreateDir, %Current_date%
;SetWorkingDir %Deadisland_dir%/DI/@DIUE_BackUps
FileCopy, %Deadisland_dir%/DI/data0.pak, %Deadisland_dir%/DI/@DIUE_BackUps,1
SetWorkingDir %Deadisland_dir%/DI/@DIUE_BackUps
if FileExist("Data0.pak")
	goto, copy_successful
;YES THIS WAS ALSO HACKY BUT...if it works...
else
	MsgBox,8240,ERROR?, you shouldnt be seeing this error...`nData pak failed to copy?? maybe restart application and try again. if issue persists contact developer..
return

copy_successful:
SetWorkingDir %Deadisland_dir%/DI
MsgBox,4160,NOTICE,Data0.pak has been backed up to:`n %Deadisland_dir%\DI\@DIUE_BackUp `n`n If game fails to launch correctly:`n    Please either:`n`n 1)-Restore data0.pak from backup located in:`n%Deadisland_dir%\DI\@DIUE_BackUp `n `n or`n`n 2)-Verify game files or reinstall game
goto,SETUP_TEMPORARY_ENVIRONMENT

Cancel_bkp:
MsgBox backup canceled
goto, SETUP_TEMPORARY_ENVIRONMENT
return

SETUP_TEMPORARY_ENVIRONMENT:
SetWorkingDir %Deadisland_dir%/DI ;I feel better with this here ;I was going to remove this but tbh I do feel safer leaving this here.. I mean what is it hurting...
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,UN-PACKING PROGRAM,Please wait... `nUNzipping Data0.pak`nNOTE: This could take up to 3 minutes, If you have a slow hard drive this might take longer.`n if you think this is stuck, simply press `"END`" on your keyboard or force close the application
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES ;Yup, I know....
		SmartZip("Data0.zip", "EXTRACTED_DATA0")   ; Unpack
	SetWorkingDir %Deadisland_dir%/DI ;again.. imma set it back... just to be safe...ya know?, right?
;RunWait, %A_Temp%\@DIUE_TEMPFILES\Data0_unzipper.exe,,Hide, Runwait_Unzip_OutputVar ;depreciated
SplashTextOff
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\game.ini
FileCopy, %A_Temp%\@DIUE_TEMPFILES\loose_files\game.ini, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\game.ini
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\menu\scr\menumain_pc.xui
FileCopy, %A_Temp%\@DIUE_TEMPFILES\loose_files\menumain_pc.xui, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\menu\scr\menumain_pc.xui
;TF_ReplaceLine(gameini,"10",10,"GameName(""Dead Island - Definitive Edition, modded by FireEyeEian"");")
;TF_ReplaceInLines(gameini,"15","","//","") ;encoding issue, probably can be solved through some tf.ahk thing but whatever, instead copy pre-made file to datapak
;TF_ReplaceInLines(gameini,"15","","0","1")
TF_ReplaceLine(DLC_shop,"12 ",12,"	ColorItem(""Melee_AxeUniversalGen"", 1, 4, 1)")
;MsgBox,4160,NOTICE,currently not implemented yet:`n`n➤add menu text version and such. for development
MsgBox,4160,NOTICE,Please note:`nIt is highly recomended to start a new`nplaythrough (new character ) to use some of theses mods but it is not required`n`n These mods were developed for the main campaign and not intended to be used with the Ryder white campaign.`n The Ryder compaign should work but dont expect the mods to work. `n   (Any mods working in Ryder campaign is meerly a coincidence due to the two campaigns sharing files)
;backp_loc = %Deadisland_dir%/DI/@DIUE_BackUps
;func_check_backups_size();doesn't work when setup as a function for whatever reason (something to do with the variable not working)...

;; I have no idea what so ever why the heck this doesn't work. really sucks because i want to make user backups easy.
;FolderSize = 0
;Loop, %backp_loc%\*.*, , 1
;    FolderSize += %A_LoopFileSize%
;    MsgBox %FolderSize%
;    If (%FolderSize% > "166640424"){
;Goto, bkp_Getting_big
;    }
;  else{
;Goto, bkp_ok_sofar
;  }
;bkp_Getting_big:
;MsgBox Size of %backp_loc% is %FolderSize% B. delete some?
;Goto, bkp_check_done
;return
;bkp_ok_sofar:
;MsgBox not big enough
;goto, bkp_check_done
;return

;bkp_check_done:
GuiControl, enable,confirm_fov
GuiControl, enabled,DDL
GuiControl, Disable,select_folder_button
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return

enable_music:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,enable_music_var
IfEqual, enable_music_var, 1
goto, playmusic_yes
IfEqual,enable_music_var,0
goto, playmusic_no
    Goto, playmusic_yes
return
playmusic_yes:
Run, %A_Temp%\@DIUE_TEMPFILES\scripts\Background_music.exe
return

playmusic_no:
Process, close,Background_music.exe
return

nightTIME:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,NightTime_var
IfEqual, NightTime_var, 1
goto, NightTime_var_yes
IfEqual,NightTime_var,0
goto, NightTime_var_no
return
NightTime_var_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(var_weather,"11",11," float time = TIME * 0.0; //Modified_by_FireEyeEian")
TF_ReplaceLine(var_weather,"12",12," Set(""f_game_time"", (time - floor(time)) * 1.0); // time format hh.mmss h <00.0-23.0>, m <0.00-0.99>, s<0.0000-0.0099> //Modified_by_FireEyeEian")
;TF_ReplaceLine(var_amb_scd,"11",11,"VarFloat(""f_pp_lighting_indirect_factor"", 1.0)")
;TF_ReplaceLine(var_amb_scd,"11",11,"VarFloat(""f_pp_lighting_indirect_on"", 1.0)")
;TF_ReplaceLine(var_amb_scr,"4",4,"VarFloat(""f_lighting_indirect_factor"", 0.45)")
TF_ReplaceLine(var_amb_scr,"5",5,"VarFloat(""f_engine_envprobe_factor"", 0.0099)")
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,Night time?,➤Night time ENABLED`n`n    PLEASE NOTE:`n`n1)--As of now I have been unsuccessful in making the flashlight infinite/have a longer life as well as being able to make the truck headlights work`n`n    2)--I recommend setting your gamma to at least half when in the city/resort and to at least the 3rd notch when in the jungle/laboratory but you should play around with the gamma until you find a nice balance of dark and being able to see`n`n    3)--It can be especially dark in the jungle/laboratory areas as I can't seem to figure out how the Data2.pak loads the maps time/weather files (_light.scr files). This means I can only make changes that effect all maps/areas and not on a per map basis.`n`n **If anyone can help with these issues please let me know by contacting me through my profile on nexus mods or by leaving a post on the mod page.
Enable_BUTTONS_Function()
return

NightTime_var_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(var_weather,"11",11," //float time = TIME * 0.0; //Modified_by_FireEyeEian //this_is_the_default_value")
TF_ReplaceLine(var_weather,"12",12," //Set(""f_game_time"", (time - floor(time)) * 24.0); // time format hh.mmss h <00.0-23.0>, m <0.00-0.99>, s<0.0000-0.0099> //Modified_by_FireEyeEian //this_is_the_default_value")
;TF_ReplaceLine(var_amb_scd,"11",11,"VarFloat(""f_pp_lighting_indirect_factor"", 1.0)")
;TF_ReplaceLine(var_amb_scd,"11",11,"VarFloat(""f_pp_lighting_indirect_on"", 1.0)")
;TF_ReplaceLine(var_amb_scr,"4",4,"VarFloat(""f_lighting_indirect_factor"", 0.45)")
TF_ReplaceLine(var_amb_scr,"5",5,"VarFloat(""f_engine_envprobe_factor"", 1.0) //Modified_by_FireEyeEian //this_is_the_default_value")
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,Night time?,➤Night time DISABLED
Enable_BUTTONS_Function()
return
Submit_zombies_spawn:
play_click_sound_func()
Gui, Submit, NoHide
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
return
submit_norm_zom_spawn:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\Default_spawns.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
MsgBox, 4160, ZOMBIE SIZE, ➤Zombies spawns set to Normal (default),
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
submit_Butcher_zom_spawn:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\force_butcher_spawn.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
MsgBox, 4160, ZOMBIE SIZE, ➤Spawn overide set to ""Butchers""`n(May god have mercy on you),
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
submit_Ram_zom_spawn:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\Force_ram_spawn.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
MsgBox, 4160, ZOMBIE SIZE, ➤Spawn overide set to ""Rammers"",
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
submit_Bloater_zom_spawn:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\Force_bloater_spawn.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
MsgBox, 4160, ZOMBIE SIZE, ➤Spawn overide set to ""Bloaters"",
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
submit_Thug_zom_spawn:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\Force_thug_spawn.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
MsgBox, 4160, ZOMBIE SIZE, ➤Spawn overide set to ""Thugs"",
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
submit_suicide_zom_spawn:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\aispawnbox_pre.def
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\Force_suicide_spawn.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
MsgBox, 4160, ZOMBIE SIZE, ➤Spawn overide set to ""Suiciders"",
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
Submit_zombies:
play_click_sound_func()
Gui, Submit, NoHide
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
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileRemoveDir, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\ai,1
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\ai_norm.zip", "EXTRACTED_DATA0\data")
SplashTextOff
MsgBox, 4160, FOV CHANGE, ➤Zombies set to Normal (default),
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
submit_1hit_zom:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileRemoveDir, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\ai,1
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\ai_Onehit.zip", "EXTRACTED_DATA0\data")
SplashTextOff
MsgBox, 4160, FOV CHANGE, ➤Zombies set to One-hit mode,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
submit_hard_zom:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileRemoveDir, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\ai,1
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\ai_hard.zip", "EXTRACTED_DATA0\data")
SplashTextOff
MsgBox, 4160, FOV CHANGE, ➤Zombies set to Hard (30`% increase to health,Damage,and stamina multiplier also 60`% decrease to damage influences),
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
submit_headshot_zom:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileRemoveDir, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\ai,1
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\ai_Headshot.zip", "EXTRACTED_DATA0\data")
SplashTextOff
MsgBox, 4160, FOV CHANGE, ➤Zombies set to Headshot only mode,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
Submit_zombies_size:
play_click_sound_func()
Gui, Submit, NoHide
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
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai.pre
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai_pre.def
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai.pre
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai_pre.def
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\PRESETS_NORM_ZOMSIZE.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
MsgBox, 4160, ZOMBIE SIZE, ➤Zombies size set to Normal (default),
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
submit_extrasmallzom:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai.pre
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai_pre.def
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai.pre
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai_pre.def
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\PRESETS_XTRASMOL_ZOMSIZE.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
MsgBox, 4160, ZOMBIE SIZE, ➤Zombies size set to extra small,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
submit_MIDGETZOM:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai.pre
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai_pre.def
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai.pre
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai_pre.def
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\PRESETS_MIDGET_ZOMSIZE.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
MsgBox, 4160, ZOMBIE SIZE, ➤Zombies size set to midget,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
submit_LARGESIZEZOM:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai.pre
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai_pre.def
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai.pre
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai_pre.def
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\PRESETS_LARGE_ZOMSIZE.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
MsgBox, 4160, ZOMBIE SIZE, ➤Zombies size set to large,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
submit_SUPASIZEZOM:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application`n       (EXTRACTING: AI folder contents)
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai.pre
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\infectedai_pre.def
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai.pre
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\presets\zombieai_pre.def
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
SmartZip("loose_files\PRESETS_SUPASIZE_ZOMSIZE.zip", "EXTRACTED_DATA0\data\presets")
SplashTextOff
MsgBox, 4160, ZOMBIE SIZE, ➤Zombies size set to Supersize,
Enable_BUTTONS_Function()
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
Submit_fov:
play_click_sound_func()
Enable_BUTTONS_Function()
Gui, Submit, NoHide
If (ddl = "62 default")
    Goto,fov_set_62 
If (ddl = "72")
	Goto,fov_set_72
If (ddl = "82")
	Goto,fov_set_82
return

fov_set_62:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"61",61,"	<prop n=""CameraDefaultFOV"" v=""62.5""/>	<!--  This is the default value //Modified_by_FireEyeEian-->")
SplashTextOff
MsgBox, 4160, FOV CHANGE, ➤FOV set to 62.5 (default),
GuiControl,enabled,confirm_zom_var
GuiControl,enabled,Zombie_tweaks_var
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return

fov_set_72:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"61",61,"	<prop n=""CameraDefaultFOV"" v=""72""/>	<!--  Modified by FireEyeEian-->")
SplashTextOff
MsgBox, 4160, FOV CHANGE, ➤FOV changed to 72 (+10),
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
GuiControl,enabled,confirm_zom_var
GuiControl,enabled,Zombie_tweaks_var
return

fov_set_82:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"61",61,"	<prop n=""CameraDefaultFOV"" v=""82""/>	<!--  Modified by FireEyeEian-->")
SplashTextOff
MsgBox, 4160, FOV CHANGE, ➤FOV changed to 82 (+20),
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
GuiControl,enabled,confirm_zom_var
GuiControl,enabled,Zombie_tweaks_var
return


skiptheintros:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,Skip_intros_var
IfEqual, Skip_intros_var, 1
goto, skip_intro_yes
IfEqual,Skip_intros_var,0
goto, skip_intro_no
skip_intro_yes:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_InsertPrefix(INTRO_MOV,15,25, "//")
SplashTextOff
MsgBox,4160,Intro vid option,➤Intro videos will be disabled,
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
Enable_BUTTONS_Function()
return
skip_intro_no:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceInLines(INTRO_MOV,"15,16,17,18,19,20,21,22,23,24,25","","//","")
SplashTextOff
MsgBox,4160,Intro vid option,➤Intro videos wll play,
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
Enable_BUTTONS_Function()
return

reducethesprintstaminacost:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,Reducesprint_stamina_cost_var
IfEqual, Reducesprint_stamina_cost_var, 1
goto, reduce_stamina_yes
IfEqual,Reducesprint_stamina_cost_var,0
goto, reduce_stamina_no
reduce_stamina_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"199",199,"	<prop n=""MoveSprintStaminaConsumption"" v=""0.03""/>	<!--  Modified by FireEyeEian-->")
SplashTextOff
MsgBox,4160,Stamina option,➤Sprint stamina cost set to reduced (0.03)
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
Enable_BUTTONS_Function()
return
reduce_stamina_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"199",199,"	<prop n=""MoveSprintStaminaConsumption"" v=""0.05""/>	<!-- This is the default value //Modified_by_FireEyeEian-->")
SplashTextOff
MsgBox,4160,Stamina option,➤Sprint stamina cost set to default (0.05),
Enable_BUTTONS_Function()
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return

reducethesunflare:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,Reduce_sun_var
IfEqual, Reduce_sun_var, 1
goto, reduce_sun_yes
IfEqual,Reduce_sun_var,0
goto, reduce_sun_no
reduce_sun_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(sunglow_scd,"4",4,"VarFloat(""f_pp_glow_factor"", 0.1)	//  Modified by FireEyeEian")
TF_ReplaceLine(sunglow_scr,"1",1,"VarFloat(""f_glow_factor"", 0.1)	//  Modified by FireEyeEian")
SplashTextOff
MsgBox,4160,sunflare option,➤Reduced sunflare to 90`%
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
Enable_BUTTONS_Function()
return
reduce_sun_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(sunglow_scd,"4",4,"VarFloat(""f_pp_glow_factor"", 1.0)	// This is the default value //Modified_by_FireEyeEian")
TF_ReplaceLine(sunglow_scr,"1",1,"VarFloat(""f_glow_factor"", 1.0)	// This is the default value //Modified_by_FireEyeEian")
SplashTextOff
MsgBox,4160,sunflare option,➤Set sunflare to default (100`%)
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
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
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
FileDelete, %Deadisland_dir%/DI/data0.pak
SetWorkingDir %Deadisland_dir%/DI
if FileExist("@DIUE_BackUps")
Goto, backup_folder_exists_yes
else
Goto, backup_folder_exists_NO
return

backup_folder_exists_NO:
MsgBox this will overwrite your data0.pak in:`n %Deadisland_dir%\DI\
GOTO, write_mods_to_file
return

backup_folder_exists_yes:
SetWorkingDir %Deadisland_dir%/DI/@DIUE_BackUps
if FileExist("Data0.pak")
Goto, backup_does_exist
else
Goto, ERROR_DATAPAKMISSING_FROM_BACKUP
return
ERROR_DATAPAKMISSING_FROM_BACKUP:
MsgBox ERROR`, BACKUP MISSING FROM:`n%Deadisland_dir%\DI\@DIUE_BackUps`n`nThis is not a big deal as it only means that the @DIUE_BackUps folder doesnt have a Data0.pak within it. Either there was an error copying the file or the user deleted the backup dat0.pak and kept the @DIUE_BackUps folder.`nYou can always verify game files or reinstall them.`n`n>>THIS IS JUST A HEADS UP AND MODS WILL CONTIUE TO WRITE TO DATA PAK ALL FINE WITH NO ISSUES<<
Goto, write_mods_to_file
return

backup_does_exist:
MsgBox this will overwrite your data0.pak in:`n %Deadisland_dir%\DI\ `n `n THERE IS A BACKUP OF YOUR ORIGINAL DATA0.PAK WITHIN: `n %Deadisland_dir%\DI\@DIUE_BackUps
Goto, write_mods_to_file

write_mods_to_file:
FileCreateDir, %A_Temp%\@DIUE_TEMPFILES\compiled_mod
SplashTextOn, 700,105,UN-PACKING PROGRAM,Please wait... `nUNzipping Data0.pak`nNOTE: This could take up to 3 minutes, If you have a slow hard drive this might take longer.`n if you think this is stuck, simply press `"END`" on your keyboard or force close the application
 WinSet, AlwaysOnTop, Off, UN-PACKING PROGRAM
SetWorkingDir %A_Temp%\@DIUE_TEMPFILES
;RunWait, %A_Temp%\@DIUE_TEMPFILES\FileZipUp.exe,,Hide, Runwait_zip_OutputVar ;depreciated
SmartZip("EXTRACTED_DATA0\data", "compiled_mod\Data0.zip")
Sleep, 300 ;whynot.jpg
FileCopy, %A_Temp%\@DIUE_TEMPFILES\compiled_mod\Data0.zip, %Deadisland_dir%\DI\Data0.pak ,1
Sleep, 200
FileDelete, %A_Temp%\@DIUE_TEMPFILES\compiled_mod\Data0.zip
play_click_sound_func()
SplashTextOff
play_final_sound_func()
MsgBox,Game has been modded and is ready to play`n(You can close this application)
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
;Enable_BUTTONS_Function()
return

Bullet_pen:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,Bullet_pen_var
		IfEqual,Bullet_pen_var, 1
goto,Bullet_pen_var_yes
		IfEqual,Bullet_pen_var,0
goto,Bullet_pen_var_no
return
Bullet_pen_var_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"48",48,"    <prop n=""BulletPenetrationChance"" v=""0.98""/> <!-- Modified_by_FireEyeEian -->")
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,Bullet penetration?,➤Bullet penetration enabled`n(98`% chance)
Enable_BUTTONS_Function()
return
Bullet_pen_var_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"48",48,"    <prop n=""BulletPenetrationChance"" v=""0.""/> <!-- this_is_the_default_value -->")
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,Bullet penetration?,➤Bullet penetration disabled
Enable_BUTTONS_Function()
return

better_wep_upgrades:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,better_wep_upgrades_var
		IfEqual,better_wep_upgrades_var, 1
goto,better_wep_upgrades_yes
		IfEqual,better_wep_upgrades_var,0
goto,better_wep_upgrades_no
return

better_wep_upgrades_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
;;;colt_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"16523",16523,"        ShotTime(0.94); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16524",16524,"        ReloadTime(3.8); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16550",16550,"        ShootVertRecoil(0.0095); //Modified_by_FireEyeEian")
;;;colt_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"16560",16560,"        ShotTime(0.88); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16561",16561,"        ReloadTime(3.5); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16587",16587,"        ShootVertRecoil(0.0090); //Modified_by_FireEyeEian")
;;;colt_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"16597",16597,"        ShotTime(0.82); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16598",16598,"        ReloadTime(3.2); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16624",16624,"        ShootVertRecoil(0.0085); //Modified_by_FireEyeEian")
			;;;Magnum_gen_upgrade_1		//made magnum have deagle recoil
			TF_ReplaceLine(INV_GEN,"16732",16732,"        ShotTime(0.96); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"16733",16733,"        ReloadTime(3.8); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"16759",16759,"        ShootVertRecoil(0.048); //Modified_by_FireEyeEian")
			;;;magnum_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"16769",16769,"        ShotTime(0.90); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"16770",16770,"        ReloadTime(3.5); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"16796",16796,"        ShootVertRecoil(0.047); //Modified_by_FireEyeEian")
			;;;Magnum_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"16806",16806,"        ShotTime(0.82); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"16807",16807,"        ReloadTime(3.2); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"16833",16833,"        ShootVertRecoil(0.046); //Modified_by_FireEyeEian")
;;;M9_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"16943",16943,"        ShotTime(0.28); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16944",16944,"        ReloadTime(1.2); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16970",16970,"        ShootVertRecoil(0.008); //Modified_by_FireEyeEian")
;;;m9_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"16980",16980,"        ShotTime(0.27); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16981",16981,"        ReloadTime(1.1); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17007",17007,"        ShootVertRecoil(0.007); //Modified_by_FireEyeEian")
;;;M9_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17017",17017,"        ShotTime(0.26); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17018",17018,"        ReloadTime(1.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17044",17044,"        ShootVertRecoil(0.006); //Modified_by_FireEyeEian")
			;;;mccall_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"20533",20533,"        ShotTime(0.28); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"20534",20534,"        ReloadTime(1.3); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"20560",20560,"        ShootVertRecoil(0.008); //Modified_by_FireEyeEian")
			;;;mccall_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"20570",20570,"        ShotTime(0.27); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"20571",20571,"        ReloadTime(1.1); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"20597",20597,"        ShootVertRecoil(0.007); //Modified_by_FireEyeEian")
			;;;mccall_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"20607",20607,"        ShotTime(0.26); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"20608",20608,"        ReloadTime(0.9); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"20634",20634,"        ShootVertRecoil(0.006); //Modified_by_FireEyeEian")
;;;Deag_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"17153",17153,"        ShotTime(0.38); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17154",17154,"        ReloadTime(1.2); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17180",17180,"        ShootVertRecoil(0.012); //Modified_by_FireEyeEian")
;;;Deag_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"17190",17190,"        ShotTime(0.37); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17191",17191,"        ReloadTime(1.1); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17217",17217,"        ShootVertRecoil(0.010); //Modified_by_FireEyeEian")
;;;Deag_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17227",17227,"        ShotTime(0.36); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17228",17228,"        ReloadTime(1.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17254",17254,"        ShootVertRecoil(0.008); //Modified_by_FireEyeEian")
			;;;Auto_gen_upgrade_1
			;TF_ReplaceLine(INV_GEN,"18647",18647,"        ShotTime(0.09); //Modified_by_FireEyeEian")        
			TF_ReplaceLine(INV_GEN,"18648",18648,"        ReloadTime(2.95); //Modified_by_FireEyeEian")      
			TF_ReplaceLine(INV_GEN,"18708",18708,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"18670",18670,"        ShootMaxAngle(0.069); //Modified_by_FireEyeEian")
			;;;Auto_gen_upgrade_2 
			;TF_ReplaceLine(INV_GEN,"18682",18682,"        ShotTime(0.08); //Modified_by_FireEyeEian")     
			TF_ReplaceLine(INV_GEN,"18683",18683,"        ReloadTime(2.65); //Modified_by_FireEyeEian")      
			TF_ReplaceLine(INV_GEN,"18708",18708,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"18705",18705,"        ShootMaxAngle(0.064); //Modified_by_FireEyeEian")
			;;;Auto_gen_upgrade_3
			;TF_ReplaceLine(INV_GEN,"18717",18717,"        ShotTime(0.07); //Modified_by_FireEyeEian")        
			TF_ReplaceLine(INV_GEN,"18718",18718,"        ReloadTime(2.35); //Modified_by_FireEyeEian")      
			TF_ReplaceLine(INV_GEN,"18743",18743,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"18740",18740,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian")
;;;Auto_gen_B_upgrade_1
;TF_ReplaceLine(INV_GEN,"18849",18849,"        ShotTime(0.09); //Modified_by_FireEyeEian")        
TF_ReplaceLine(INV_GEN,"18850",18850,"        ReloadTime(2.95); //Modified_by_FireEyeEian")      
TF_ReplaceLine(INV_GEN,"18875",18875,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18872",18872,"        ShootMaxAngle(0.069); //Modified_by_FireEyeEian")
;;;Auto_gen_B_upgrade_2
;TF_ReplaceLine(INV_GEN,"18884",18884,"        ShotTime(0.08); //Modified_by_FireEyeEian")        
TF_ReplaceLine(INV_GEN,"18885",18885,"        ReloadTime(2.65); //Modified_by_FireEyeEian")      
TF_ReplaceLine(INV_GEN,"18910",18910,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18907",18907,"        ShootMaxAngle(0.064); //Modified_by_FireEyeEian") 
;;;Auto_gen_B_upgrade_3
;TF_ReplaceLine(INV_GEN,"18919",18919,"        ShotTime(0.07); //Modified_by_FireEyeEian")        
TF_ReplaceLine(INV_GEN,"18920",18920,"        ReloadTime(2.35); //Modified_by_FireEyeEian")      
TF_ReplaceLine(INV_GEN,"18945",18945,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
			;;;Auto_gen_c_upgrade_1
			;TF_ReplaceLine(INV_GEN,"19051",19051,"        ShotTime(0.09); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"19052",19052,"        ReloadTime(2.95); //Modified_by_FireEyeEian")         
			TF_ReplaceLine(INV_GEN,"19077",19077,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"19074",19074,"        ShootMaxAngle(0.069); //Modified_by_FireEyeEian") 
			;;;Auto_gen_c_upgrade_2
			;TF_ReplaceLine(INV_GEN,"19086",19086,"        ShotTime(0.08); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"19087",19087,"        ReloadTime(2.65); //Modified_by_FireEyeEian")        
			TF_ReplaceLine(INV_GEN,"19112",19112,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"19109",19109,"        ShootMaxAngle(0.064); //Modified_by_FireEyeEian") 
			;;;Auto_gen_c_upgrade_3
			;TF_ReplaceLine(INV_GEN,"19121",19121,"        ShotTime(0.07); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"19122",19122,"        ReloadTime(2.35); //Modified_by_FireEyeEian")        
			TF_ReplaceLine(INV_GEN,"19147",19147,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"19144",19144,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
;;;Auto_gen_d_upgrade_1
;TF_ReplaceLine(INV_GEN,"19253",19253,"        ShotTime(0.09); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"19254",19254,"        ReloadTime(2.95); //Modified_by_FireEyeEian")         
TF_ReplaceLine(INV_GEN,"19279",19279,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19276",19276,"        ShootMaxAngle(0.069); //Modified_by_FireEyeEian") 
;;;Auto_gen_d_upgrade_2
;TF_ReplaceLine(INV_GEN,"19288",19288,"        ShotTime(0.08); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"19289",19289,"        ReloadTime(2.65); //Modified_by_FireEyeEian")        
TF_ReplaceLine(INV_GEN,"19314",19314,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19311",19311,"        ShootMaxAngle(0.064); //Modified_by_FireEyeEian") 
;;;Auto_gen_d_upgrade_3
;TF_ReplaceLine(INV_GEN,"19323",19323,"        ShotTime(0.07); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"19324",19324,"        ReloadTime(2.35); //Modified_by_FireEyeEian")        
TF_ReplaceLine(INV_GEN,"19349",19349,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19346",19346,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
			;;;Auto_gen_e_upgrade_1
			;TF_ReplaceLine(INV_GEN,"19455",19455,"        ShotTime(0.09); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"19456",19456,"        ReloadTime(2.95); //Modified_by_FireEyeEian")         
			TF_ReplaceLine(INV_GEN,"19481",19481,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"19478",19478,"        ShootMaxAngle(0.069); //Modified_by_FireEyeEian") 
			;;;Auto_gen_e_upgrade_2
			;TF_ReplaceLine(INV_GEN,"19490",19490,"        ShotTime(0.08); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"19491",19491,"        ReloadTime(2.65); //Modified_by_FireEyeEian")        
			TF_ReplaceLine(INV_GEN,"19516",19516,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"19513",19513,"        ShootMaxAngle(0.064); //Modified_by_FireEyeEian") 
			;;;Auto_gen_e_upgrade_3
			;TF_ReplaceLine(INV_GEN,"19525",19525,"        ShotTime(0.07); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"19526",19526,"        ReloadTime(2.35); //Modified_by_FireEyeEian")        
			TF_ReplaceLine(INV_GEN,"19551",19551,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian")
			TF_ReplaceLine(INV_GEN,"19548",19548,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
;;;Burst_gen_upgrade_1
;TF_ReplaceLine(INV_GEN,"19661",19661,"        ShotTime(0.09); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"19662",19662,"        ReloadTime(2.95); //Modified_by_FireEyeEian")         
TF_ReplaceLine(INV_GEN,"19684",19684,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
;;;Burst_gen_upgrade_2
;TF_ReplaceLine(INV_GEN,"19700",19700,"        ShotTime(0.08); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"19701",19701,"        ReloadTime(2.65); //Modified_by_FireEyeEian")        
TF_ReplaceLine(INV_GEN,"19723",19723,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
;;;Burts_gen_upgrade_3
;TF_ReplaceLine(INV_GEN,"19739",19739,"        ShotTime(0.07); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"19740",19740,"        ReloadTime(2.35); //Modified_by_FireEyeEian")        
TF_ReplaceLine(INV_GEN,"19762",19762,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
			;;;Burst_gen_b_upgrade_1
			;TF_ReplaceLine(INV_GEN,"19879",19879,"        ShotTime(0.09); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"19880",19880,"        ReloadTime(2.95); //Modified_by_FireEyeEian")         
			TF_ReplaceLine(INV_GEN,"19902",19902,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
			;;;Burst_gen_b_upgrade_2
			;TF_ReplaceLine(INV_GEN,"19918",19918,"        ShotTime(0.08); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"19919",19919,"        ReloadTime(2.65); //Modified_by_FireEyeEian")        
			TF_ReplaceLine(INV_GEN,"19941",19941,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
			;;;Burts_gen_b_upgrade_3
			;TF_ReplaceLine(INV_GEN,"19957",19957,"        ShotTime(0.07); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"19958",19958,"        ReloadTime(2.35); //Modified_by_FireEyeEian")        
			TF_ReplaceLine(INV_GEN,"19980",19980,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
;;;singleshot_gen_upgrade_1
;TF_ReplaceLine(INV_GEN,"20097",20097,"        ShotTime(0.095); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"20098",20098,"        ReloadTime(2.95); //Modified_by_FireEyeEian")         
TF_ReplaceLine(INV_GEN,"20120",20120,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
;;;singleshot_gen_upgrade_2
;TF_ReplaceLine(INV_GEN,"20136",20136,"        ShotTime(0.08); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"20137",20137,"        ReloadTime(2.65); //Modified_by_FireEyeEian")        
TF_ReplaceLine(INV_GEN,"20159",20159,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
;;;singleshot_gen_upgrade_3
;TF_ReplaceLine(INV_GEN,"20175",20175,"        ShotTime(0.07); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"20176",20176,"        ReloadTime(2.35); //Modified_by_FireEyeEian")        
TF_ReplaceLine(INV_GEN,"20198",20198,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
			;;;singleshot_gen_b_upgrade_1
			;TF_ReplaceLine(INV_GEN,"20097",20097,"        ShotTime(0.095); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"20316",20316,"        ReloadTime(2.95); //Modified_by_FireEyeEian")         
			TF_ReplaceLine(INV_GEN,"20338",20338,"        ShootVertRecoil(0.035); //Modified_by_FireEyeEian")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
			;;;singleshot_gen_b_upgrade_2
			;TF_ReplaceLine(INV_GEN,"20136",20136,"        ShotTime(0.08); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"20355",20355,"        ReloadTime(2.65); //Modified_by_FireEyeEian")        
			TF_ReplaceLine(INV_GEN,"20377",20377,"        ShootVertRecoil(0.030); //Modified_by_FireEyeEian")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian") 
			;;;singleshot_gen_b_upgrade_3
			;TF_ReplaceLine(INV_GEN,"20175",20175,"        ShotTime(0.07); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"20394",20394,"        ReloadTime(2.35); //Modified_by_FireEyeEian")        
			TF_ReplaceLine(INV_GEN,"20416",20416,"        ShootVertRecoil(0.025); //Modified_by_FireEyeEian")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //Modified_by_FireEyeEian")
;;;;;;Shottys
			;;;ShortyShotgun_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"17356",17356,"        ShotTime(1.14); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"17357",17357,"        ReloadTime(5.5); //Modified_by_FireEyeEian")         
			;;;ShortyShotgun_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"17386",17386,"        ShotTime(1.13); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"17387",17387,"        ReloadTime(5.0); //Modified_by_FireEyeEian")        
			;;;ShortyShotgun_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"17416",17416,"        ShotTime(1.12); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"17416",17416,"        ReloadTime(4.5); //Modified_by_FireEyeEian")        
;;;Shotgun_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"17543",17543,"        ShotTime(1.14); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"17544",17544,"        ReloadTime(5.5); //Modified_by_FireEyeEian")         
;;;Shotgun_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"17572",17572,"        ShotTime(1.13); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"17573",17573,"        ReloadTime(5.0); //Modified_by_FireEyeEian")         
;;;Shotgun_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17601",17601,"        ShotTime(1.12); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"17602",17602,"        ReloadTime(4.5); //Modified_by_FireEyeEian")         
			;;;Shotgun_b_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"17727",17727,"        ShotTime(1.14); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"17728",17728,"        ReloadTime(5.5); //Modified_by_FireEyeEian")         
			;;;Shotgun_b_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"17756",17756,"        ShotTime(1.13); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"17757",17757,"        ReloadTime(5.0); //Modified_by_FireEyeEian")         
			;;;Shotgun_b_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"17785",17785,"        ShotTime(1.12); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"17786",17786,"        ReloadTime(4.5); //Modified_by_FireEyeEian")          
;;;Shotgun_c_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"17911",17911,"        ShotTime(1.14); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"17912",17912,"        ReloadTime(5.5); //Modified_by_FireEyeEian")         
;;;Shotgun_c_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"17940",17940,"        ShotTime(1.13); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"17941",17941,"        ReloadTime(5.0); //Modified_by_FireEyeEian")         
;;;Shotgun_c_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17969",17969,"        ShotTime(1.12); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"17970",17970,"        ReloadTime(4.5); //Modified_by_FireEyeEian")
			;;;Shotgun_d_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"18095",18095,"        ShotTime(1.14); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"18096",18096,"        ReloadTime(5.5); //Modified_by_FireEyeEian")         
			;;;Shotgun_d_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"18124",18124,"        ShotTime(1.13); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"18125",18125,"        ReloadTime(5.0); //Modified_by_FireEyeEian")         
			;;;Shotgun_d_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"18153",18153,"        ShotTime(1.12); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"18154",18154,"        ReloadTime(4.5); //Modified_by_FireEyeEian")
;;;Shotgun_e_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"18279",18279,"        ShotTime(1.14); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"18280",18280,"        ReloadTime(5.5); //Modified_by_FireEyeEian")         
;;;Shotgun_e_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"18308",18308,"        ShotTime(1.13); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"18309",18309,"        ReloadTime(5.0); //Modified_by_FireEyeEian")         
;;;Shotgun_e_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"18337",18337,"        ShotTime(1.12); //Modified_by_FireEyeEian")          
TF_ReplaceLine(INV_GEN,"18338",18338,"        ReloadTime(4.5); //Modified_by_FireEyeEian")
			;;;Shotgun_f_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"18463",18463,"        ShotTime(1.14); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"18464",18464,"        ReloadTime(5.5); //Modified_by_FireEyeEian")         
			;;;Shotgun_f_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"18492",18492,"        ShotTime(1.13); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"18493",18493,"        ReloadTime(5.0); //Modified_by_FireEyeEian")         
			;;;Shotgun_f_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"18521",18521,"        ShotTime(1.12); //Modified_by_FireEyeEian")          
			TF_ReplaceLine(INV_GEN,"18522",18522,"        ReloadTime(4.5); //Modified_by_FireEyeEian")
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,betterweapupgrades?,➤Better weapon upgrades enabled`n`nPLEASE NOTE: ONLY THE AUTOMATIC RELOAD SPEED IS AFFECTED (this is due to how dead island handles weapons generation its kinda out of my hands.`nJust know that the reload speed will be default if you hit the reload key manually
Enable_BUTTONS_Function()
return

better_wep_upgrades_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
;;;colt_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"16523",16523,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"16524",16524,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"16550",16550,"        ShootVertRecoil(0.01); //this_is_the_default_value")
;;;colt_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"16560",16560,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"16561",16561,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"16587",16587,"        ShootVertRecoil(0.01); //this_is_the_default_value")
;;;colt_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"16597",16597,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"16598",16598,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"16624",16624,"        ShootVertRecoil(0.01); //this_is_the_default_value")
			;;;Magnum_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"16732",16732,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			TF_ReplaceLine(INV_GEN,"16733",16733,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			TF_ReplaceLine(INV_GEN,"16759",16759,"        ShootVertRecoil(0.01); //this_is_the_default_value")
			;;;magnum_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"16769",16769,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			TF_ReplaceLine(INV_GEN,"16770",16770,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			TF_ReplaceLine(INV_GEN,"16796",16796,"        ShootVertRecoil(0.01); //this_is_the_default_value")
			;;;Magnum_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"16806",16806,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			TF_ReplaceLine(INV_GEN,"16807",16807,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			TF_ReplaceLine(INV_GEN,"16833",16833,"        ShootVertRecoil(0.01); //this_is_the_default_value")
;;;M9_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"16943",16943,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"16944",16944,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"16970",16970,"        ShootVertRecoil(0.01); //this_is_the_default_value")
;;;m9_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"16980",16980,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"16981",16981,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"17007",17007,"        ShootVertRecoil(0.01); //this_is_the_default_value")
;;;M9_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17017",17017,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"17018",17018,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"17044",17044,"        ShootVertRecoil(0.01); //this_is_the_default_value")
			;;;mccall_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"20533",20533,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			TF_ReplaceLine(INV_GEN,"20534",20534,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			TF_ReplaceLine(INV_GEN,"20560",20560,"        ShootVertRecoil(0.01); //this_is_the_default_value")
			;;;mccall_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"20570",20570,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			TF_ReplaceLine(INV_GEN,"20571",20571,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			TF_ReplaceLine(INV_GEN,"20597",20597,"        ShootVertRecoil(0.01); //this_is_the_default_value")
			;;;mccall_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"20607",20607,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			TF_ReplaceLine(INV_GEN,"20608",20608,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			TF_ReplaceLine(INV_GEN,"20634",20634,"        ShootVertRecoil(0.01); //this_is_the_default_value")
;;;Deag_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"17153",17153,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"17154",17154,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"17180",17180,"        ShootVertRecoil(0.05); //this_is_the_default_value")
;;;Deag_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"17190",17190,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"17191",17191,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"17217",17217,"        ShootVertRecoil(0.05); //this_is_the_default_value")
;;;Deag_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17227",17227,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"17228",17228,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
TF_ReplaceLine(INV_GEN,"17254",17254,"        ShootVertRecoil(0.05); //this_is_the_default_value")
			;;;Auto_gen_upgrade_1
			;TF_ReplaceLine(INV_GEN,"18647",18647,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
			TF_ReplaceLine(INV_GEN,"18648",18648,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")      
			TF_ReplaceLine(INV_GEN,"18708",18708,"        ShootVertRecoil(0.045); //this_is_the_default_value")
			TF_ReplaceLine(INV_GEN,"18670",18670,"        ShootMaxAngle(0.074); //this_is_the_default_value")
			;;;Auto_gen_upgrade_2
			;TF_ReplaceLine(INV_GEN,"18682",18682,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")     
			TF_ReplaceLine(INV_GEN,"18683",18683,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")      
			TF_ReplaceLine(INV_GEN,"18708",18708,"        ShootVertRecoil(0.045); //this_is_the_default_value")
			TF_ReplaceLine(INV_GEN,"18705",18705,"        ShootMaxAngle(0.074); //this_is_the_default_value")
			;;;Auto_gen_upgrade_3
			;TF_ReplaceLine(INV_GEN,"18717",18717,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")       
			TF_ReplaceLine(INV_GEN,"18718",18718,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")      
			TF_ReplaceLine(INV_GEN,"18743",18743,"        ShootVertRecoil(0.045); //this_is_the_default_value")
			TF_ReplaceLine(INV_GEN,"18740",18740,"        ShootMaxAngle(0.074); //this_is_the_default_value")
;;;Auto_gen_B_upgrade_1
;TF_ReplaceLine(INV_GEN,"18849",18849,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
TF_ReplaceLine(INV_GEN,"18850",18850,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")     
TF_ReplaceLine(INV_GEN,"18875",18875,"        ShootVertRecoil(0.045); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18872",18872,"        ShootMaxAngle(0.074); //this_is_the_default_value")
;;;Auto_gen_B_upgrade_2
;TF_ReplaceLine(INV_GEN,"18884",18884,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
TF_ReplaceLine(INV_GEN,"18885",18885,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")      
TF_ReplaceLine(INV_GEN,"18910",18910,"        ShootVertRecoil(0.045); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18907",18907,"        ShootMaxAngle(0.074); //this_is_the_default_value") 
;;;Auto_gen_B_upgrade_3
;TF_ReplaceLine(INV_GEN,"18919",18919,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
TF_ReplaceLine(INV_GEN,"18920",18920,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")      
TF_ReplaceLine(INV_GEN,"18945",18945,"        ShootVertRecoil(0.045); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.074); //this_is_the_default_value") 
			;;;Auto_gen_c_upgrade_1
			;TF_ReplaceLine(INV_GEN,"19051",19051,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"19052",19052,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
			TF_ReplaceLine(INV_GEN,"19077",19077,"        ShootVertRecoil(0.045); //this_is_the_default_value")
			TF_ReplaceLine(INV_GEN,"19074",19074,"        ShootMaxAngle(0.074); //this_is_the_default_value") 
			;;;Auto_gen_c_upgrade_2
			;TF_ReplaceLine(INV_GEN,"19086",19086,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"19087",19087,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
			TF_ReplaceLine(INV_GEN,"19112",19112,"        ShootVertRecoil(0.045); //this_is_the_default_value")
			TF_ReplaceLine(INV_GEN,"19109",19109,"        ShootMaxAngle(0.074); //this_is_the_default_value") 
			;;;Auto_gen_c_upgrade_3
			;TF_ReplaceLine(INV_GEN,"19121",19121,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"19122",19122,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
			TF_ReplaceLine(INV_GEN,"19147",19147,"        ShootVertRecoil(0.045); //this_is_the_default_value")
			TF_ReplaceLine(INV_GEN,"19144",19144,"        ShootMaxAngle(0.074); //this_is_the_default_value") 
;;;Auto_gen_d_upgrade_1
;TF_ReplaceLine(INV_GEN,"19253",19253,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"19254",19254,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
TF_ReplaceLine(INV_GEN,"19279",19279,"        ShootVertRecoil(0.045); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19276",19276,"        ShootMaxAngle(0.074); //this_is_the_default_value") 
;;;Auto_gen_d_upgrade_2
;TF_ReplaceLine(INV_GEN,"19288",19288,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"19289",19289,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")       
TF_ReplaceLine(INV_GEN,"19314",19314,"        ShootVertRecoil(0.045); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19311",19311,"        ShootMaxAngle(0.074); //this_is_the_default_value") 
;;;Auto_gen_d_upgrade_3
;TF_ReplaceLine(INV_GEN,"19323",19323,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"19324",19324,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")       
TF_ReplaceLine(INV_GEN,"19349",19349,"        ShootVertRecoil(0.045); //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"19346",19346,"        ShootMaxAngle(0.074); //this_is_the_default_value") 
			;;;Auto_gen_e_upgrade_1
			;TF_ReplaceLine(INV_GEN,"19455",19455,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"19456",19456,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
			TF_ReplaceLine(INV_GEN,"19481",19481,"        ShootVertRecoil(0.045); //this_is_the_default_value")
			TF_ReplaceLine(INV_GEN,"19478",19478,"        ShootMaxAngle(0.074); //this_is_the_default_value") 
			;;;Auto_gen_e_upgrade_2
			;TF_ReplaceLine(INV_GEN,"19490",19490,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
			TF_ReplaceLine(INV_GEN,"19491",19491,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
			TF_ReplaceLine(INV_GEN,"19516",19516,"        ShootVertRecoil(0.045); //this_is_the_default_value")
			TF_ReplaceLine(INV_GEN,"19513",19513,"        ShootMaxAngle(0.074); //this_is_the_default_value") 
			;;;Auto_gen_e_upgrade_3
			;TF_ReplaceLine(INV_GEN,"19525",19525,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"19526",19526,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
			TF_ReplaceLine(INV_GEN,"19551",19551,"        ShootVertRecoil(0.045); //this_is_the_default_value")
			TF_ReplaceLine(INV_GEN,"19548",19548,"        ShootMaxAngle(0.074); //this_is_the_default_value") 
;;;Burst_gen_upgrade_1
;TF_ReplaceLine(INV_GEN,"19661",19661,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"19662",19662,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
TF_ReplaceLine(INV_GEN,"19684",19684,"        ShootVertRecoil(0.015); //this_is_the_default_value")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value") 
;;;Burst_gen_upgrade_2
;TF_ReplaceLine(INV_GEN,"19700",19700,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"19701",19701,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
TF_ReplaceLine(INV_GEN,"19723",19723,"        ShootVertRecoil(0.015); //this_is_the_default_value")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value") 
;;;Burts_gen_upgrade_3
;TF_ReplaceLine(INV_GEN,"19739",19739,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"19740",19740,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
TF_ReplaceLine(INV_GEN,"19762",19762,"        ShootVertRecoil(0.015); //this_is_the_default_value")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value") 
			;;;Burst_gen_b_upgrade_1
			;TF_ReplaceLine(INV_GEN,"19879",19879,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"19880",19880,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
			TF_ReplaceLine(INV_GEN,"19902",19902,"        ShootVertRecoil(0.015); //this_is_the_default_value")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value") 
			;;;Burst_gen_b_upgrade_2
			;TF_ReplaceLine(INV_GEN,"19918",19918,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"19919",19919,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
			TF_ReplaceLine(INV_GEN,"19941",19941,"        ShootVertRecoil(0.015); //this_is_the_default_value")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value") 
			;;;Burts_gen_b_upgrade_3
			;TF_ReplaceLine(INV_GEN,"19957",19957,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"19958",19958,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
			TF_ReplaceLine(INV_GEN,"19980",19980,"        ShootVertRecoil(0.015); //this_is_the_default_value")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value") 
;;;singleshot_gen_upgrade_1
;TF_ReplaceLine(INV_GEN,"20097",20097,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"20098",20098,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
TF_ReplaceLine(INV_GEN,"20120",20120,"        ShootVertRecoil(0.015); //this_is_the_default_value")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value") 
;;;singleshot_gen_upgrade_2
;TF_ReplaceLine(INV_GEN,"20136",20136,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"20137",20137,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
TF_ReplaceLine(INV_GEN,"20159",20159,"        ShootVertRecoil(0.015); //this_is_the_default_value")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value") 
;;;singleshot_gen_upgrade_3
;TF_ReplaceLine(INV_GEN,"20175",20175,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"20176",20176,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
TF_ReplaceLine(INV_GEN,"20198",20198,"        ShootVertRecoil(0.015); //this_is_the_default_value")
;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value") 
			;;;singleshot_gen_b_upgrade_1
			;TF_ReplaceLine(INV_GEN,"20097",20097,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"20316",20316,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
			TF_ReplaceLine(INV_GEN,"20338",20338,"        ShootVertRecoil(0.015); //this_is_the_default_value")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value") 
			;;;singleshot_gen_b_upgrade_2
			;TF_ReplaceLine(INV_GEN,"20136",20136,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"20355",20355,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
			TF_ReplaceLine(INV_GEN,"20377",20377,"        ShootVertRecoil(0.015); //this_is_the_default_value")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value") 
			;;;singleshot_gen_b_upgrade_3
			;TF_ReplaceLine(INV_GEN,"20175",20175,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"20394",20394,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
			TF_ReplaceLine(INV_GEN,"20416",20416,"        ShootVertRecoil(0.015); //this_is_the_default_value")
			;TF_ReplaceLine(INV_GEN,"18942",18942,"        ShootMaxAngle(0.059); //this_is_the_default_value")
;;;;;;Shottys
			;;;ShortyShotgun_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"17356",17356,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
			TF_ReplaceLine(INV_GEN,"17357",17357,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
			;;;ShortyShotgun_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"17386",17386,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"17387",17387,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
			;;;ShortyShotgun_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"17416",17416,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"17416",17416,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")        
;;;Shotgun_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"17543",17543,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"17544",17544,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
;;;Shotgun_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"17572",17572,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"17573",17573,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
;;;Shotgun_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17601",17601,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"17602",17602,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
			;;;Shotgun_b_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"17727",17727,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"17728",17728,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
			;;;Shotgun_b_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"17756",17756,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"17757",17757,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
			;;;Shotgun_b_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"17785",17785,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"17786",17786,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
;;;Shotgun_c_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"17911",17911,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"17912",17912,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
;;;Shotgun_c_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"17940",17940,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"17941",17941,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
;;;Shotgun_c_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"17969",17969,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"17970",17970,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			;;;Shotgun_d_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"18095",18095,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"18096",18096,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
			;;;Shotgun_d_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"18124",18124,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"18125",18125,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
			;;;Shotgun_d_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"18153",18153,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"18154",18154,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
;;;Shotgun_e_gen_upgrade_1
TF_ReplaceLine(INV_GEN,"18279",18279,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"18280",18280,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
;;;Shotgun_e_gen_upgrade_2
TF_ReplaceLine(INV_GEN,"18308",18308,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"18309",18309,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
;;;Shotgun_e_gen_upgrade_3
TF_ReplaceLine(INV_GEN,"18337",18337,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
TF_ReplaceLine(INV_GEN,"18338",18338,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
			;;;Shotgun_f_gen_upgrade_1
			TF_ReplaceLine(INV_GEN,"18463",18463,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"18464",18464,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
			;;;Shotgun_f_gen_upgrade_2
			TF_ReplaceLine(INV_GEN,"18492",18492,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"18493",18493,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")         
			;;;Shotgun_f_gen_upgrade_3
			TF_ReplaceLine(INV_GEN,"18521",18521,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")          
			TF_ReplaceLine(INV_GEN,"18522",18522,"        //placeholderforwepupgrades //Modified_by_FireEyeEian -----------")
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,betterweapupgrades?,➤Better weapon upgrades disabled.
Enable_BUTTONS_Function()
return



removereverb:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,Remove_reverb_sound_var
IfEqual, Remove_reverb_sound_var, 1
goto, Remove_reverb_sound_yes
IfEqual,Remove_reverb_sound_var,0
goto, Remove_reverb_sound_no
return

Remove_reverb_sound_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\gameaudioeffects.scr
FileCopy, %A_Temp%\@DIUE_TEMPFILES\loose_files\gameaudioeffects.scr.modded , %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\gameaudioeffects.scr,1
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,Reverb?,➤Reverb disabled.
Enable_BUTTONS_Function()
return

Remove_reverb_sound_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
FileDelete, %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\gameaudioeffects.scr
FileCopy, %A_Temp%\@DIUE_TEMPFILES\loose_files\gameaudioeffects.scr.nomod , %A_Temp%\@DIUE_TEMPFILES\EXTRACTED_DATA0\data\gameaudioeffects.scr,1
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,Reverb?,➤Reverb enabled.
Enable_BUTTONS_Function()
return

add_weps:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,custom_wep_var
IfEqual, custom_wep_var, 1
goto, custom_wep_var_yes
IfEqual,custom_wep_var,0
 goto, custom_wep_var_no
return

custom_wep_var_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
;Defender-----------------------------////////Defender\\\\\\\\\--------------------------------------------------------------------------------------------------
;better reload speed
TF_ReplaceLine(INV_GEN,"20853",20853,"        ReloadTime(2.65);")
;better crit chance
TF_ReplaceLine(INV_GEN,"20889",20889,"        CriticalProb(0.09);")
TF_ReplaceLine(INV_GEN,"20890",20890,"        CriticalDamage(110.0);")
TF_ReplaceLine(INV_GEN,"20838",20838,"        HeadSmashProb(0.4);")
;more ammo capacity
TF_ReplaceLine(INV_GEN,"20852",20852,"        AmmoCount(40);")
;make defender chug
TF_ReplaceLine(INV_GEN,"20848",20848,"        ShotTime(0.17); //Makes Defender chug //Modified_by_FireEyeEian")
;make a bit more accurate with new chug setting
TF_ReplaceLine(INV_GEN,"20917",20917,"        ShootMaxAngle(0.07);")
TF_ReplaceLine(INV_GEN,"20952",20952,"        ShootMaxAngle(0.07);")
TF_ReplaceLine(INV_GEN,"20987",20987,"        ShootMaxAngle(0.07);")
TF_ReplaceLine(INV_GEN,"21022",21022,"        ShootMaxAngle(0.07);")
;crowdpleaser-----------------------------////////crowdpleaser\\\\\\\\\------------------------------------------------------------------------------------------
;better reload speed
TF_ReplaceLine(INV_GEN,"20666",20666,"        ReloadTime(4.5);")
;better crit chance
TF_ReplaceLine(INV_GEN,"20702",20702,"        CriticalProb(0.09);")
TF_ReplaceLine(INV_GEN,"20703",20703,"        CriticalDamage(110.0);")
TF_ReplaceLine(INV_GEN,"20651",20651,"        HeadSmashProb(1.3);")
TF_ReplaceLine(INV_GEN,"20653",20653,"        ArmsCutProb(1.3);")
TF_ReplaceLine(INV_GEN,"20654",20654,"        LegsCutProb(1.3);")
;more ammo capacity
TF_ReplaceLine(INV_GEN,"20665",20665,"        AmmoCount(12);")
;more shot per shot
TF_ReplaceLine(INV_GEN,"20690",20690,"        BulletsPerShot(15);")
;make spread smaller
;hipfire
TF_ReplaceLine(INV_GEN,"20680",20680,"        ShootMinAngle(0.03);")
TF_ReplaceLine(INV_GEN,"20681",20681,"        ShootMaxAngle(0.07);")
;ads
TF_ReplaceLine(INV_GEN,"20728",20728,"        ShootMaxAngle(0.04);")
TF_ReplaceLine(INV_GEN,"20759",20759,"        ShootMaxAngle(0.04);")
TF_ReplaceLine(INV_GEN,"20790",20790,"        ShootMaxAngle(0.04);")
TF_ReplaceLine(INV_GEN,"20821",20821,"        ShootMaxAngle(0.04);")
;M72-----------------------------////////m72\\\\\\\\\------------------------------------------------------------------------------------------
TF_ReplaceLine(INV_patch,"1901",1901,"        AnimPrefix(""Anaconda"");")
TF_ReplaceLine(INV_patch,"1903",1903,"        ShotTime(2.6);")
TF_ReplaceLine(INV_patch,"1908",1908,"        ReloadTime(3.4);")
TF_ReplaceLine(INV_patch,"1936",1936,"        AimFov(1.5);")
TF_ReplaceLine(INV_patch,"1940",1940,"        Price(5000);")
TF_ReplaceLine(INV_patch,"1961",1961,"        PriceMult(0.9);")
;m60-----------------------------////////m60\\\\\\\\\------------------------------------------------------------------------------------------
TF_ReplaceLine(INV_patch,"1811",1811,"        AnimPrefix(""m16"");")
TF_ReplaceLine(INV_patch,"1813",1813,"        ShotTime(0.12);")
TF_ReplaceLine(INV_patch,"1818",1818,"        ReloadTime(-1.7);")
TF_ReplaceLine(INV_patch,"1845",1845,"        AimFov(1.8);")
TF_ReplaceLine(INV_patch,"1826",1826,"        HandOffset(HandModification_Normal, [0.000,-0.15,0.300]); // Converted")
TF_ReplaceLine(INV_patch,"1878",1878,"        HandOffset(HandModification_Normal, [0.085,-0.15,1.000]); // Converted")
TF_ReplaceLine(INV_patch,"1849",1849,"        Price(3500);")
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
gui,Submit,nohide
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
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(inv_scr,"4899",4899,"        Mesh(""beach_ball_a.msh"");")
goto,Continue_on_cust_wep
return
Continue_on_cust_wep:
SplashTextOff
MsgBox,36, Add explosive cheat ammo?, Would you like to add in explosive ammo for all weapons?`n`n                          (THIS IS A CHEAT MOD)
IfMsgBox, No
	Goto, Add_Cheat_ammo_no
IfMsgBox, yes
    Goto, Continue_on_cust_wep_final
    return
Add_Cheat_ammo_no:
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(DLC_shop,"91",91,"	//Item(""Craftplan_HE_Rounds"", )")
goto, Continue_on_cust_wep_final
Continue_on_cust_wep_final:
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,Custom weapons,➤Custom weapons enabled.`n`nWeapons added:`n	>M60`n	>M72`n`n `*`*`*Custom items can be purchased from Wes Tweddle in the areana lobby`*`*`*
Enable_BUTTONS_Function()
return
        

custom_wep_var_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
;Defender-----------------------------////////Defender\\\\\\\\\--------------------------------------------------------------------------------------------------
;better reload speed
TF_ReplaceLine(INV_GEN,"20853",20853,"        ReloadTime(3.25);")
;better crit chance
TF_ReplaceLine(INV_GEN,"20889",20889,"        CriticalProb(0.05);")
TF_ReplaceLine(INV_GEN,"20890",20890,"        CriticalDamage(100.0);")
TF_ReplaceLine(INV_GEN,"20838",20838,"        HeadSmashProb(0.2);")
;more ammo capacity
TF_ReplaceLine(INV_GEN,"20852",20852,"        AmmoCount(30);")
;make defender chug
TF_ReplaceLine(INV_GEN,"20848",20848,"        ShotTime(0.1); //this_is_the_default_value")
;make a bit more accurate with new chug setting
TF_ReplaceLine(INV_GEN,"20917",20917,"        ShootMaxAngle(0.074);")
TF_ReplaceLine(INV_GEN,"20952",20952,"        ShootMaxAngle(0.074);")
TF_ReplaceLine(INV_GEN,"20987",20987,"        ShootMaxAngle(0.074);")
TF_ReplaceLine(INV_GEN,"21022",21022,"        ShootMaxAngle(0.074);")
;crowdpleaser-----------------------------////////crowdpleaser\\\\\\\\\------------------------------------------------------------------------------------------
;better reload speed
TF_ReplaceLine(INV_GEN,"20666",20666,"        ReloadTime(6.0);")
;better crit chance
TF_ReplaceLine(INV_GEN,"20702",20702,"        CriticalProb(0.05);")
TF_ReplaceLine(INV_GEN,"20703",20703,"        CriticalDamage(100.0);")
TF_ReplaceLine(INV_GEN,"20651",20651,"        HeadSmashProb(1.0);")
TF_ReplaceLine(INV_GEN,"20653",20653,"        ArmsCutProb(1.0);")
TF_ReplaceLine(INV_GEN,"20654",20654,"        LegsCutProb(1.0);")
;more ammo capacity
TF_ReplaceLine(INV_GEN,"20665",20665,"        AmmoCount(8);")
;more shot per shot
TF_ReplaceLine(INV_GEN,"20690",20690,"        BulletsPerShot(12);")
;make spread smaller
;hipfire
TF_ReplaceLine(INV_GEN,"20680",20680,"        ShootMinAngle(0.04);")
TF_ReplaceLine(INV_GEN,"20681",20681,"        ShootMaxAngle(0.08);")
;ads
TF_ReplaceLine(INV_GEN,"20728 ",20728 ,"        ShootMaxAngle(0.05);")
TF_ReplaceLine(INV_GEN,"20759 ",20759 ,"        ShootMaxAngle(0.05);")
TF_ReplaceLine(INV_GEN,"20790 ",20790 ,"        ShootMaxAngle(0.05);")
TF_ReplaceLine(INV_GEN,"20821 ",20821 ,"        ShootMaxAngle(0.05);")
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
gui,Submit,nohide
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
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,Custom weapons,➤Custom weapons Disabled.
Enable_BUTTONS_Function()
return        
    

More_ammo:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,more_ammo_var
	IfEqual, more_ammo_var, 1
goto, more_ammo_var_yes
	IfEqual,more_ammo_var,0
goto, more_ammo_var_no
	return

more_ammo_var_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"246",246,"	<prop n=""MaxAmmoPistol"" v=""200""/>")
TF_ReplaceLine(Def_lev,"247",247,"	<prop n=""MaxAmmoRifle"" v=""150""/>")
TF_ReplaceLine(Def_lev,"248",248,"	<prop n=""MaxAmmoShotgun"" v=""90""/>")
;checks more ammo option to see what to set m60 ammo to and fix amount of m60 ammo available to craft
gui,Submit,nohide
GuiControlGet,custom_wep_var
	IfEqual, custom_wep_var, 1
goto, is_cust_wep_enabled_yes
	IfEqual,custom_wep_var,0
goto, is_cust_wep_enabled_no
	return
is_cust_wep_enabled_yes:
TF_ReplaceLine(Def_lev,"249",249,"	<prop n=""MaxAmmoSniper"" v=""400""/>")
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,more ammo,➤Hold more ammo enabled.`n•Max pistol ammo= 200`n•Max rifle ammo= 150`n•max shotgun ammo= 90
Enable_BUTTONS_Function()
return        
is_cust_wep_enabled_no:
;TF_ReplaceLine(Def_lev,"249",249,"	<prop n=""MaxAmmoSniper"" v=""400""/>") ;not needed as no other weapon uses sniper ammo besides the m60 and the m60 is only enabled if custom weapons is enabled so it really doesn't matter
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,more ammo,➤Hold more ammo enabled.
Enable_BUTTONS_Function()
return        


more_ammo_var_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"246",246,"	<prop n=""MaxAmmoPistol"" v=""50""/>")
TF_ReplaceLine(Def_lev,"247",247,"	<prop n=""MaxAmmoRifle"" v=""60""/>")
TF_ReplaceLine(Def_lev,"248",248,"	<prop n=""MaxAmmoShotgun"" v=""20""/>")
;checks more ammo option to see what to set m60 ammo to and fix amount of m60 ammo available to craft
gui,Submit,nohide
GuiControlGet,custom_wep_var
	IfEqual, custom_wep_var, 1
goto, no_is_cust_wep_enabled_yes
	IfEqual,custom_wep_var,0
goto, no_is_cust_wep_enabled_no
	return ;shouldn't be needed but why not ... looks good I guess
no_is_cust_wep_enabled_yes:
TF_ReplaceLine(Def_lev,"249",249,"	<prop n=""MaxAmmoSniper"" v=""200""/>")
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,more ammo,➤Hold more ammo Disabled.
Enable_BUTTONS_Function()
return        
no_is_cust_wep_enabled_no:
TF_ReplaceLine(Def_lev,"249",249,"	<prop n=""MaxAmmoSniper"" v=""15""/>")
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,more ammo,➤Hold more ammo Disabled.
Enable_BUTTONS_Function()
return        




deeper_pockets:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,Even_Deeper_pockets_var
		IfEqual, Even_Deeper_pockets_var, 1
goto, Even_Deeper_pockets_var_yes
		IfEqual,Even_Deeper_pockets_var,0
goto, Even_Deeper_pockets_var_no
	return

Even_Deeper_pockets_var_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
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
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,Even Deeper pockets,➤Even deeper pockets enabled`n  To use: Please purchase `"deeper pockets`" skill.
Enable_BUTTONS_Function()
return
Even_Deeper_pockets_var_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
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
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,Even Deeper pockets,➤Even deeper pockets disabled.
Enable_BUTTONS_Function()
return
;add second file that watches for this file to close and double makesure that temp files are cleared
;add second file that watches for this file to close and double makesure that temp files are cleared
;add second file that watches for this file to close and double makesure that temp files are cleared
;add second file that watches for this file to close and double makesure that temp files are cleared
;add second file that watches for this file to close and double makesure that temp files are cleared
;add second file that watches for this file to close and double makesure that temp files are cleared
;add second file that watches for this file to close and double makesure that temp files are cleared
;make selected mods turn red
;make selected mods turn red
;make selected mods turn red
;make selected mods turn red
;make selected mods turn red


betterweppov:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,better_wep_pov_var
IfEqual, better_wep_pov_var, 1
goto, better_wep_pov_var_yes
IfEqual,better_wep_pov_var,0
goto, better_wep_pov_var_no
return

better_wep_pov_var_yes:
DISABLE_BUTTONS_Function()
Gui, Submit, NoHide
If (ddl = "62 default")
    Goto,betterweppov_62 
If (ddl = "72")
	Goto,betterweppov_72
If (ddl = "82")
	Goto,betterweppov_82
return

betterweppov_62:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
;---weapon positions 
;Fury_guns\\\\\\\\\\\\\\\\\\
;Fury revolver-----------------------------------------------------------------------///////colt\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"265",265,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_spec,"288",288,"        AimFov(1.05); //Modified_by_FireEyeEian")
;Fury m9-----------------------------------------------------------------------///////colt\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"345",345,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_spec,"369",369,"        AimFov(1.05); //Modified_by_FireEyeEian")
;shotguns\\\\\\\\\\\\\\\\\\\\
;leg_crowd
TF_ReplaceLine(INV_GEN,"20678",20678,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20671",20671,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.010]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;shorty
TF_ReplaceLine(INV_GEN,"17297",17297,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17310",17310,"        AimFov(1.1); //Modified_by_FireEyeEian")
;shotgen
TF_ReplaceLine(INV_GEN,"17479",17479,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;shot b_gen
TF_ReplaceLine(INV_GEN,"17663",17663,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;shot c_gen
TF_ReplaceLine(INV_GEN,"17847",17847,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;shot d_gen
TF_ReplaceLine(INV_GEN,"18031",18031,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18024",18024,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;shot E_gen
TF_ReplaceLine(INV_GEN,"18208",18208,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18215",18215,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;shot F_gen
TF_ReplaceLine(INV_GEN,"18392",18392,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18399",18399,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;Defender----------------------------------------------------------------------------------////////Defender\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"20858",20858,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"20865",20865,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"20913",20913,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20948",20948,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20983",20983,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"21018",21018,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20914",20914,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20949",20949,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20984",20984,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"21019",21019,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"20878",20878,"        AimFov(1.7); //Modified_by_FireEyeEian")

;singleshot b----------------------------------------------------------------------------    ------////////singleshot b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"20240",20240,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"20247",20247,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"20295",20295,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20334",20334,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20373",20373,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20412",20412,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20296",20296,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20335",20335,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20374",20374,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20413",20413,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"20260",20260,"        AimFov(1.7); //Modified_by_FireEyeEian")

;singleshot----------------------------------------------------------------------------------////////singleshot\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"20022",20022,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"20029",20029,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"20077",20077,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20116",20116,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20155",20155,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20194",20194,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20078",20078,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20117",20117,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20156",20156,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20195",20195,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19934",19934,"        AimFov(1.7); //Modified_by_FireEyeEian")

;Burst b----------------------------------------------------------------------------------////////Burst b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19804",19804,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"19811",19811,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19859",19859,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19898",19898,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19937",19937,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19976",19976,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19860",19860,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19899",19899,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19938",19938,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19977",19977,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19824",19824,"        AimFov(1.7); //Modified_by_FireEyeEian")

;Burst---------------------------------done-------------------------------------------------////////Burst\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19586",19586,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"19593",19593,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19641",19641,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19680",19680,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19719",19719,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19758",19758,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19642",19642,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19681",19681,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19720",19720,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19759",19759,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19606",19606,"        AimFov(1.7); //Modified_by_FireEyeEian")

;auto e gen----------------------------------------------------------------------------------////////Auto e gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19384",19384,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"19391",19391,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19439",19439,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19474",19474,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19509",19509,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19544",19544,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19440",19440,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19475",19475,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19510",19510,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19545",19545,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19404",19404,"        AimFov(1.7); //Modified_by_FireEyeEian")

;auto d gen---------------------------------------------------------------------------------////////Auto d gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19182",19182,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"19189",19189,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19237",19237,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19272",19272,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19307",19307,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19342",19342,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19238",19238,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19273",19273,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19308",19308,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19343",19343,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19202",19202,"        AimFov(1.7); //Modified_by_FireEyeEian")

;auto c gen----------------------------------------------------------------------------------////////Auto c gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18980",18980,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"18987",18987,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19035",19035,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19070",19070,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19105",19105,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19140",19140,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19036",19036,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19071",19071,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19106",19106,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19141",19141,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19000",19000,"        AimFov(1.7); //Modified_by_FireEyeEian")

;auto gen----------------------------------------------------------------------------------////////Auto gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18576",18576,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"18583",18583,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"18631",18631,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18666",18666,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18701",18701,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18736",18736,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot
TF_ReplaceLine(INV_GEN,"18632",18632,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18667",18667,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18702",18702,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18737",18737,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"18596",18596,"        AimFov(1.7); //Modified_by_FireEyeEian")

;auto b gen----------------------------------------------------------------------------------////////Auto b gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18778",18778,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"18785",18785,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"18833",18833,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18868",18868,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18903",18903,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18938",18938,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot
TF_ReplaceLine(INV_GEN,"18834",18834,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18869",18869,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18904",18904,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18939",18939,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"18798",18798,"        AimFov(1.7); //Modified_by_FireEyeEian")

;heavy pistol----------------------------------------------------------------------------------///////heavy pistol\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"17089",17089,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"17137",17137,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.120]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17174",17174,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.120]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17211",17211,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.120]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17248",17248,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.120]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"17102",17102,"        AimFov(1.05); //Modified_by_FireEyeEian")

;McCalls----------------------------------------------------------------------------------///////McCalls\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"20468",20468,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"20517",20517,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20554",20554,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20591",20591,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20628",20628,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"20481",20481,"        AimFov(1.05); //Modified_by_FireEyeEian")

;Colt revolver-----------------------------------------------------------------------///////colt\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16457",16457,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"16507",16507,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16544",16544,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16581",16581,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16618",16618,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"16471",16471,"        AimFov(1.05); //Modified_by_FireEyeEian")

;M9----------------------------------------------------------------------------------///////M9\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16878",16878,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"16927",16927,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16964",16964,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17001",17001,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17038",17038,"        HandOffset(HandModification_Normal, [0.0,0.0,0.120]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"16891",16891,"        AimFov(1.05); //Modified_by_FireEyeEian")

;Magnum revolver--------------------------------------------------------------------///////magnum\\\\\\\-------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_GEN,"16716",16716,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16753",16753,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16790",16790,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16827",16827,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"16668",16668,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16663",16663,"        AimBlurEnd(0.45); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"16681",16681,"        AimFov(1.05); //Modified_by_FireEyeEian")
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
Goto, swayfix_62
return
weppovfinal_62:   ;this shit something else, i could prob do it better but this is how my brain works
gui,Submit,nohide
GuiControlGet,Recoil_hfov_fix
IfEqual, Recoil_hfov_fix, 1
goto, weppovfinal_62_enablerecoil_fix
IfEqual,Recoil_hfov_fix,0
goto, weppovfinal_62_final
return
weppovfinal_62_enablerecoil_fix:
TF_ReplaceLine(INV_GEN,"17099",17099,"        ShootRecoilTime(0.15); //Modified_by_FireEyeEian")
goto, weppovfinal_62_final

weppovfinal_62_final:
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
;SetTitleMatchMode, 2
;if (id := WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
;	EnableCloseButton(id)
;RedrawSysmenu(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,Wep POV,➤Better weapon POV enabled (fov 62).
Enable_BUTTONS_Function()
return

betterweppov_72:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
;---weapon positions
;Fury_guns\\\\\\\\\\\\\\\\\\
;Fury revolver-----------------------------------------------------------------------///////furycolt\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"265",265,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_spec,"288",288,"        AimFov(1.05); //Modified_by_FireEyeEian")
;Fury m9-----------------------------------------------------------------------///////furym9\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"345",345,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_spec,"369",369,"        AimFov(1.05); //Modified_by_FireEyeEian")
;shotguns\\\\\\\\\\\\\\\\\\\\
;leg_crowd-----------------------------------------------------------------------/////leg_crwd\\\\\-------------------------------------------------------------------------
TF_ReplaceLine(INV_GEN,"20678",20678,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20671",20671,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;shorty
TF_ReplaceLine(INV_GEN,"17297",17297,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17310",17310,"        AimFov(1.3); //Modified_by_FireEyeEian")
;shotgen
TF_ReplaceLine(INV_GEN,"17479",17479,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;shot b_gen
TF_ReplaceLine(INV_GEN,"17663",17663,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;shot c_gen
TF_ReplaceLine(INV_GEN,"17847",17847,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;shot d_gen
TF_ReplaceLine(INV_GEN,"18031",18031,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18024",18024,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;shot E_gen
TF_ReplaceLine(INV_GEN,"18208",18208,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18215",18215,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;shot F_gen
TF_ReplaceLine(INV_GEN,"18392",18392,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18399",18399,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;Defender----------------------------------------------------------------------------------////////Defender\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"20858",20858,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"20865",20865,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"20913",20913,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20948",20948,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20983",20983,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"21018",21018,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20914",20914,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20949",20949,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20984",20984,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"21019",21019,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"20878",20878,"        AimFov(1.7); //Modified_by_FireEyeEian")

;singleshot b----------------------------------------------------------------------------------////////singleshot b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"20240",20240,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"20247",20247,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"20295",20295,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20334",20334,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20373",20373,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20412",20412,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20296",20296,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20335",20335,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20374",20374,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20413",20413,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"20260",20260,"        AimFov(1.7); //Modified_by_FireEyeEian")

;singleshot----------------------------------------------------------------------------------////////singleshot\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"20022",20022,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"20029",20029,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"20077",20077,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20116",20116,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20155",20155,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20194",20194,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20078",20078,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20117",20117,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20156",20156,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20195",20195,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19934",19934,"        AimFov(1.8); //Modified_by_FireEyeEian")

;Burst b----------------------------------------------------------------------------------////////Burst b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19804",19804,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"19811",19811,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19859",19859,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19898",19898,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19937",19937,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19976",19976,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19860",19860,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19899",19899,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19938",19938,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19977",19977,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19824",19824,"        AimFov(1.7); //Modified_by_FireEyeEian")

;Burst----------------------------------------------------------------------------------////////Burst\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19586",19586,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"19593",19593,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19641",19641,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19680",19680,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19719",19719,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19758",19758,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19642",19642,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19681",19681,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19720",19720,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19759",19759,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19606",19606,"        AimFov(1.8); //Modified_by_FireEyeEian")

;auto e gen----------------------------------------------------------------------------------////////Auto e gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19384",19384,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"19391",19391,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19439",19439,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19474",19474,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19509",19509,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19544",19544,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19440",19440,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19475",19475,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19510",19510,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19545",19545,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19404",19404,"        AimFov(1.7); //Modified_by_FireEyeEian")

;auto d gen----------------------------------------------------------------------------------////////Auto d gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19182",19182,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"19189",19189,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19237",19237,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19272",19272,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19307",19307,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19342",19342,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19238",19238,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19273",19273,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19308",19308,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19343",19343,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19202",19202,"        AimFov(1.7); //Modified_by_FireEyeEian")

;auto c gen----------------------------------------------------------------------------------////////Auto c gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18980",18980,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"18987",18987,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19035",19035,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19070",19070,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19105",19105,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19140",19140,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;old value, before red dot center-->TF_ReplaceLine(INV_GEN,"19056",19056,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19036",19036,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19071",19071,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19106",19106,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19141",19141,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19000",19000,"        AimFov(1.8); //Modified_by_FireEyeEian")

;auto gen----------------------------------------------------------------------------------////////Auto gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18576",18576,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"18583",18583,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"18631",18631,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18666",18666,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18701",18701,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18736",18736,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot
TF_ReplaceLine(INV_GEN,"18632",18632,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18667",18667,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18702",18702,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18737",18737,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"18596",18596,"        AimFov(1.8); //Modified_by_FireEyeEian")

;auto b gen----------------------------------------------------------------------------------////////Auto b gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18778",18778,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"18785",18785,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"18833",18833,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18868",18868,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18903",18903,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18938",18938,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot
TF_ReplaceLine(INV_GEN,"18834",18834,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18869",18869,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18904",18904,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18939",18939,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"18798",18798,"        AimFov(1.8); //Modified_by_FireEyeEian")

;heavy pistol----------------------------------------------------------------------------------///////heavy pistol\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"17089",17089,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"17137",17137,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17174",17174,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17211",17211,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17248",17248,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"17102",17102,"        AimFov(1.05); //Modified_by_FireEyeEian")

;McCalls----------------------------------------------------------------------------------///////McCalls\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"20468",20468,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"20517",20517,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20554",20554,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20591",20591,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20628",20628,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"20481",20481,"        AimFov(1.05); //Modified_by_FireEyeEian")

;Colt revolver-----------------------------------------------------------------------///////colt\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16457",16457,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"16507",16507,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16544",16544,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16581",16581,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16618",16618,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"16471",16471,"        AimFov(1.05); //Modified_by_FireEyeEian")

;M9----------------------------------------------------------------------------------///////M9\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16878",16878,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"16927",16927,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16964",16964,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17001",17001,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17038",17038,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"16891",16891,"        AimFov(1.05); //Modified_by_FireEyeEian")

;Magnum revolver--------------------------------------------------------------------///////magnum\\\\\\\-------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_GEN,"16716",16716,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16753",16753,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16790",16790,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16827",16827,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.030]); // Converted //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"16668",16668,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16663",16663,"        AimBlurEnd(0.45); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"16681",16681,"        AimFov(1.05); //Modified_by_FireEyeEian")
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
Goto, swayfix_72
return
weppovfinal_72:
gui,Submit,nohide   ;this shit something else, i could prob do it better but this is how my brain works
GuiControlGet,Recoil_hfov_fix
IfEqual, Recoil_hfov_fix, 1
goto, weppovfinal_72_enablerecoil_fix
IfEqual,Recoil_hfov_fix,0
goto, weppovfinal_72_final
return
weppovfinal_72_enablerecoil_fix:
TF_ReplaceLine(INV_GEN,"17099",17099,"        ShootRecoilTime(0.15); //Modified_by_FireEyeEian")
goto, weppovfinal_72_final

weppovfinal_72_final:
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
;SetTitleMatchMode, 2
;if (id := WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
;	EnableCloseButton(id)
;RedrawSysmenu(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,Wep POV,➤Better weapon POV enabled (fov 72).
Enable_BUTTONS_Function()
return

betterweppov_82:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
;---weapon positions 
;Fury_guns\\\\\\\\\\\\\\\\\\
;Fury revolver-----------------------------------------------------------------------///////furycolt\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"265",265,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_spec,"288",288,"        AimFov(1.05); //Modified_by_FireEyeEian")
;Fury m9-----------------------------------------------------------------------///////furym9\\\\\\\--------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_spec,"345",345,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_spec,"369",369,"        AimFov(1.05); //Modified_by_FireEyeEian")
;shotguns\\\\\\\\\\\\\\\\\\\\
;leg_crowd
TF_ReplaceLine(INV_GEN,"20678",20678,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20671",20671,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;shorty
TF_ReplaceLine(INV_GEN,"17297",17297,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17310",17310,"        AimFov(1.2); //Modified_by_FireEyeEian")
;shotgen
TF_ReplaceLine(INV_GEN,"17479",17479,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;shot b_gen
TF_ReplaceLine(INV_GEN,"17663",17663,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;shot c_gen
TF_ReplaceLine(INV_GEN,"17847",17847,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;shot d_gen
TF_ReplaceLine(INV_GEN,"18031",18031,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18024",18024,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;shot E_gen
TF_ReplaceLine(INV_GEN,"18208",18208,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18215",18215,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;shot F_gen
TF_ReplaceLine(INV_GEN,"18392",18392,"        HandOffset(HandModification_Normal, [-0.0000,-0.0050,0.020]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18399",18399,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;Defender----------------------------------------------------------------------------------////////Defender\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"20858",20858,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"20865",20865,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"20913",20913,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20948",20948,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20983",20983,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"21018",21018,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20914",20914,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20949",20949,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20984",20984,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"21019",21019,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"20878",20878,"        AimFov(1.9); //Modified_by_FireEyeEian")

;singleshot b----------------------------------------------------------------------------------////////singleshot b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"20240",20240,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"20247",20247,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"20295",20295,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20334",20334,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20373",20373,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20412",20412,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20296",20296,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20335",20335,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20374",20374,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20413",20413,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"20260",20260,"        AimFov(1.9); //Modified_by_FireEyeEian")

;singleshot----------------------------------------------------------------------------------////////singleshot\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"20022",20022,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"20029",20029,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"20077",20077,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20116",20116,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20155",20155,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20194",20194,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"20078",20078,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20117",20117,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20156",20156,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20195",20195,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19934",19934,"        AimFov(2.0); //Modified_by_FireEyeEian")

;Burst b----------------------------------------------------------------------------------////////Burst b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19804",19804,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"19811",19811,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19859",19859,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19898",19898,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19937",19937,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19976",19976,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19860",19860,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19899",19899,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19938",19938,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19977",19977,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19824",19824,"        AimFov(1.9); //Modified_by_FireEyeEian")

;Burst----------------------------------------------------------------------------------////////Burst\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19586",19586,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"19593",19593,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19641",19641,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19680",19680,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19719",19719,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19758",19758,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19642",19642,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19681",19681,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19720",19720,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19759",19759,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19606",19606,"        AimFov(2.0); //Modified_by_FireEyeEian")

;auto e gen----------------------------------------------------------------------------------////////Auto e gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19384",19384,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"19391",19391,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19439",19439,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19474",19474,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19509",19509,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19544",19544,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19440",19440,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19475",19475,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19510",19510,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19545",19545,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19404",19404,"        AimFov(1.9); //Modified_by_FireEyeEian")

;auto d gen----------------------------------------------------------------------------------////////Auto d gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"19182",19182,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"19189",19189,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19237",19237,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19272",19272,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19307",19307,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19342",19342,"        HandOffset(HandModification_Normal, [-0.0062,-0.03570,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19238",19238,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19273",19273,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19308",19308,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19343",19343,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19202",19202,"        AimFov(1.9); //Modified_by_FireEyeEian")

;auto c gen----------------------------------------------------------------------------------////////Auto c gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18980",18980,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"18987",18987,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"19035",19035,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19070",19070,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19105",19105,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19140",19140,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;old value, before red dot center-->TF_ReplaceLine(INV_GEN,"19056",19056,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot-----------------------------------------------------------------------------------------------------------------rotation
TF_ReplaceLine(INV_GEN,"19036",19036,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19071",19071,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19106",19106,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"19141",19141,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"19000",19000,"        AimFov(2.0); //Modified_by_FireEyeEian")

;auto gen----------------------------------------------------------------------------------////////Auto gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18576",18576,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"18583",18583,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"18631",18631,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18666",18666,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18701",18701,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18736",18736,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot
TF_ReplaceLine(INV_GEN,"18632",18632,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18667",18667,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18702",18702,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18737",18737,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"18596",18596,"        AimFov(2.0); //Modified_by_FireEyeEian")

;auto b gen----------------------------------------------------------------------------------////////Auto b gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix hip fire hold
TF_ReplaceLine(INV_GEN,"18778",18778,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"18785",18785,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"18833",18833,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18868",18868,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18903",18903,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18938",18938,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //Modified_by_FireEyeEian")
;Handrot
TF_ReplaceLine(INV_GEN,"18834",18834,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18869",18869,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18904",18904,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18939",18939,"        HandRot(HandModification_Normal, [-0.6875,0.1875,0.0]); //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"18798",18798,"        AimFov(2.0); //Modified_by_FireEyeEian")

;heavy pistol----------------------------------------------------------------------------------///////heavy pistol\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"17089",17089,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"17137",17137,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.040]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17174",17174,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.045]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17211",17211,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.045]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17248",17248,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.045]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"17102",17102,"        AimFov(1.05); //Modified_by_FireEyeEian")

;McCalls----------------------------------------------------------------------------------///////McCalls\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"20468",20468,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"20517",20517,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20554",20554,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20591",20591,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20628",20628,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"20481",20481,"        AimFov(1.05); //Modified_by_FireEyeEian")

;Colt revolver-----------------------------------------------------------------------///////colt\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16457",16457,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"16507",16507,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16544",16544,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16581",16581,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16618",16618,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"16471",16471,"        AimFov(1.05); //Modified_by_FireEyeEian")

;M9----------------------------------------------------------------------------------///////M9\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16878",16878,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"16927",16927,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16964",16964,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17001",17001,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17038",17038,"        HandOffset(HandModification_Normal, [0.0,0.0,0.040]); // Converted //Modified_by_FireEyeEian")
;og setting TF_ReplaceLine(INV_GEN,"17020",17020,"        HandOffset(HandModification_Normal, [0.0,0.0,0.165]); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"16891",16891,"        AimFov(1.05); //Modified_by_FireEyeEian")

;Magnum revolver--------------------------------------------------------------------///////magnum\\\\\\\-------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_GEN,"16716",16716,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16753",16753,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16790",16790,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16827",16827,"        HandOffset(HandModification_Normal, [0.000625,0.0,-0.002]); // Converted //Modified_by_FireEyeEian")
;blur
TF_ReplaceLine(INV_GEN,"16668",16668,"        AimBlurStart(0.01); // Converted //Modified_by_FireEyeEian")
; not necessary ;TF_ReplaceLine(INV_GEN,"16663",16663,"        AimBlurEnd(0.45); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"16681",16681,"        AimFov(1.05); //Modified_by_FireEyeEian")
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;fix hipfire offset\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;Removed due to adding lines to .scr\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;TF_InsertLine(INV_GEN,"18708",18708,"        HandOffset(HandModification_Normal, [-0.0055,-0.03291,0.080]); // Converted //fixes hipfire hold //Modified_by_FireEyeEian ")
Goto, swayfix_82
return
weppovfinal_82:
gui,Submit,nohide   ;this shit something else, i could prob do it better but this is how my brain works
GuiControlGet,Recoil_hfov_fix
IfEqual, Recoil_hfov_fix, 1
goto, weppovfinal_82_enablerecoil_fix
IfEqual,Recoil_hfov_fix,0
goto, weppovfinal_82_final
return
weppovfinal_82_enablerecoil_fix:
TF_ReplaceLine(INV_GEN,"17099",17099,"        ShootRecoilTime(0.15); //Modified_by_FireEyeEian")
goto, weppovfinal_82_final

weppovfinal_82_final:
SplashTextOff
EnableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
;SetTitleMatchMode, 2
;if (id := WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
;	EnableCloseButton(id)
;RedrawSysmenu(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
MsgBox,4160,Wep POV,➤Better weapon POV enabled (fov 82).
Enable_BUTTONS_Function()
return

swayfix_62:
;m9
TF_ReplaceLine(INV_GEN,"16928",16928,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16965",16965,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17002",17002,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17039",17039,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
;Colt
TF_ReplaceLine(INV_GEN,"16508",16508,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16545",16545,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16582",16582,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16619",16619,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
;Deagle
TF_ReplaceLine(INV_GEN,"17138",17138,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17175",17175,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17212",17212,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17249",17249,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
;Magnum
TF_ReplaceLine(INV_GEN,"16717",16717,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16754",16754,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16791",16791,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16828",16828,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
;Mcall's
TF_ReplaceLine(INV_GEN,"20518",20518,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20555",20555,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20592",20592,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20629",20629,"        SwayMaxAngle(0.007); //Modified_by_FireEyeEian")
Goto, weppovfinal_62
return

swayfix_72:
;M9
TF_ReplaceLine(INV_GEN,"16928",16928,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16965",16965,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17002",17002,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17039",17039,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
;Colt
TF_ReplaceLine(INV_GEN,"16508",16508,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16545",16545,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16582",16582,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16619",16619,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
;Deagle
TF_ReplaceLine(INV_GEN,"17138",17138,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17175",17175,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17212",17212,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17249",17249,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
;Magnum
TF_ReplaceLine(INV_GEN,"16717",16717,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16754",16754,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16791",16791,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16828",16828,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
;Mcall's
TF_ReplaceLine(INV_GEN,"20518",20518,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20555",20555,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20592",20592,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20629",20629,"        SwayMaxAngle(0.005); //Modified_by_FireEyeEian")
;;;;;
;;;;;
;shotgun_gen
TF_ReplaceLine(INV_GEN,"17533",17533,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17562",17562,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17591",17591,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17620",17620,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
;shotgun_bgen
TF_ReplaceLine(INV_GEN,"17717",17717,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17746",17746,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17775",17775,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17804",17804,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
;shotgun_cgen
TF_ReplaceLine(INV_GEN,"17901",17901,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17930",17930,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17959",17959,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17988",17988,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
;shotgun_dgen
TF_ReplaceLine(INV_GEN,"18085",18085,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18114",18114,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18143",18143,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18172",18172,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
;shotgun_egen
TF_ReplaceLine(INV_GEN,"18269",18269,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18298",18298,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18327",18327,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18356",18356,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
;shotgun_fgen
TF_ReplaceLine(INV_GEN,"18453",18453,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18482",18482,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18511",18511,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18540",18540,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
;shotgun_shorty
TF_ReplaceLine(INV_GEN,"17345",17345,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17375",17375,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17405",17405,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17435",17435,"        SwayMaxAngle(0.015); //Modified_by_FireEyeEian")
Goto, weppovfinal_72
return

swayfix_82:
;M9
TF_ReplaceLine(INV_GEN,"16928",16928,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16965",16965,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17002",17002,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17039",17039,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
;Colt
TF_ReplaceLine(INV_GEN,"16508",16508,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16545",16545,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16582",16582,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16619",16619,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
;Deagle
TF_ReplaceLine(INV_GEN,"17138",17138,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17175",17175,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17212",17212,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17249",17249,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
;Magnum
TF_ReplaceLine(INV_GEN,"16717",16717,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16754",16754,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16791",16791,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"16828",16828,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
;Mcall's
TF_ReplaceLine(INV_GEN,"20518",20518,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20555",20555,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20592",20592,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20629",20629,"        SwayMaxAngle(0.003); //Modified_by_FireEyeEian")
;;;;;
;;;;;
;shotgun_gen
TF_ReplaceLine(INV_GEN,"17533",17533,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17562",17562,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17591",17591,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17620",17620,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
;shotgun_bgen
TF_ReplaceLine(INV_GEN,"17717",17717,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17746",17746,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17775",17775,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17804",17804,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
;shotgun_cgen
TF_ReplaceLine(INV_GEN,"17901",17901,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17930",17930,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17959",17959,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17988",17988,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
;shotgun_dgen
TF_ReplaceLine(INV_GEN,"18085",18085,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18114",18114,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18143",18143,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18172",18172,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
;shotgun_egen
TF_ReplaceLine(INV_GEN,"18269",18269,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18298",18298,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18327",18327,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18356",18356,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
;shotgun_fgen
TF_ReplaceLine(INV_GEN,"18453",18453,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18482",18482,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18511",18511,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18540",18540,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
;shotgun_shorty
TF_ReplaceLine(INV_GEN,"17345",17345,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17375",17375,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17405",17405,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17435",17435,"        SwayMaxAngle(0.01); //Modified_by_FireEyeEian")
Goto, weppovfinal_82
return








;--------------------------------------------------set to NO -----\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\/////////////////////////////////////////////////////////////////////////////////
;--------------------------------------------------set to NO -----\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\/////////////////////////////////////////////////////////////////////////////////
;--------------------------------------------------set to NO -----\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\/////////////////////////////////////////////////////////////////////////////////
;--------------------------------------------------set to NO -----\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\/////////////////////////////////////////////////////////////////////////////////
;--------------------------------------------------set to NO -----\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\/////////////////////////////////////////////////////////////////////////////////
better_wep_pov_var_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
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
TF_ReplaceLine(INV_GEN,"20678",20678,"        AimBlurStart(0.3); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20671",20671,"        HolderOffset([0.0,0.1,0.0]);    // Converted //this_is_the_default_value")
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
TF_ReplaceLine(INV_GEN,"18031",18031,"        AimBlurStart(0.3); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"18024",18024,"        HolderOffset([0.0,0.1,0.0]);    // Converted //this_is_the_default_value")
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
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted ")
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
;aimfov
TF_ReplaceLine(INV_GEN,"20878",20878,"        AimFov(2.0); //this_is_the_default_value")

;singleshot b----------------------------------------------------------------------------------////////singleshot b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"20240",20240,"        HolderOffset([0.0,0.1,0.0]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"20247",20247,"        AimBlurStart(0.2); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
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
;aimfov
TF_ReplaceLine(INV_GEN,"20260",20260,"        AimFov(2.0); //this_is_the_default_value")

;singleshot----------------------------------------------------------------------------------////////singleshot\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"20022",20022,"        HolderOffset([0.0,0.1,0.0]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"20029",20029,"        AimBlurStart(0.2); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
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
;aimfov
TF_ReplaceLine(INV_GEN,"19934",19934,"        AimFov(2.0); //this_is_the_default_value") 
; //this
;burst b----------------------------------------------------------------------------------////////Burst b\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"19804",19804,"        HolderOffset([0.0,0.1,0.0]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"19811",19811,"        AimBlurStart(0.2); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
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
;aimfov
TF_ReplaceLine(INV_GEN,"19824",19824,"        AimFov(2.0); //this_is_the_default_value")

;burst----------------------------------------------------------------------------------////////Burst\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"19586",19586,"        HolderOffset([0.0,0.1,0.0]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"19593",19593,"        AimBlurStart(0.2); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
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
;aimfov
TF_ReplaceLine(INV_GEN,"19606",19606,"        AimFov(2.0); //this_is_the_default_value")

;auto e gen----------------------------------------------------------------------------------////////Auto e gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"19384",19384,"        HolderOffset([0.1,-0.1,0.15]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"19391",19391,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
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
;aimfov
TF_ReplaceLine(INV_GEN,"19404",19404,"        AimFov(2.0); //this_is_the_default_value")

;auto d gen----------------------------------------------------------------------------------////////Auto d gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"19182",19182,"        HolderOffset([0.1,-0.1,0.15]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"19189",19189,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
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
;aimfov
TF_ReplaceLine(INV_GEN,"19202",19202,"        AimFov(2.0); //this_is_the_default_value")

;auto c gen----------------------------------------------------------------------------------////////Auto c gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"18980",18980,"        HolderOffset([0.1,-0.1,0.15]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"18987",18987,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
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
;aimfov
TF_ReplaceLine(INV_GEN,"19000",19000,"        AimFov(2.0); //this_is_the_default_value")

;auto  gen----------------------------------------------------------------------------------////////Auto gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"18576",18576,"        HolderOffset([0.1,-0.1,0.15]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"18583",18583,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
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
;aimfov
TF_ReplaceLine(INV_GEN,"18596",18596,"        AimFov(2.0); //this_is_the_default_value")
;auto b gen----------------------------------------------------------------------------------////////Auto b gen\\\\\\\\\--------------------------------------------------------------------------------------------------
;fix for hip fire hold
TF_ReplaceLine(INV_GEN,"18778",18778,"        HolderOffset([0.1,-0.1,0.15]);    // Converted")
;blur
TF_ReplaceLine(INV_GEN,"18785",18785,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
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
;aimfov
TF_ReplaceLine(INV_GEN,"18798",18798,"        AimFov(2.0); //this_is_the_default_value")


;heavy pistol----------------------------------------------------------------------------------///////heavy pistol\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"17089",17089,"        AimBlurStart(0.26); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"17137",17137,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17174",17174,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17211",17211,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17248",17248,"        HandOffset(HandModification_Normal, [0.000625,-0.005,0.070]); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"17102",17102,"        AimFov(2.0);  //this_is_the_default_value")


;McCalls----------------------------------------------------------------------------------///////McCalls\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"20468",20468,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"20517",20517,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20554",20554,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20591",20591,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"20628",20628,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"20481",20481,"        AimFov(1.5); //this_is_the_default_value")


;Colt revolver-----------------------------------------------------------------------///////colt\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16457",16457,"        AimBlurStart(0.3); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"16507",16507,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16544",16544,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16581",16581,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16618",16618,"        HandOffset(HandModification_Normal, [0.000625,0.0,0.070]); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"16471",16471,"        AimFov(2.0); //this_is_the_default_value")


;M9----------------------------------------------------------------------------------///////M9\\\\\\\--------------------------------------------------------------------------------------------------
;blur
TF_ReplaceLine(INV_GEN,"16878",16878,"        AimBlurStart(0.25); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16458",16458,"        AimBlurEnd(0.35); // Converted //Modified_by_FireEyeEian")
;handoffset
TF_ReplaceLine(INV_GEN,"16927",16927,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16964",16964,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17001",17001,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"17038",17038,"        HandOffset(HandModification_Normal, [0.0,0.0,0.070]); // Converted //this_is_the_default_value")
;aimfov
TF_ReplaceLine(INV_GEN,"16891",16891,"        AimFov(2.0); //this_is_the_default_value")


;Magnum revolver--------------------------------------------------------------------///////magnum\\\\\\\-------------------------------------------------------------------------------------------------
;handoffset
TF_ReplaceLine(INV_GEN,"16716",16716,"        HandOffset(HandModification_Normal, [0.00125,0.00125,0.16]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16753",16753,"        HandOffset(HandModification_Normal, [0.00125,0.00125,0.16]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16790",16790,"        HandOffset(HandModification_Normal, [0.00125,0.00125,0.16]); // Converted //this_is_the_default_value")
TF_ReplaceLine(INV_GEN,"16827",16827,"        HandOffset(HandModification_Normal, [0.00125,0.00125,0.16]); // Converted //this_is_the_default_value")
;blur
TF_ReplaceLine(INV_GEN,"16668",16668,"        AimBlurStart(0.4); // Converted //this_is_the_default_value")
; not necessary ;TF_ReplaceLine(INV_GEN,"16663",16663,"        AimBlurEnd(0.45); // Converted //Modified_by_FireEyeEian")
;aimfov
TF_ReplaceLine(INV_GEN,"16681",16681,"        AimFov(2.5); //this_is_the_default_value")
SplashTextOff
MsgBox,4160,Wep POV,➤Better weapon POV disabled.
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
Enable_BUTTONS_Function()
return

improved_loot:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,improved_loot_var
IfEqual, improved_loot_var, 1
goto, improved_loot_yes
IfEqual,improved_loot_var,0
goto, improved_loot_no
return
improved_loot_yes:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
;default chest
TF_ReplaceLine(def_loot,"66",66,"		ColorWeight(Color_White, 55.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"67",67,"		ColorWeight(Color_Green, 32.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"68",68,"		ColorWeight(Color_Violet, 8.0);	//Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"69",69,"		ColorWeight(Color_Yellow, 3.0);	//Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"70",70,"		ColorWeight(Color_Orange, 2.0);	//Modified_by_FireEyeEian")
;lockpick1
TF_ReplaceLine(def_loot,"75",75,"		ColorWeight(Color_White, 0.0);   //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"76",76,"		ColorWeight(Color_Green, 77.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"77",77,"		ColorWeight(Color_Violet, 10.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"78",78,"		ColorWeight(Color_Yellow, 8.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"79",79,"		ColorWeight(Color_Orange, 5.0);  //Modified_by_FireEyeEian")
;lockpick2
TF_ReplaceLine(def_loot,"84",84,"		ColorWeight(Color_White, 0.0);   //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"85",85,"		ColorWeight(Color_Green, 55.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"86",86,"		ColorWeight(Color_Violet, 16.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"87",87,"		ColorWeight(Color_Yellow, 15.0); //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"88",88,"		ColorWeight(Color_Orange, 14.0); //Modified_by_FireEyeEian")
;lockpick3
TF_ReplaceLine(def_loot,"93",93,"		ColorWeight(Color_White, 0.0);   //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"94",94,"		ColorWeight(Color_Green, 37.0);  //Modified_by_FireEyeEian")
TF_ReplaceLine(def_loot,"95",95,"		ColorWeight(Color_Violet, 33.0); //Modified_by_FireEyeEian")
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
MsgBox,4160,Improved loot option,➤Loot will be improved (Chests/Butchers/Rams).
Enable_BUTTONS_Function()
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
improved_loot_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
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
MsgBox,4160,Improved loot option,➤Loot will be default.
Enable_BUTTONS_Function()
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return

noclip_truck:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,noclip_truck_var
	IfEqual,noclip_truck_var, 1
goto, noclip_truck_yes
	IfEqual,noclip_truck_var,0
goto, noclip_truck_no
	return
noclip_truck_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(cardi_phx,"77",77,"    Ignore(1) //Modified_by_FireEyeEian")
TF_ReplaceLine(cardi_phx,"91",91,"    Ignore(1) //Modified_by_FireEyeEian")
;TF_ReplaceLine(truckdi_phx,"73",73,"    Ignore(1) //Modified_by_FireEyeEian")
;TF_ReplaceLine(truckdi_phx,"87",87,"    Ignore(1) //Modified_by_FireEyeEian")
SplashTextOff
MsgBox,4160,Noclip trucks,➤Noclip trucks enabled. `nPlease note:`n 		The armored truck will not be affected because it will fall halfway through the ground after getting out of the hotel preventing you from getting inside.`n`nAlso note that the jeep will fall through the first bridge in the jungle.. You've been warned..
Enable_BUTTONS_Function()
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
noclip_truck_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(cardi_phx,"77",77,"    Ignore(0) //Modified_by_FireEyeEian")
TF_ReplaceLine(cardi_phx,"91",91,"    Ignore(0) //Modified_by_FireEyeEian")
;TF_ReplaceLine(truckdi_phx,"73",73,"    Ignore(0) //Modified_by_FireEyeEian")
;TF_ReplaceLine(truckdi_phx,"87",87,"    Ignore(0) //Modified_by_FireEyeEian")
SplashTextOff
MsgBox,4160,Noclip trucks,➤Noclip trucks disabled.
Enable_BUTTONS_Function()
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return

Recoil_hfov_fix:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,Recoil_hfov_fix
IfEqual, Recoil_hfov_fix, 1
goto, Recoil_hfov_fix_yes
IfEqual,Recoil_hfov_fix,0
goto, Recoil_hfov_fix_no
return
Recoil_hfov_fix_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
;shotguns
TF_ReplaceLine(INV_GEN,"17303",17303,"        ShootVertRecoil(0.01);       //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17485",17485,"        ShootVertRecoil(0.01);       //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17669",17669,"        ShootVertRecoil(0.01);       //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17853",17853,"        ShootVertRecoil(0.01);       //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18037",18037,"        ShootVertRecoil(0.01);       //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18221",18221,"        ShootVertRecoil(0.01);       //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18405",18405,"        ShootVertRecoil(0.01);       //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20684",20684,"        ShootVertRecoil(0.01);       //Modified_by_FireEyeEian")
;pistols
;deag_hipfire
TF_ReplaceLine(INV_GEN,"17095",17095,"        ShootVertRecoil(0.015); //Modified_by_FireEyeEian")
;m9_hipfire
TF_ReplaceLine(INV_GEN,"16884",16884,"        ShootVertRecoil(0.015); //Modified_by_FireEyeEian")
;mcalls_hipfire
TF_ReplaceLine(INV_GEN,"20474",20474,"        ShootVertRecoil(0.015); //Modified_by_FireEyeEian")
gui,Submit,nohide
GuiControlGet,better_wep_pov_var
IfEqual, better_wep_pov_var, 1
goto, better_wep_pov_var_ison
IfEqual,better_wep_pov_var,0
goto, better_wep_pov_var_isoff

better_wep_pov_var_ison:
;deag_aim_recoil_fix
TF_ReplaceLine(INV_GEN,"17099",17099,"        ShootRecoilTime(0.15); //Modified_by_FireEyeEian")
Goto, complete_hfov_enabled
;magnum_aim_recoil is ok enough
better_wep_pov_var_isoff:
Goto, complete_hfov_enabled

complete_hfov_enabled:
SplashTextOff
MsgBox,4160,recoil fix option,➤high recoil fix for high fov enabled.
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
Enable_BUTTONS_Function()
return

Recoil_hfov_fix_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
;shotguns
TF_ReplaceLine(INV_GEN,"17303",17303,"        ShootVertRecoil(0.1);       //this_is_the_default_value //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17485",17485,"        ShootVertRecoil(0.1);       //this_is_the_default_value //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17669",17669,"        ShootVertRecoil(0.1);       //this_is_the_default_value //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"17853",17853,"        ShootVertRecoil(0.1);       //this_is_the_default_value //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18037",18037,"        ShootVertRecoil(0.1);       //this_is_the_default_value //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18221",18221,"        ShootVertRecoil(0.1);       //this_is_the_default_value //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"18405",18405,"        ShootVertRecoil(0.1);       //this_is_the_default_value //Modified_by_FireEyeEian")
TF_ReplaceLine(INV_GEN,"20684",20684,"        ShootVertRecoil(0.1);       //this_is_the_default_value //Modified_by_FireEyeEian")
;pistols
;deag_hipfire
TF_ReplaceLine(INV_GEN,"17095",17095,"        ShootVertRecoil(0.025); //this_is_the_default_value //Modified_by_FireEyeEian")
;m9_hipfire
TF_ReplaceLine(INV_GEN,"16884",16884,"        ShootVertRecoil(0.025); //this_is_the_default_value //Modified_by_FireEyeEian")
;mcalls_hipfire
TF_ReplaceLine(INV_GEN,"20474",20474,"        ShootVertRecoil(0.025); //this_is_the_default_value //Modified_by_FireEyeEian")
;wep_pov_fix_def_value
TF_ReplaceLine(INV_GEN,"17099",17099,"        ShootRecoilTime(0.2); //this_is_the_default_value //Modified_by_FireEyeEian")
Goto, complete_hfov_Disabled

complete_hfov_Disabled:
SplashTextOff
MsgBox,4160,recoil fix option,➤high recoil fix for high fov Disabled.
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
Enable_BUTTONS_Function()
return

reducejumpstaminacost:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,Jump_stamina_var
IfEqual, Jump_stamina_var, 1
goto, reduce_jump_stamina_yes
IfEqual,Jump_stamina_var,0
goto, reduce_jump_stamina_no
reduce_jump_stamina_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"236",236,"	<prop n=""JumpStaminaCost"" v=""0.03""/>	<!--  Modified by FireEyeEian-->")
SplashTextOff
MsgBox,4160,Jump stamina option,➤Jump stamina cost set to 50`% (0.03)
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
Enable_BUTTONS_Function()
return
reduce_jump_stamina_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"236",236,"	<prop n=""JumpStaminaCost"" v=""0.06""/>	<!-- This is the default value //Modified_by_FireEyeEian-->")
SplashTextOff
MsgBox,4160,Jump stamina option,➤Jump stamina cost set to default (0.06),
Enable_BUTTONS_Function()
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return

EnableRunningwithwep:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,Run_WITH_WEP_VAR
IfEqual, Run_WITH_WEP_VAR, 1
goto, Run_WITH_WEP_yes
IfEqual,Run_WITH_WEP_VAR,0
goto, Run_WITH_WEP_no
Run_WITH_WEP_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"63",63,"	<prop n=""HideWeaponsDuringSprint"" v=""0.0""/>	<!--  Modified by FireEyeEian-->")
SplashTextOff
MsgBox,4160,Run w/weps,➤Weapons will be shown when sprinting
Enable_BUTTONS_Function()
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
Run_WITH_WEP_no:
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
DISABLE_BUTTONS_Function()
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"63",63,"	<prop n=""HideWeaponsDuringSprint"" v=""1.0""/>	<!-- This is the default value //Modified_by_FireEyeEian-->")
SplashTextOff
MsgBox,4160,Run w/weps,➤Weapons will be hidden when sprinting (vanilla),
Enable_BUTTONS_Function()
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return

movment_tweaks:
play_click_sound_func()
gui,Submit,nohide
GuiControlGet,better_movement_var
IfEqual, better_movement_var, 1
goto, better_movement_yes
IfEqual,better_movement_var,0
goto, better_movement_no
better_movement_yes:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
;Strafing will no longer slow you down increase by 1.2 (48%)
TF_ReplaceLine(Def_lev,"197",197,"	<prop n=""MoveStrafeMaxSpeed"" v=""3.70""/>	    <!-- Converted //Modified_by_FireEyeEian-->")
;instant acceleration also increases acceleration by 2.0
TF_ReplaceLine(Def_lev,"200",200,"	<prop n=""MoveAcceleration"" v=""12.00""/>  	    <!-- Converted //Modified_by_FireEyeEian-->")
TF_ReplaceLine(Def_lev,"201",201,"	<prop n=""MoveDeceleration"" v=""12.00""/>	    <!-- Converted //Modified_by_FireEyeEian-->")
;slighty faster walking (+0.20) also makes walking backwards slighty faster (+0.20)
TF_ReplaceLine(Def_lev,"193",193,"	<prop n=""MoveForwardMaxSpeed"" v=""3.70""/>	    <!-- Converted //Modified_by_FireEyeEian-->")
TF_ReplaceLine(Def_lev,"195",195,"	<prop n=""MoveBackwardMaxSpeed"" v=""2.70""/>	    <!-- Converted //Modified_by_FireEyeEian-->")
SplashTextOff
MsgBox,4160,Movement option,➤Strafing will no longer slow you down(`+1.2, 48`% increase)`n➤Acceleration increases by 2.0 (20`% increase) and instant acceleration`n➤Slighty faster walking `+0.20 (5.7`% increase)`n➤Slighty faster backwards `+0.20 (5.7`% increase),
Enable_BUTTONS_Function()
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return
better_movement_no:
DISABLE_BUTTONS_Function()
DisableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
SplashTextOn, 700,105,Writing to file,Please wait.... `n writing to files....`nNOTE: This could take up to 3 minutes, If you have a slow hard drive then your time might vary.`nif you think this is stuck, simply press `"END`" on your keyboard or force close the application
TF_ReplaceLine(Def_lev,"63",63,"	<prop n=""HideWeaponsDuringSprint"" v=""1.0""/>	<!-- This is the default value //Modified_by_FireEyeEian-->")
SplashTextOff
MsgBox,4160,Movement option,➤Movement set to vanilla values,
Enable_BUTTONS_Function()
enableCloseButton(WinExist("DeadIslandUltimateEdition_By_FireEyeEian"))
return