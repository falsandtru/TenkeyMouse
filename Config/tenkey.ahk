#SingleInstance force
#InstallKeybdHook
#InputLevel 1
SendMode Input
SetKeyDelay, -1
SetMouseDelay, -1
SetBatchLines, -1

map = %1%
back = %2%

Send, {Shift Up}{Ctrl Up}{Alt Up}
;Send, {LButton Up}{MButton Up}{RButton Up}

#UseHook On

#If map = ""
map:=1

#If !GetKeyState("NumLock", "T")
;*NumpadAdd::Option
*NumpadDiv::Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%" 0 %map%
*NumpadMult::Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%" 1 %map%
*NumpadSub::Esc

; Mouse(default)
#If map = 1
*NumpadHome::
  if (!GetKeyState("XButton1")) {
    Send, {Blind}{XButton1 Down}
  }
return
*NumpadHome up::
  Send, {Blind}{XButton1 Up}
return
;*NumpadUp::Command
*NumpadPgUp::
  if (!GetKeyState("XButton2")) {
    Send, {Blind}{XButton2 Down}
  }
return
*NumpadPgUp up::
  Send, {Blind}{XButton2 Up}
return

*NumpadLeft::
  if (!LB && !GetKeyState("LButton")) {
    LB := 1
    Send, {Blind}{LButton Down}
  }
return
*NumpadLeft up::
  LB := 0
  Send, {Blind}{LButton Up}
return
*NumpadClear::
  if (!MB && !GetKeyState("MButton")) {
    MB := 1
    Send, {Blind}{MButton Down}
  }
return
*NumpadClear up::
  MB := 0
  Send, {Blind}{MButton Up}
return
*NumpadRight::
  if (!RB && !GetKeyState("RButton")) {
    RB := 1
    Send, {Blind}{RButton Down}
  }
return
*NumpadRight up::
  RB := 0
  Send, {Blind}{RButton Up}
return

#InputLevel 0

*NumpadEnd::Alt
*NumpadDown::Shift
*NumpadPgDn::Ctrl

*NumpadIns::return
*NumpadDel::RWin

#InputLevel 1

; Empty
#If map = 9

; Map
#If map = 0
NumpadEnd::Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%" 1 %back%
NumpadDown::Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%" 2 %back%
NumpadPgDn::Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%" 3 %back%

NumpadLeft::Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%" 4 %back%
NumpadClear::Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%" 5 %back%
NumpadRight::Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%" 6 %back%

NumpadHome::Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%" 7 %back%
NumpadUp::Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%" 8 %back%
NumpadPgUp::Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%" 9 %back%

NumpadIns::Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%" "" %back%
NumpadDel::Run "%A_AhkPath%" /r /f "%A_ScriptFullPath%" %back% %back%

#UseHook Off
