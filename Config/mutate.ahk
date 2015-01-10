#SingleInstance force
#InstallKeybdHook
#InputLevel 1
#MaxThreadsPerHotkey 3
SendMode Input
SetKeyDelay, -1
SetMouseDelay, -1
SetBatchLines, -1

Send, {Shift Up}{Ctrl Up}{Alt Up}

#UseHook On

ShiftKeyMutate := 0

RShift::Send, {Blind}{RShift Down}
LShift::Send, {Blind}{LShift Down}
RShift up::
LShift up::
  ++ShiftKeyMutate
  if ShiftKeyMutate = 1
  {
    loop
    {
      if A_PriorKey in LShift,RShift,Shift
      {
        Sleep, 10
      }
      else
      {
        break
      }
    }
    if ShiftKeyMutate = 1
    {
      ShiftKeyMutate := 0
    }
  }
  else if ShiftKeyMutate = 2
  {}
  else if ShiftKeyMutate = 3
  {
    ShiftKeyMutate := 0
  }
  if ShiftKeyMutate = 0
  {
    Send, {Blind}{LShift Up}{RShift Up}
  }
return

#UseHook Off
