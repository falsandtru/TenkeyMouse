#SingleInstance force
#InstallKeybdHook
#InputLevel 1
SendMode Input
SetKeyDelay, -1
SetMouseDelay, -1
SetBatchLines, -1

#UseHook On

^h::Send, {BS}
^[::Send, {ESC}

#UseHook Off
