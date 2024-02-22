#NoEnv
; #Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

#SingleInstance Force

F6:: 
fileRun := "C:\Program Files\Tesseract-OCR\tesseract.exe"
imagePath := "test4.png"
textOutputFile := "text"

RunWait, %fileRun% "%imagePath%" "%textOutputFile%" -l eng, , Hide

FileRead, extractedText, %textOutputFile%
MsgBox, %extractedText%
return

F7::Pause
