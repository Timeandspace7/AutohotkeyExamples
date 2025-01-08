#Requires AutoHotkey v2.0.18+
#SingleInstance Force

; ; 示例 1：获取屏幕绝对坐标上的颜色
; CoordMode("Pixel", "Screen") ; 设置像素坐标为屏幕绝对坐标
; x := 100
; y := 200
; color := PixelGetColor(x, y)
; MsgBox("The color at (" x ", " y ") is " Format("{:06X}", color))

; ; 示例 2：在活动窗口内获取颜色
; CoordMode("Pixel", "Window") ; 设置像素坐标为活动窗口的相对坐标
; x := 50
; y := 50
; color := PixelGetColor(x, y)
; MsgBox("The color at relative position (" x ", " y ") is " Format("{:06X}", color))

; 示例 3：检测特定颜色并执行操作
CoordMode("Pixel", "Screen") ; 使用屏幕坐标
Loop {
    color := PixelGetColor(100, 100)
    if (color = 0xF8F8F8) ; 如果颜色是白色
    {
        MsgBox("Found white color at (100, 100)!")
        break
    }
    Sleep(100) ; 每 100 毫秒检测一次
}
