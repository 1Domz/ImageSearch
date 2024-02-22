#NoEnv
; #Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

#SingleInstance Force
F6:: 
filePath := "login.txt"
Loop, 20 {  ; This loop will run 10 times
    number := A_Index  ; A_Index contains the current iteration count

    if (number < 10) {
        numberPrefix := "domz00"
    } else {
        numberPrefix := "domz0"
    }

    ; SendInput,  numberPrefix . number . "{Enter}"  ; Sends "number1", "number2", ..., "number10"
    FileAppend, %numberPrefix%%number% `n, %filePath% ; Sends "number
    Sleep, 1000  ; Sleep for 1000 milliseconds (1 second) before the next iteration
}

F7::Pause



