global MG_DisableDefLB, MG_LB_Status

Goto,MG_LB_End

MG_LB_Enable:
	Hotkey,*LButton,MG_LB_DownHotkey,On
	Hotkey,*LButton up,MG_LB_UpHotkey,On
return

MG_LB_Disable:
	Hotkey,*LButton,MG_LB_DownHotkey,Off
	Hotkey,*LButton up,MG_LB_UpHotkey,Off
return

MG_LB_DownHotkey:
	MG_TriggerDown("LB")
return

MG_LB_UpHotkey:
	MG_TriggerUp("LB")
return

MG_LB_Down:
	MG_LB_Status:=1
	if (!MG_DisableDefLB && !GetKeyState("LButton")) {
		SetMouseDelay,-1
		Send,{Blind}{LButton Down}
	}
return

MG_LB_Up:
	if (!MG_DisableDefLB && GetKeyState("LButton")) {
		SetMouseDelay,-1
		Send,{Blind}{LButton Up}
	}
	MG_LB_Status:=0
return

MG_LB_Check:
	if (!GetKeyState("LButton", "P")) {
		MG_UnpressCntLB++
		if (MG_UnpressCntLB > 3) {
			;MG_TriggerUp("LB")
			;SetMouseDelay,-1
			;Send,{Blind}{LButton}
		}
	} else {
		MG_UnpressCntLB := 0
	}
return

MG_LB_End:
