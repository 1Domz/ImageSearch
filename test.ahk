#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance Force
CoordMode, Mouse, Client
CoordMode, Pixel, Client
F6:: 

; imageSearch1 := "Image\test1.png"
imageSearch1 := "GarenaLogin.png"

imageFound := false
While ( !imageFound ){

    ImageSearch , foundX, foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, %ImageSearch1%

    if(ErrorLevel = 0) {
        imageFound := true
    }
    else {
        sleep 500
    }

    ; Check if the image was found or if the timeout occurred
if (imageFound) {
    ; ControlClick, x24 y59, ahk_class Notepad
    ; MouseClick, left, foundX, foundY
    ;   ControlClick, x24 y59, ahk_class Notepad, , , Left
    MsgBox, Image found at X:%foundX% Y:%foundY%
} else {
    sleep 500
}
}
sleep 5000
MsgBox, This should appear after the image found


F7::Pause
