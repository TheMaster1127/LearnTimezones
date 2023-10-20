#singleinstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

FileRead, outppp, namee.txt
ddd := outppp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Initialize variables
num_countries := 0
country_names := ""
country_times := ""

; Open the file for reading
FileRead, file_contents, output.txt

; Split the file contents into an array of lines
lines := StrSplit(file_contents, "`n")

; Loop through each line and extract the country names and times
for i, line in lines {
    if (Mod(i, 2) = 1) {
        ; This is an odd line number, so it contains the country name
        num_countries++
        ccc%num_countries% := line
    } else {
        ; This is an even line number, so it contains the country time
        time%num_countries% := line
    }
}
num_countries := num_countries - 1
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %num_countries%
{
str := ccc%nnn%
s:=StrSplit(str,"`r").1
ccc%nnn% := s
nnn++
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
c1c = 0
Loop, %num_countries%
{
if (ddd = ccc%nnn%)
{
c1c = %nnn%
;MsgBox, %c1c%
}

nnn++
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;MsgBox, %num_countries%
; Output the results
;MsgBox, %ccc1%`n%time1%`n%ccc2%`n%time2%`n%ccc292%
nnn := 1
Loop, %num_countries%
{
str := time%nnn%

s:=StrSplit(str,":").1
ttt%nnn% := s
s:=StrSplit(str,":").2
ttt%nnn%p1 := s
s:=StrSplit(str,"|").2
day%nnn% := s
ttt%nnn%p1 := SubStr(ttt%nnn%p1, 1, 1) ; extract the first character of ttt%nnn%p1
nnn++
}
;MsgBox, %ttt292%`n%ttt292p1%
nnn := 1
kkk := 0
Loop, %num_countries%
{
if (ttt%c1c% = ttt%nnn%) and (ttt%c1c%p1 = ttt%nnn%p1) and (day%c1c% = day%nnn%)
{
kkk++
ooo%nnn% := ccc%nnn%
}

nnn++
}
nnn := 1
jjj := 1
Loop, %num_countries%
{
if (ooo%nnn% != "")
{

ooo%jjj% := ooo%nnn%
jjj++
}



nnn++
}



;MsgBox, %ddd%`n%kkk%`n`n%ooo1%`n%ooo2%`n%ooo3%`n%ooo4%`n%ooo5%`n%ooo6%`n%ooo7%`n%ooo8%`n%ooo9%`n%ooo10%`n%ooo11%`n%ooo12%`n%ooo13%`n%ooo14%`n%ooo15%`n%ooo16%`n%ooo17%`n%ooo18%`n%ooo19%`n%ooo20%`n%ooo21%`n%ooo22%`n%ooo23%`n%ooo24%`n%ooo25%`n%ooo26%`n%ooo27%`n%ooo28%`n%ooo29%`n%ooo30%`n%ooo31%`n%ooo32%`n%ooo33%`n%ooo34%`n%ooo35%`n%ooo36%`n%ooo37%`n%ooo38%`n%ooo39%`n%ooo40%`n...
nnn := 1
x := 10
y := 100
Gui, Color, 121212
Gui, Font, s13
Gui, Add, Text, cWhite x50 y10 w690 h21, %kkk% countries or territories
Gui, Add, Text, cWhite x50 y30 w690 h21, Selected - [%ddd%]
Gui, Font, s17
Gui, Add, Text, cWhite x10 y760 w690 h30, Press 3 to go to Main Menu!
Gui, Font, s13
Loop, %kkk%
{
if (nnn > 29)
{
x := 700
if (nnn = 30)
{
y := 100
}
ppp := ooo%nnn%
Gui,  Add, Text, cWhite x%x% y%y% w690 h21, %ppp%
Loop, 22
{
y++
}

nnn++
}
else
{
ppp := ooo%nnn%
Gui,  Add, Text, cWhite x%x% y%y% w690 h21, %ppp%
Loop, 22
{
y++
}

nnn++
}
}
Gui, Show, w1500 h800
Return

3::
Run Main Menu.ahk
ExitApp
Return


GuiClose:
ExitApp

