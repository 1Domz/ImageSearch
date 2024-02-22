#NoEnv
; #Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

#SingleInstance Force

Gui, Add, Text, x10 y10 w200 h30 vTextLabel, Extracted Text:
Gui, Add, Edit, x10 y40 w300 h200 vEditText, ; Edit control to display the extracted text

F6:: 
fileRun := "C:\Program Files\Tesseract-OCR\tesseract.exe"
imagePath := "test4.png"
textOutputFile := "text"

sleep 3000

RunWait, %fileRun% "%imagePath%" "%textOutputFile%" -l eng, , Hide

; FileRead, extractedText, %textOutputFile%
MsgBox, %extractedText% ; Display extracted text for debugging

Gui, Show
GuiControl, , EditText, %extractedText% ; Update the edit control with extracted text
return

GuiEscape:
    Gui, Hide
    return
