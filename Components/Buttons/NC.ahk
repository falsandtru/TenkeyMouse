Goto,MG_NC_End

MG_NC_Enable:
	Hotkey,*NumpadUp,MG_NC_DownHotkey,On
	Hotkey,*NumpadUp up,MG_NC_UpHotkey,On
return

MG_NC_Disable:
	Hotkey,*NumpadUp,MG_NC_DownHotkey,Off
	Hotkey,*NumpadUp up,MG_NC_UpHotkey,Off
return

MG_NC_DownHotkey:
	MG_TriggerDown("NC")
return

MG_NC_UpHotkey:
	MG_TriggerUp("NC")
return

MG_NC_Down:
	SetMouseDelay,-1
	Send,{Blind}{NumpadUp^NumpadUp~NumpadUp Down}
return

MG_NC_Up:
	SetMouseDelay,-1
	Send,{Blind}{NumpadUp^NumpadUp~NumpadUp Up}
return

MG_NC_End:
