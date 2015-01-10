# TenkeyMouse

MouseGestureL(AutoHotKey) config for keyboard base fast mouse operation.

## Feature

* Keyboard base fast mouse operation
* LeftButton gesture available

## Tenkey mouse

|||||
|:---:|:---:|:---:|:---:|
|NLock|Map  |Reset|Esc  |
|X1   |C    |X2   |O    |
|L    |M    |R    |O    |
|Alt  |Shift|Ctrl |Enter|
|T    |T    |RWin |Enter|

## Key system

Button    |Function|Target
----------|--------|------
Left      |Action  |Selection
Middle    |Edit    |Text
Right     |Operate |Window
Command   |Command |Application
Option    |Modify  |Key
Transition|Remap   |AHK

## Gesture & Command

### Basic command

Command|Tenkey|Mouse
-------|------|-----
MovePrev|R Left|*
MoveNext|R Right|*
MoveParent|R Up|*
Search|R Down|*
Close|R Left Right|*
Close|R Right Left|*
Reload|R Down Up|*
RestoreTab|R Down Up Down|*
NewTab|M + M|R Up Down
Copy|M + L|X2 Left
Cut|M + L + Enter|X1 Left
Paste|M + R|X2 Right
Delete|M + Enter|X1 Right

### Advanced command

Command|Tenkey|Mouse
-------|------|-----
QuickCopy|L Drag + M|*
QuickSearch|L Drag + M + M|*
QuickPaste|L Drag + R|*
QuickCut|L Drag + C|-
QuickDelete|L Drag + Enter|-
RowCopy|M Left|*
RowPaste|M Right|*
TopmostOn|M Up|*
TopmostOff|M Down|*
Undo|R + L|*
Redo|R + M|*
Save|R + Enter|-
TabSwitch|R + Wheel|*
WindowSwitch|L + Wheel|X1 + Wheel
DesktopSwitch|M + Wheel|X2 + Wheel
Launcher|C|*
WindowToggle|O|*

### Command chain

Command|Gestures
-------|--------
Copy|L + M - R (- R)
Paste + Save|L > R + Enter
Undo + Redo|R + L - M

## Keyboard

### Ctrl2Cap

Key|Replace
---|-------
CapsLock|Ctrl

### remap.ahk

Key|Replace
---|-------
sc029(全角)|Esc
AppsKey|CapsLock
sc70(カナ)|sc029(全角)
sc079(変換)|Down/Up

### mutate.ahk

Key|1|2|3
---|-|-|-
Shift|Wait|Hold|Release

### vim.ahk

Command|Action
-------|------
C-h|BS

## Installation

0. [AutoHotKey](http://ahkscript.org/download/)
0. [MouseGestureL 1.30](http://hp.vector.co.jp/authors/VA018351/mglahk.html)
0. Configure by overwritten with ahk and ini files in this repository.

## Recover from stuck key problem

There are cases where it is not able to operate correctly by device problems or known bugs of AutoHotKey.

### Lv.1 Failure occurs

Reload scripts, and wait some seconds.

If you use touchpad, disconnect all mouse connection of physical both logical.

### Lv.2 Not be solved by reload

Kill `AutoHotKey.exe` process from Task Manager.

### Lv.3 Can not operate the mouse

0. Open Task Manager by `Ctrl + Shift + Esc`.
0. Select process by arrow key and `Tab`.
0. Killing by `Del`.

### Lv.4 Can not operate Task Manager by keyboard

0. Switch display by `Ctrl + Alt + Del`.
0. Return display by `Esc`.
0. Retry Lv.3.

### Lv.5 Can not operate still

0. Select Task Manager by `Alt + Tab`.
0. Close Task Manager by `Alt + F4`.
0. Retry Lv.3.

## Environment

* Windows7 64bit
* 109 Keyboard
* Touchpad
* 5 Button Mouse
* Ctrl2Cap
* Everything
* Dexpot
