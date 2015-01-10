Goto,MG_NE_End

MG_NE_Enable:
	Hotkey,*NumpadEnter,MG_NE_DownHotkey,On
	Hotkey,*NumpadEnter up,MG_NE_UpHotkey,On
return

MG_NE_Disable:
	Hotkey,*NumpadEnter,MG_NE_DownHotkey,Off
	Hotkey,*NumpadEnter up,MG_NE_UpHotkey,Off
return

MG_NE_DownHotkey:
	MG_TriggerDown("NE")
return

MG_NE_UpHotkey:
	MG_TriggerUp("NE")
return

MG_NE_Down:
	SetMouseDelay,-1
	Send,{Blind}{NumpadEnter^NumpadEnter~NumpadEnter Down}
return

MG_NE_Up:
	SetMouseDelay,-1
	Send,{Blind}{NumpadEnter^NumpadEnter~NumpadEnter Up}
return

MG_NE_End:
