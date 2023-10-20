#singleinstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
lllkkkaaa := 0
nnn5 := 7
nnn2 := 1
Loop, Read, DTS_final.txt
{
   total_lines = %A_Index%
}
nnn1 := 1
Loop, %total_lines%
{
FileReadLine, var%nnn1%, DTS_final.txt, %nnn1%
nnn1++
}
Gui, Color, 121212
Gui, Font, s15
Gui, Add, Checkbox, cWhite x10 y10 w150 h30 vChechbox1 gCheckbox, More details
Gui, Add, Text, cWhite x160 y14 w255 h30, Press 3 to go to Main Menu!
Gui, Font, s10
x := 10
y := 55
nnn1 := 1
nnn3 := 1
Loop, %total_lines%
{
var := var%nnn1%
Gui, Add, Button, x%x% y%y% w100 h50 gButton , %var%
nnn1++
Loop, 60
{
y++
}
nnn2 := nnn3
if (nnn2 >= nnn5)
{
funconce()
nnn2 := 1
nnn3 := 1
y := 55
Loop, 120
{
x++
}
}
nnn3++
}
Gui, Show,
GuiControl, Focus, Button2
Return
Button:
Gui, Submit, NoHide
nnn := 1
;MsgBox, %A_GuiControl%
uuu := A_GuiControl
uuuu := A_GuiControl
;msgbox % uuu
yess := uuuu
;MsgBox, %yess%
; Replace "myString" with the string variable you want to search for
myString = %yess%
; Open the text file for reading
FileRead, fileContents, DTS99.txt
; Initialize an empty result object
result := {}
; Loop through each line of the file
Loop, Parse, fileContents, `n, `r
{
; Check if the line contains a case-insensitive match with the string variable
if (InStr(A_LoopField, myString, false) > 0)
{
; Store the matching line in the result object
if (lllkkkaaa = 1)
{
result[A_LoopField] := ""
}
else
{
result[SubStr(A_LoopField, InStr(A_LoopField, "- ") + 2)] := ""
}
}
}
; Join the result object into a string
resultString := ""
For key, value in result
{
    resultString .= key "`n"
mmmm++
}
; Display the matching lines in a message box

MsgBox %mmmm% - Results`n`n%resultString%
mmmm := 0
Return
Checkbox:
Gui, Submit, NoHide
if (Chechbox1 = 1)
{
lllkkkaaa := 1
}
else
{
lllkkkaaa := 0
}
Return
3::
Run Main Menu.ahk
ExitApp
Return
GuiClose:
ExitApp
funconce()
{
global
uuu++
if (uuu = 1)
{
nnn5++
}
}