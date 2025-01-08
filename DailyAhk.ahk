#Requires AutoHotkey v2.0
#SingleInstance Force

; ----------------------------- Chrome ------------------------------
; Read the select text
#HotIf WinActive('ahk_exe chrome.exe')
#f::{
    
    Send "翻译并分析以下句子："
}
#v::{
    Send "润色下面的句子："
}

; ----------------------------- file explorer ------------------------------
; Press middle mouse button to move up a folder in Explorer
#HotIf WinActive("ahk_class CabinetWClass")
~MButton::Send "!{Up} "

; ----------------------------- WeChat ------------------------------
; 快速发送微信常用语
#HotIf WinActive('ahk_class WeChatMainWndForPC')
^B::{
    Send "1.晚上吃什么？需要我买什么吗？,+{enter} 2.明天吃什么？ {Enter}"
}

; 微信公众号文章阅读
#HotIf WinActive('ahk_class Chrome_WidgetWin_0')
j::{
    Send "{Down}"
}
k::{
    Send "{Up}"
}

; ----------------------------- dSPACE helper ------------------------------

; Read the select text
#HotIf WinActive('ahk_exe dSPACEHelp.exe')
j::{
    Send "{Down}"
}
k::{
    Send "{Up}"
}

; ----------------------------- FoxitPDF Reader ------------------------------

; Read the select text
#HotIf WinActive('ahk_class classFoxitPhantomPersonal') or WinActive('ahk_class classFoxitReader')
j::{
    Send "{Down}"
}
k::{
    Send "{Up}"
}

