;this is a msgbox that has an emoji at the start
;CustomMsgBox("ERROR","⚠texthere",FontName,"cf22e30 s20 bold","202020")

CustomMsgBox(Title,Message,Font="",FontOptions="",WindowColor="")
{
	Gui,66:Destroy
	Gui,66:Color,%WindowColor%
	
	Gui,66:Font,%FontOptions%,%Font%
	Gui,66:Add,Text,,%Message%
	Gui,66:Font
	
	GuiControlGet,Text,66:Pos,Static1
	
	Gui,66:Add,Button,% "Default y+10 w75 g66OK xp+" (TextW / 2) - 38 ,OK
	
	Gui,66:-MinimizeBox
	Gui,66:-MaximizeBox
	
	SoundPlay,*-1
	Gui,66:Show,,%Title%
	
	Gui,66:+LastFound
	gui,66:+AlwaysOnTop
	WinWaitClose
	Gui,66:Destroy
	return
	
	66OK:
	Gui,66:Destroy
	return
}