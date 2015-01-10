#SingleInstance force
#InstallKeybdHook
#InputLevel 0
SendMode Input
SetKeyDelay, -1
SetMouseDelay, -1
SetBatchLines, -1

#UseHook On

*sc029::Esc
*AppsKey::CapsLock
*sc070::sc029
+sc079::Send, {Up}
sc079::Down

#UseHook Off
