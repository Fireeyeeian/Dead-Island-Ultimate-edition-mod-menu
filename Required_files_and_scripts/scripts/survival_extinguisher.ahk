#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_Temp%  ; Ensures a consistent starting directory.
DetectHiddenWindows, On
SetBatchLines, -1
#SingleInstance Force

;play_start_sound_func(){
;SoundPlay, %A_Temp%\@DIUE_TEMPFILES\sounds\scream_final.wav ;cant be in this script because this script deletes this files root directory
;}
;play_start_sound_func()
;this_script_file = %A_Temp%\@survival_extinguisher.exe

; Original script by MasterFocus. See original post for instructions.
; LINK: http://www.autohotkey.com/board/topic/59059-wintrigger-watch-deactivationunexistance-of-windows/

#Persistent

; ------ ------ CONFIGURATION SECTION ------ ------

; Program Titles
ProgWinTitle1 = Dead_Island_Definitive_mod_menu_by_FireEyeEian
;ProgWinTitle2 = Calculator

; SetTimer Period
CheckPeriod = 750

; ------ END OF CONFIGURATION SECTION ------ ------

SetTimer, LabelCheckLoadClose, %CheckPeriod%
Return

; ------ ------ ------

LabelCheckLoadClose:
Loop
{

if ProgWinTitle%A_Index% =
break

if (!ProgRunning%A_Index% != !WinExist(ProgWinTitle%A_Index%))
{

if ProgRunning%A_Index% := !ProgRunning%A_Index%
GoSub #1
else
GoSub #2

}
}
return

; Simple helper function for brevity:
GoSubSafe(Sub) {

if IsLabel(Sub)
GoSub %Sub%

}

; ------ ------ CUSTOM LABEL SECTION ------ ------

LabelOnOpen:
Send #1
LabelOnClose:
Send #2
LabelOnOpen2:
MsgBox % A_ThisLabel
return

; ------ END OF CUSTOM LABEL SECTION ------ ------


#1::
;DIUE WINDOW IS STILL OPEN
return



#2::
Process, close,Background_music.exe
;MsgBox, Application closed(`#2)
cleanup()
if (FileExist("%A_Temp%\@DIDMM_TEMPFILES\")) {
	failed_1()
	}
else{
	allgood()
}

failed_1(){
	msgbox failed to delete temp files press (ok) to try again.
	cleanup()
	if (FileExist("%A_Temp%\@DIDMM_TEMPFILES\")) {
		failed_2()
	}			
	else{
		allgood()
		ExitApp
	}
}


cleanup(){
	SplashTextOn,400,30,Deleting Tempory files,Deleting Tempory files...
	Process, close,Background_music.exe
	Process, close,play_scream_sound_then_quit.exe ;shouldn't be running but whatever
	FileRemoveDir,%A_Temp%\@DIDMM_TEMPFILES\,1
	SplashTextOff
}

allgood(){
	MsgBox,,All gucci,Temporary files deleted`, Thanks for using DIUE by FireEyeEian :)`n                                   (App will close now in 4 seconds),4
	Self_destruct_on_reboot()
}

failed_2(){
	MsgBox, failed to delete tempfiles? `n`nshit brok??`n`n(maybe try manually deleting @DIDMM_TEMPFILES folder in temp folder located in C:\Users\{username}\AppData\Local\Temp)
	Self_destruct_on_reboot()
}

Self_destruct_on_reboot(){
    Run, %comspec% /k taskkill /f /im "%A_ScriptName%" & del "%A_ScriptFullPath%" /F /Q /A,,hide
    ExitApp,
}