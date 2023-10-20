#singleinstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


FileRead, OutputVar, countries.txt

str := OutputVar

nnn := 0

Loop, Parse, str, `|
{
    nnn++
    vccc%nnn% := A_LoopField
}
nnnjj := nnn
nnnjj := nnnjj - 1
;MsgBox, %nnnjj%


;MsgBox, %vccc1%


word = |
wordLen := StrLen(word)
file = countries.txt
count = 0

Loop Read, %file%
{
	pos = 1
;~ 	l := A_Index
	Loop
	{
		pos := InStr(A_LoopReadLine, word, false, pos)
		If (pos = 0)
			Break	; No longer found in the line
;~ 		StringMid f, A_LoopReadLine, pos, wordLen
		pos += wordLen
		; Here, you may want to test the char after the word:
		; if alphabetical, it may be a false positive (eg. humanity)
		; unless you want the plural (humans)
		count++
;~ 		MsgBox %l% - %A_LoopReadLine%`n%pos%: %f% (%count%)
	}
}

;MsgBox The word "%Word%" appeared %count% times
count2 := count * 2
count3 := count
;MsgBox, %count2%
;MsgBox, %count%
nnn := 1
nnnn := 0

jjj := 0
nnn := 1
x := 10
y := 40
Gui, Color, 121212
Gui, Font, s10
Gui,  Add, Text, cWhite x50 y10 w690 h21, %count% countries or territories
Loop, %count%
{
if (nnn > 29)
{
x := 700
if (nnn = 30)
{
y := 40
}
ppp := vccc%nnn%
Gui,  Add, Button, cWhite x%x% y%y% w690 h25 vHHH%nnn% gButton, %ppp%
Loop, 26
{
y++
}

nnn++
}
else
{
ppp := vccc%nnn%
Gui,  Add, Button, cWhite x%x% y%y% w690 h25 vHHH%nnn% gButton, %ppp%
Loop, 26
{
y++
}

nnn++
}
}
Gui, Font, s15
Gui, Add, Text, cWhite x1190 y5 w500 h30, Press 3 to back to the Main Menu
Gui, Show, w1500 h800
Return

Button:
Gui, Submit, NoHide
nnn := 1
;MsgBox, %A_GuiControl%
uuu := A_GuiControl
uuuu := A_GuiControl

uuuu := SubStr(uuuu, 4)
;msgbox % uuu
yess := vccc%uuuu%
FileDelete, namee.txt
;MsgBox, %yess%
FileAppend,
(
%yess%
), namee.txt
Sleep, 10
Run Show Timezone 1.0 beta.ahk
ExitApp
Return

3::
Run Main Menu.ahk
ExitApp
Return


GuiClose:
ExitApp

