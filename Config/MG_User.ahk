﻿;===============================================================================
;
;		MouseGestureL.ahk 拡張スクリプト
;
;		・起動時の初期化処理や、ジェスチャー実行時に呼び出されるサブルーチン、
;		　関数などを定義できます。
;		・設定画面内の各種リストのサイズなども変更できます。
;		・内容を書き換えた場合はスクリプトをリロードしてください。
;
;===============================================================================

;----- ユーザー定義の初期化処理	------------------------------------------------
if (!MG_IsEdit) {
; MouseGestureL.ahk用





} else {
; MG_Edit.ahk用





}
; MouseGestureL.ahk、MG_Edit.ahk共通

#InstallKeybdHook
#InstallMouseHook
#HotkeyModifierTimeout 100
SendMode Input
SetKeyDelay, -1
SetMouseDelay, -1

Run "%A_AhkPath%" /r "%A_ScriptDir%\Config\tenkey.ahk"
Run "%A_AhkPath%" /r "%A_ScriptDir%\Config\remap.ahk"
Run "%A_AhkPath%" /r "%A_ScriptDir%\Config\mutate.ahk"
Run "%A_AhkPath%" /r "%A_ScriptDir%\Config\vim.ahk"





;-------------------------------------------------------------------------------
Goto, MG_User_End

;----- ユーザー定義サブルーチン	------------------------------------------------










;-------------------------------------------------------------------------------
MG_User_End:
