MG_IniFileVersion=1.30
MG_8Dir=0
MG_ActiveAsTarget=1
MG_Interval=20
MG_Threshold=20
MG_LongThresholdX=800
MG_LongThresholdY=600
MG_LongThreshold=700
MG_TimeoutThreshold=12
MG_Timeout=10000
MG_DGInterval=0
MG_ORangeDefault=3
MG_ORangeA=3
MG_ORangeB=3
MG_EdgeInterval=20
MG_EdgeIndiv=0
MG_CornerX=1
MG_CornerY=1
MG_DisableDefMB=0
MG_DisableDefX1B=1
MG_DisableDefX2B=1
MG_UseNavi=0
MG_UseExNavi=3
MG_NaviInterval=10
MG_NaviPersist=0
MG_ExNaviTransBG=1
MG_ExNaviFG=000000
MG_ExNaviBG=FFFFFF
MG_ExNaviTranspcy=255
MG_ExNaviSize=24
MG_ExNaviSpacing=2
MG_ExNaviPadding=4
MG_ExNaviMargin=8
MG_AdNaviFG=FFFFFF
MG_AdNaviNI=7F7F7F
MG_AdNaviBG=000000
MG_AdNaviTranspcy=220
MG_AdNaviSize=12
MG_AdNaviFont=Meiryo
MG_AdNaviPosition=0
MG_AdNaviPaddingL=6
MG_AdNaviPaddingR=6
MG_AdNaviPaddingT=3
MG_AdNaviPaddingB=3
MG_AdNaviRound=1
MG_AdNaviMargin=14
MG_AdNaviSpaceX=2
MG_AdNaviSpaceY=2
MG_AdNaviOnClick=0
MG_ShowTrail=0
MG_DrawTrailWnd=1
MG_TrailColor=0000FF
MG_TrailTranspcy=255
MG_TrailWidth=3
MG_TrailStartMove=3
MG_TrailInterval=10
MG_ShowLogs=0
MG_LogPosition=4
MG_LogPosX=0
MG_LogPosY=0
MG_LogMax=20
MG_LogSizeW=400
MG_LogInterval=500
MG_LogFG=FFFFFF
MG_LogBG=000000
MG_LogTranspcy=100
MG_LogFontSize=10
MG_LogFont=MS UI Gothic
MG_HotkeyEnable=
MG_HotkeyNavi=
MG_ScriptEditor=
MG_UserName=
MG_Password=
MG_TraySubmenu=0
MG_AdjustDlg=0
MG_DlgHeightLimit=800
MG_EditCommand=
MG_FoldTarget=0
MG_MaxLength=11
MG_Triggers=LB_RB_MB_X1B_X2B_NC_NO
MG_SubTriggers=WU_WD_NE


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


global MG_DisableDefMB, MG_MB_Status

Goto,MG_MB_End

MG_MB_Enable:
	Hotkey,*MButton,MG_MB_DownHotkey,On
	Hotkey,*MButton up,MG_MB_UpHotkey,On
return

MG_MB_Disable:
	Hotkey,*MButton,MG_MB_DownHotkey,Off
	Hotkey,*MButton up,MG_MB_UpHotkey,Off
return

MG_MB_DownHotkey:
	MG_TriggerDown("MB")
return

MG_MB_UpHotkey:
	MG_TriggerUp("MB")
return

MG_MB_Down:
	MG_MB_Status:=1
	if (!MG_DisableDefMB && !GetKeyState("MButton")) {
		SetMouseDelay,-1
		Send,{Blind}{MButton Down}
	}
return

MG_MB_Up:
	if (!MG_DisableDefMB && GetKeyState("MButton")) {
		SetMouseDelay,-1
		Send,{Blind}{MButton Up}
	}
	MG_MB_Status:=0
return

MG_MB_Check:
	if (!GetKeyState("MButton", "P")) {
		MG_UnpressCntMB++
		if (MG_UnpressCntMB > 3) {
			;MG_TriggerUp("MB")
			;SetMouseDelay,-1
			;Send,{Blind}{MButton}
		}
	} else {
		MG_UnpressCntMB := 0
	}
return

MG_MB_End:


Goto,MG_X1B_End

MG_X1B_Enable:
	Hotkey,*XButton1,MG_X1B_DownHotkey,On
	Hotkey,*XButton1 up,MG_X1B_UpHotkey,On
return

MG_X1B_Disable:
	Hotkey,*XButton1,MG_X1B_DownHotkey,Off
	Hotkey,*XButton1 up,MG_X1B_UpHotkey,Off
return

MG_X1B_DownHotkey:
	MG_TriggerDown("X1B")
return

MG_X1B_UpHotkey:
	MG_TriggerUp("X1B")
return

MG_X1B_Down:
	if (!MG_DisableDefX1B && !GetKeyState("XButton1")) {
		SetMouseDelay,-1
		Send,{Blind}{XButton1 Down}
	}
return

MG_X1B_Up:
	if (!MG_DisableDefX1B && GetKeyState("XButton1")) {
		SetMouseDelay,-1
		Send,{Blind}{XButton1 Up}
	}
return

MG_X1B_Check:
	if (!GetKeyState("XButton1", "P")) {
		MG_UnpressCntX1B++
		if (MG_UnpressCntX1B > 3) {
			MG_TriggerUp("X1B")
			SetMouseDelay,-1
			Send,{Blind}{XButton1}
		}
	} else {
		MG_UnpressCntX1B := 0
	}
return

MG_X1B_End:


Goto,MG_X2B_End

MG_X2B_Enable:
	Hotkey,*XButton2,MG_X2B_DownHotkey,On
	Hotkey,*XButton2 up,MG_X2B_UpHotkey,On
return

MG_X2B_Disable:
	Hotkey,*XButton2,MG_X2B_DownHotkey,Off
	Hotkey,*XButton2 up,MG_X2B_UpHotkey,Off
return

MG_X2B_DownHotkey:
	MG_TriggerDown("X2B")
return

MG_X2B_UpHotkey:
	MG_TriggerUp("X2B")
return

MG_X2B_Down:
	if (!MG_DisableDefX2B && !GetKeyState("XButton2")) {
		SetMouseDelay,-1
		Send,{Blind}{XButton2 Down}
	}
return

MG_X2B_Up:
	if (!MG_DisableDefX2B && GetKeyState("XButton2")) {
		SetMouseDelay,-1
		Send,{Blind}{XButton2 Up}
	}
return

MG_X2B_Check:
	if (!GetKeyState("XButton2", "P")) {
		MG_UnpressCntX2B++
		if (MG_UnpressCntX2B > 3) {
			MG_TriggerUp("X2B")
			SetMouseDelay,-1
			Send,{Blind}{XButton2}
		}
	} else {
		MG_UnpressCntX2B := 0
	}
return

MG_X2B_End:


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


Goto,MG_WU_End

MG_WU_Enable:
	Hotkey,*WheelUp,MG_WU_Hotkey,On
return

MG_WU_Disable:
	Hotkey,*WheelUp,MG_WU_Hotkey,Off
return

MG_WU_Hotkey:
	MG_ButtonPress("WU")
return

MG_WU_Press:
	SetMouseDelay,-1
	Send,{Blind}{WheelUp}
return

MG_WU_End:


Goto,MG_WD_End

MG_WD_Enable:
	Hotkey,*WheelDown,MG_WD_Hotkey,On
return

MG_WD_Disable:
	Hotkey,*WheelDown,MG_WD_Hotkey,Off
return

MG_WD_Hotkey:
	MG_ButtonPress("WD")
return

MG_WD_Press:
	SetMouseDelay,-1
	Send,{Blind}{WheelDown}
return

MG_WD_End:


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


Goto,MG_Config_End


MG_IsDisable(){
	global
	return ((MG_CClass="ToolbarWindow32") || (MG_Exe="VMwareUser.exe") || (MG_WClass="VMUIFrame") || (MG_CClass="MKSEmbedded") || (MG_Exe="AutoHotkey.exe") || (MG_Exe="AutoHotkeyGUI"))
}

MG_IsTarget1(){
	global
	return ((MG_Exe="Nrl.exe"))
}

MG_IsTarget2(){
	global
	return ((MG_Exe="iexplore.exe") || (MG_Exe="chrome.exe") || (MG_Exe="firefox.exe") || (MG_Exe="opera.exe") || (MG_Exe="TE64.exe") || (MG_Exe="TE32.exe") || (MG_Exe="atom.exe"))
}

MG_IsTarget3(){
	global
	return ((MG_Exe="iexplore.exe") || (MG_Exe="chrome.exe") || (MG_Exe="firefox.exe") || (MG_Exe="opera.exe"))
}

MG_IsTarget4(){
	global
	return ((MG_WClass="CabinetWClass") || (MG_WClass="ExploreWClass") || (MG_WClass="Progman") || (MG_WClass="WorkerW"))
}

MG_IsTarget5(){
	global
	return (MG_IsTarget4() && ((MG_TreeListHitTest())))
}

MG_IsTarget6(){
	global
	return ((MG_Exe="VMwareUser.exe") || (MG_WClass="VMUIFrame") || (MG_CClass="MKSEmbedded"))
}

MG_IsTarget7(){
	global
	return ((MG_WClass="DexpotDesktopControlWindowClass"))
}

MG_IsTarget8(){
	global
	return ((MG_WClass="Shell_TrayWnd"))
}

MG_IsTarget9(){
	global
	return ((MG_WClass="Progman") && (MG_CClass="SysListView32") && (MG_Title="Program Manager"))
}

MG_IsTarget10(){
	global
	return ((MG_CClass="Edit") || (MG_CClass="TEdit"))
}

MG_IsTarget11(){
	global
	return ((MG_WClass="ConsoleWindowClass"))
}

MG_IsTarget12(){
	global
	return ((MG_WClass="#32768"))
}

MG_IsTarget13(){
	global
	return ((MG_WClass="#32770"))
}

MG_IsTarget14(){
	global
	return ((MG_HitTest()=="Caption"))
}

MG_Gesture_LB_:
	;エミュレート
	if (!MG_Hold()) {
		GoSub,MG_LB_Down
	} else {
		GoSub,MG_LB_Up
	}
	
return

MG_GetAction_LB_:
	MG_ActionStr := "エミュレート"
return

MG_Gesture_LB_U:
MG_Gesture_LB_D:
MG_Gesture_LB_L:
MG_Gesture_LB_R:
	;カーソルジェスチャをキャンセル
return

MG_GetAction_LB_U:
MG_GetAction_LB_D:
MG_GetAction_LB_L:
MG_GetAction_LB_R:
	MG_ActionStr := "カーソルジェスチャをキャンセル"
return

MG_Gesture_LB_WU_:
	;タスク切り替え
	count+=1
	if !MG_Defer() {
		if (1 = count) {
			Send, {Alt Down}+{Tab}
		} else if (2 >= count) {
		} else {
			Send, +{Tab}
		}
	} else {
		count=
		Send, {Alt Up}
		toggle := 1
	}
return

MG_GetAction_LB_WU_:
	MG_ActionStr := "タスク切り替え"
return

MG_Gesture_LB_WD_:
	;タスク切り替え
	count+=1
	if !MG_Defer() {
		if (1 = count) {
			Send, {Alt Down}{Tab}
		} else if (2 >= count) {
		} else {
			Send, {Tab}
		}
	} else {
		count=
		Send, {Alt Up}
		toggle := 1
	}
return

MG_GetAction_LB_WD_:
	MG_ActionStr := "タスク切り替え"
return

MG_Gesture_LB_RB__:
	;ペースト
	GoSub,MG_LB_Up
	Send, +{Ins}
return

MG_GetAction_LB_RB__:
	MG_ActionStr := "ペースト"
return

MG_Gesture_LB_MB_:
	;コピー
	GoSub,MG_LB_Up
	Send, ^{Ins}
return

MG_GetAction_LB_MB_:
	MG_ActionStr := "コピー"
return

MG_Gesture_LB_MB__MB__:
	if(MG_IsTarget3()){
		;検索
		GoSub,MG_LB_Up
		Send, ^{Ins}
		
		MG_Check("RB_UD_")
		Sleep, 100
		Send, +{Ins}
		Send, {Enter}
	}else{
		;コピー
		GoSub,MG_LB_Up
		Send, ^{Ins}
	}
return

MG_GetAction_LB_MB__MB__:
	if(MG_IsTarget3()){
		MG_ActionStr := "検索"
	}else{
		MG_ActionStr := "コピー"
	}
return

MG_Gesture_LB_NC_:
	;カット
	GoSub,MG_LB_Up
	Send, ^x
return

MG_GetAction_LB_NC_:
	MG_ActionStr := "カット"
return

MG_Gesture_LB_NE__:
	;削除
	GoSub,MG_LB_Up
	Send, {Del}
return

MG_GetAction_LB_NE__:
	MG_ActionStr := "削除"
return


MG_Gesture_RB_U_:
	;親ディレクトリへ移動
	if(A_OSVersion="WIN_XP"){
		Send, {BackSpace}
	}else{
		Send, !{Up}
	}
return

MG_GetAction_RB_U_:
	MG_ActionStr := "親ディレクトリへ移動"
return

MG_Gesture_RB_UD_:
	if(MG_IsTarget2()){
		;新規タブ
		Send, ^t
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_UD_:
	if(MG_IsTarget2()){
		MG_ActionStr := "新規タブ"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_D_:
	if(MG_IsTarget4()){
		;ファイル検索
		WinGetText path
		path := RegExReplace(path, "^\W\S*\s+|\r\n.*", "")
		ProgramFilesX86 := A_ProgramFiles . (A_PtrSize=8 ? " (x86)" : "")
		Run, %ProgramFilesX86%\Everything\Everything.exe -path "%path%"
	}else{
		;テキスト検索
		Send, ^f
	}
return

MG_GetAction_RB_D_:
	if(MG_IsTarget4()){
		MG_ActionStr := "ファイル検索"
	}else{
		MG_ActionStr := "テキスト検索"
	}
return

MG_Gesture_RB_DU_:
	;更新
	Send, {F5}
return

MG_GetAction_RB_DU_:
	MG_ActionStr := "更新"
return

MG_Gesture_RB_DUD_:
	if(MG_IsTarget2()){
		;タブを復元
		Send, ^+t
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_DUD_:
	if(MG_IsTarget2()){
		MG_ActionStr := "タブを復元"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_L_:
	;前へ移動
	Send, !{Left}
return

MG_GetAction_RB_L_:
	MG_ActionStr := "前へ移動"
return

MG_Gesture_RB_LR_:
	if(MG_IsTarget2()){
		;タブを閉じる
		Send, ^w
	}else{
		;ウインドウを閉じる
		Send, !{F4}
		IfWinNotActive
		{
			WinActivate
		}
	}
return

MG_GetAction_RB_LR_:
	if(MG_IsTarget2()){
		MG_ActionStr := "タブを閉じる"
	}else{
		MG_ActionStr := "ウインドウを閉じる"
	}
return

MG_Gesture_RB_LRLR_:
	if(MG_IsTarget2()){
		;タブを復元
		Send, ^+t
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_LRLR_:
	if(MG_IsTarget2()){
		MG_ActionStr := "タブを復元"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_R_:
	;次へ移動
	Send, !{Right}
return

MG_GetAction_RB_R_:
	MG_ActionStr := "次へ移動"
return

MG_Gesture_RB_RL_:
	if(MG_IsTarget2()){
		;タブを閉じる
		Send, ^w
	}else{
		;ウインドウを閉じる
		Send, !{F4}
		IfWinNotActive
		{
			WinActivate
		}
	}
return

MG_GetAction_RB_RL_:
	if(MG_IsTarget2()){
		MG_ActionStr := "タブを閉じる"
	}else{
		MG_ActionStr := "ウインドウを閉じる"
	}
return

MG_Gesture_RB_RLRL_:
	if(MG_IsTarget2()){
		;タブを復元
		Send, ^+t
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_RLRL_:
	if(MG_IsTarget2()){
		MG_ActionStr := "タブを復元"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_WU_:
	if(MG_IsTarget2()){
		;タブ切り替え
		count+=1
		if !MG_Hold() {
			if (1 = count) {
				Send, {Ctrl Down}+{Tab}
			} else if (2 >= count) {
			} else {
				Send, +{Tab}
			}
		} else {
			count=
			Send, {Ctrl Up}
		}
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_WU_:
	if(MG_IsTarget2()){
		MG_ActionStr := "タブ切り替え"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_WD_:
	if(MG_IsTarget2()){
		;タブ切り替え
		count+=1
		if !MG_Hold() {
			if (1 = count) {
				Send, {Ctrl Down}{Tab}
			} else if (2 >= count) {
			} else {
				Send, {Tab}
			}
		} else {
			count=
			Send, {Ctrl Up}
		}
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_WD_:
	if(MG_IsTarget2()){
		MG_ActionStr := "タブ切り替え"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_LB__:
	;アンドゥ
	Send, ^z
return

MG_GetAction_RB_LB__:
	MG_ActionStr := "アンドゥ"
return

MG_Gesture_RB_MB__:
	;リドゥ
	Send, ^y
return

MG_GetAction_RB_MB__:
	MG_ActionStr := "リドゥ"
return

MG_Gesture_RB_MB_U:
	if(MG_IsTarget2()){
		;タブ切り替え
		count+=1
		if (!MG_Hold()) {
			if (1 = count) {
				Send, {Ctrl Down}+{Tab}
			} else if (2 >= count) {
			} else {
				Send, +{Tab}
			}
		} else {
			count=
			Send, {Ctrl Up}
		}
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_MB_U:
	if(MG_IsTarget2()){
		MG_ActionStr := "タブ切り替え"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_MB_D:
	if(MG_IsTarget2()){
		;タブ切り替え
		count+=1
		if (!MG_Hold()) {
			if (1 = count) {
				Send, {Ctrl Down}{Tab}
			} else if (2 >= count) {
			} else {
				Send, {Tab}
			}
		} else {
			count=
			Send, {Ctrl Up}
		}
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_MB_D:
	if(MG_IsTarget2()){
		MG_ActionStr := "タブ切り替え"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_NE__:
	;保存
	Send, ^s
return

MG_GetAction_RB_NE__:
	MG_ActionStr := "保存"
return


MG_Gesture_MB__:
	;待機
	if (MG_Executed = 1) {
		MG_Wait(500)
	}
return

MG_GetAction_MB__:
	MG_ActionStr := "待機"
return

MG_Gesture_MB_U_:
	;最前面固定
	WinSet,Topmost,On
return

MG_GetAction_MB_U_:
	MG_ActionStr := "最前面固定"
return

MG_Gesture_MB_D_:
	;最前面固定解除
	WinSet,Topmost,Off
return

MG_GetAction_MB_D_:
	MG_ActionStr := "最前面固定解除"
return

MG_Gesture_MB_L_:
	;行コピー
	Send, {Home}+{End}+{Right}
	Send, ^{Ins}
return

MG_GetAction_MB_L_:
	MG_ActionStr := "行コピー"
return

MG_Gesture_MB_R_:
	;行ペースト
	Send, {Home}
	Send, +{Ins}
return

MG_GetAction_MB_R_:
	MG_ActionStr := "行ペースト"
return

MG_Gesture_MB_WU_:
	;デスクトップ切り替え
	count+=1
	if (!MG_Hold()) {
		if (1 = count) {
			Send, {Alt Down}{Ctrl Down}{Shift Down}{Up}
		} else if (2 >= count) {
		} else {
			Send, {Alt Down}{Ctrl Down}{Shift Down}{Up}
		}
	} else {
		count=
		Send, {Alt Up}{Ctrl Up}{Shift Up}
	}
return

MG_GetAction_MB_WU_:
	MG_ActionStr := "デスクトップ切り替え"
return

MG_Gesture_MB_WD_:
	;デスクトップ切り替え
	count+=1
	if (!MG_Hold()) {
		if (1 = count) {
			Send, {Alt Down}{Ctrl Down}{Shift Down}{Down}
		} else if (2 >= count) {
		} else {
			Send, {Alt Down}{Ctrl Down}{Shift Down}{Down}
		}
	} else {
		count=
		Send, {Alt Up}{Ctrl Up}{Shift Up}
	}
return

MG_GetAction_MB_WD_:
	MG_ActionStr := "デスクトップ切り替え"
return

MG_Gesture_MB_LB__:
	;コピー
	Send, {MButton Up}
	Send, ^{Ins}
return

MG_GetAction_MB_LB__:
	MG_ActionStr := "コピー"
return

MG_Gesture_MB_LB_NE__:
	if(MG_IsTarget4()){
		;カット
		Send, ^x
		MG_Abort()
	}else{
		;カット
		Send, {MButton Up}
		Send, ^{Ins}
		Send, {Del}
	}
return

MG_GetAction_MB_LB_NE__:
	if(MG_IsTarget4()){
		MG_ActionStr := "カット"
	}else{
		MG_ActionStr := "カット"
	}
return

MG_Gesture_MB_RB__:
	;ペースト
	Send, {MButton Up}
	Send, +{Ins}
return

MG_GetAction_MB_RB__:
	MG_ActionStr := "ペースト"
return

MG_Gesture_MB_RB_NE__:
	;ペースト
	Send, {MButton Up}
	Send, +{Ins}
return

MG_GetAction_MB_RB_NE__:
	MG_ActionStr := "ペースト"
return

MG_Gesture_MB__MB__:
	if(MG_IsTarget2()){
		;新規タブ
		Send, ^t
	}else{
		MG_Cancel()
	}
return

MG_GetAction_MB__MB__:
	if(MG_IsTarget2()){
		MG_ActionStr := "新規タブ"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_NE__:
	;削除
	Send, {MButton Up}
	Send, {Del}
return

MG_GetAction_MB_NE__:
	MG_ActionStr := "削除"
return

MG_Gesture_NC__:
	if(MG_IsTarget1()){
		if (MG_Executed = 1) {
			Send, {Esc}
		}
	}else{
		;ランチャ
		if (MG_Executed = 1) {
			Send, !^+l
		}
	}
return

MG_GetAction_NC__:
	if(MG_IsTarget1()){
		MG_ActionStr := "if (MG_Executed = 1) {"
	}else{
		MG_ActionStr := "ランチャ"
	}
return

MG_Gesture_NC_U:
	
return

MG_GetAction_NC_U:
	
return

MG_Gesture_NC_D:
	
return

MG_GetAction_NC_D:
	
return

MG_Gesture_NC_L_:
	;デスクトップ切り替え
	Send, !^+{Up}
return

MG_GetAction_NC_L_:
	MG_ActionStr := "デスクトップ切り替え"
return

MG_Gesture_NC_R_:
	;デスクトップ切り替え
	Send, !^+{Down}
return

MG_GetAction_NC_R_:
	MG_ActionStr := "デスクトップ切り替え"
return

MG_Gesture_NC_WU_:
	
return

MG_GetAction_NC_WU_:
	
return

MG_Gesture_NC_WD_:
	
return

MG_GetAction_NC_WD_:
	
return

MG_Gesture_NC_LB__:
	;タブ切り替え
	Send, ^+{Tab}
return

MG_GetAction_NC_LB__:
	MG_ActionStr := "タブ切り替え"
return

MG_Gesture_NC_RB__:
	;タブ切り替え
	Send, ^{Tab}
return

MG_GetAction_NC_RB__:
	MG_ActionStr := "タブ切り替え"
return

MG_Gesture_NC_NE__:
	
return

MG_GetAction_NC_NE__:
	
return

MG_Gesture_NO_:
	;ウィンドウトグル
	if (!MG_Hold()) {
		time := 0 < time ? time : A_Now * 1000 + A_MSec
	} else {
		toggle := !toggle
		if (A_Now * 1000 + A_MSec - time > 400) {
			toggle := 0
		}
		time := 0
		if (toggle) {
			Send, !+{Esc}
		}else{
			Send, !{Esc}
		}
	}
return

MG_GetAction_NO_:
	MG_ActionStr := "ウィンドウトグル"
return

MG_Gesture_X1B__:
	;前へ移動
	Send, !{Left}
	
	;待機
	if (MG_Executed = 1) {
		MG_Wait(500)
	}
return

MG_GetAction_X1B__:
	MG_ActionStr := "前へ移動"
return

MG_Gesture_X1B__X1B__:
	;ウインドウ一覧
	Send, +^!w
return

MG_GetAction_X1B__X1B__:
	MG_ActionStr := "ウインドウ一覧"
return

MG_Gesture_X1B_U_:
	
return

MG_GetAction_X1B_U_:
	MG_ActionStr := ""
return

MG_Gesture_X1B_D_:
	
return

MG_GetAction_X1B_D_:
	MG_ActionStr := ""
return

MG_Gesture_X1B_L_:
	;カット
	Send, ^x
return

MG_GetAction_X1B_L_:
	MG_ActionStr := "カット"
return

MG_Gesture_X1B_R_:
	;削除
	Send, {Delete}
return

MG_GetAction_X1B_R_:
	MG_ActionStr := "削除"
return

MG_Gesture_X1B_LB__:
	;Ctrl選択
	if (!MG_Hold()) {
		Send, {Control Down}{LButton}
	} else {
		Send, {Control Up}
	}
	MG_Abort()
return

MG_GetAction_X1B_LB__:
	MG_ActionStr := "Ctrl選択"
return

MG_Gesture_X1B_LB_U:
MG_Gesture_X1B_LB_D:
MG_Gesture_X1B_LB_L:
MG_Gesture_X1B_LB_R:
	;Ctrl選択
	if (!MG_Hold()) {
		Send, {Control Down}
	} else {
		Send, {Control Up}
	}
	MG_Abort()
return

MG_GetAction_X1B_LB_U:
MG_GetAction_X1B_LB_D:
MG_GetAction_X1B_LB_L:
MG_GetAction_X1B_LB_R:
	MG_ActionStr := "Ctrl選択"
return

MG_Gesture_X1B_WU_:
	;タスク切り替え
	Send, !{Tab}
return

MG_GetAction_X1B_WU_:
	MG_ActionStr := "タスク切り替え"
return

MG_Gesture_X1B_WD_:
	;タスク切り替え
	Send, !+{Tab}
return

MG_GetAction_X1B_WD_:
	MG_ActionStr := "タスク切り替え"
return

MG_Gesture_X2B__:
	;次へ移動
	Send, !{Right}
	
	;待機
	if (MG_Executed = 1) {
		MG_Wait(500)
	}
return

MG_GetAction_X2B__:
	MG_ActionStr := "次へ移動"
return

MG_Gesture_X2B__X2B__:
	;デスクトップ一覧
	Send, +^!d
return

MG_GetAction_X2B__X2B__:
	MG_ActionStr := "デスクトップ一覧"
return

MG_Gesture_X2B_U_:
	
return

MG_GetAction_X2B_U_:
	MG_ActionStr := ""
return

MG_Gesture_X2B_D_:
	
return

MG_GetAction_X2B_D_:
	MG_ActionStr := ""
return

MG_Gesture_X2B_L_:
	;コピー
	Send, ^{Ins}
return

MG_GetAction_X2B_L_:
	MG_ActionStr := "コピー"
return

MG_Gesture_X2B_R_:
	;ペースト
	Send, +{Ins}
return

MG_GetAction_X2B_R_:
	MG_ActionStr := "ペースト"
return

MG_Gesture_X2B_LB__:
	;Shift選択
	if (!MG_Hold()) {
		Send, {Shift Down}{LButton}
	} else {
		Send, {Shift Up}
	}
	MG_Abort()
return

MG_GetAction_X2B_LB__:
	MG_ActionStr := "Shift選択"
return

MG_Gesture_X2B_LB_U:
MG_Gesture_X2B_LB_D:
MG_Gesture_X2B_LB_L:
MG_Gesture_X2B_LB_R:
	;Shift選択
	if (!MG_Hold()) {
		Send, {Shift Down}
	} else {
		Send, {Shift Up}
	}
	MG_Abort()
return

MG_GetAction_X2B_LB_U:
MG_GetAction_X2B_LB_D:
MG_GetAction_X2B_LB_L:
MG_GetAction_X2B_LB_R:
	MG_ActionStr := "Shift選択"
return

MG_Gesture_X2B_WU_:
	;デスクトップ切り替え
	Send, +^!{Up}
return

MG_GetAction_X2B_WU_:
	MG_ActionStr := "デスクトップ切り替え"
return

MG_Gesture_X2B_WD_:
	;デスクトップ切り替え
	Send, +^!{Down}
return

MG_GetAction_X2B_WD_:
	MG_ActionStr := "デスクトップ切り替え"
return


MG_Config_end: