Goto,MG_NO_End

MG_NO_Enable:
	Hotkey,*NumpadAdd,MG_NO_DownHotkey,On
	Hotkey,*NumpadAdd up,MG_NO_UpHotkey,On
return

MG_NO_Disable:
	Hotkey,*NumpadAdd,MG_NO_DownHotkey,Off
	Hotkey,*NumpadAdd up,MG_NO_UpHotkey,Off
return

MG_NO_DownHotkey:
	MG_TriggerDown("NO")
return

MG_NO_UpHotkey:
	MG_TriggerUp("NO")
return

MG_NO_Down:
	SetMouseDelay,-1
	Send,{Blind}{NumpadAdd^NumpadAdd~NumpadAdd Down}
return

MG_NO_Up:
	SetMouseDelay,-1
	Send,{Blind}{NumpadAdd^NumpadAdd~NumpadAdd Up}
return

MG_NO_End:
