#SingleInstance force
SetTimer, ReloadTimer, 1000
Goto, ReloadPluginEnd

ReloadTimer:
if (A_TimeIdlePhysical > 10*60*1000) {
	ReloadFlag:=1
} else if (ReloadFlag) {
	Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%"
	ReloadFlag:=0
}

WinGet, WinProc, ProcessName, A
if (WinProc="vmware.exe") {
	Suspend, On
} else {
	Suspend, Off
}
Return

ReloadPluginEnd: