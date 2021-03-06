global MG_DisableDefRB, MG_RB_Status

Goto,MG_RB_End

MG_RB_Enable:
	Hotkey,*RButton,MG_RB_DownHotkey,On
	Hotkey,*RButton up,MG_RB_UpHotkey,On
return

MG_RB_Disable:
	Hotkey,*RButton,MG_RB_DownHotkey,Off
	Hotkey,*RButton up,MG_RB_UpHotkey,Off
return

MG_RB_DownHotkey:
	MG_TriggerDown("RB")
return

MG_RB_UpHotkey:
	MG_TriggerUp("RB")
return

MG_RB_Down:
	MG_RB_Status:=1
	if (!MG_DisableDefRB && !GetKeyState("RButton")) {
		SetMouseDelay,-1
		Send,{Blind}{RButton Down}
	}
return

MG_RB_Up:
	if (!MG_DisableDefRB && GetKeyState("RButton")) {
		SetMouseDelay,-1
		Send,{Blind}{RButton Up}
	}
	MG_RB_Status:=0
return

MG_RB_Check:
	if (!GetKeyState("RButton", "P")) {
		MG_UnpressCntRB++
		if (MG_UnpressCntRB > 3) {
			;MG_TriggerUp("RB")
			;SetMouseDelay,-1
			;Send,{Blind}{RButton}
		}
	} else {
		MG_UnpressCntRB := 0
	}
return

MG_RB_End:
