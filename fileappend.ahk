#NoEnv
; #Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

#SingleInstance Force

F6:: 
Loop 2{
    numbertxt := A_Index 
    ; Set the file path
    filePath := "file" . numbertxt . ".txt"
    ; Create the file and write initial text
    sleep 500
    FileAppend, this is number%numbertxt%.`n, %filePath%
    sleep 500
}


