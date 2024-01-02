#singleinstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
FileDelete, DTS0.txt
FileDelete, DTS.txt
FileDelete, dts12.txt
FileDelete, DTS99.txt
FileDelete, DTS_final.txt
website = https://www.timeanddate.com/time/dst/%A_Year%.html
; Load the website
ie := ComObjCreate("InternetExplorer.Application")
ie.Visible := false
ie.Navigate(website)
While ie.ReadyState != 4 || ie.Busy
    Sleep 10
; Get the page contents
doc := ie.Document
pageText := doc.documentElement.innerText

; Save the page contents to a file
pageText := RegExReplace(pageText, "\R+\R", "`r`n")
FileAppend,
(
%pageText%
), DTS0.txt

; Clean up
ie.Quit()
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn1 := 119 ;the starting line
count := 512 ;the number of lines to read

; Read the lines into a memory buffer
buffer := ""
Loop, %count%
{
    FileReadLine, varDTS1, DTS0.txt, %nnn1%
    buffer .= varDTS1 "`n"
    nnn1++
}
; Write the lines to the file
FileAppend, %buffer%, DTS.txt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FileRead, varN, DTS.txt
varN := RegExReplace(varN, "\R+\R", "`r`n")
FileDelete, DTS.txt
FileAppend,
(
%varN%
), DTS.txt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Open the input and output files
InputFile = DTS.txt
OutputFile = DTS_new.txt
PreviousFile = DTS_previous.txt
FileRead, InputData, %InputFile%
FileDelete, %OutputFile%
FileDelete, %PreviousFile%

; Initialize previous line variable
PreviousLine = ""

; Loop through each line of the input file
Loop, Parse, InputData, `n
{
    ; Check if the line contains a date
    if (RegExMatch(A_LoopField, "([1-9]|[12][0-9]|3[01])\s(January|February|March|April|May|June|July|August|September|October|November|December)"))
    {
        ; Write the previous line and current line to separate output files
        FileAppend, %PreviousLine%`n, %PreviousFile%
        FileAppend, %A_LoopField%`n, %OutputFile%
    }

    ; Store the current line as the previous line
    PreviousLine := A_LoopField
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Loop, Read, DTS_new.txt
{
   total_lines = %A_Index%
}
FileDelete, DTS_done.txt
nnn2 := 1
Loop, %total_lines%
{
FileReadLine, varTTT, DTS_new.txt, %nnn2%
str := varTTT
s:=StrSplit(str,", ").2
varo1 := s
s:=StrSplit(str,", ").3
varo2 := s
FileAppend,
(
%varo1%`n%varo2%`n
), DTS_done.txt

nnn2++
}
FileRead, gggg, DTS_new.txt
FileAppend, %gggg%, dts12.txt
FileDelete, DTS_new.txt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FileDelete, DTS99.txt
Loop, Read, dts12.txt
{
   total_lines = %A_Index%
}
jjnn := 1
Loop, %total_lines%
{
FileReadLine, ppp1, dts12.txt, %jjnn%
FileReadLine, ppp2, DTS_previous.txt, %jjnn%

FileAppend,
(
%ppp1% - %ppp2%`n
), DTS99.txt

jjnn++
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FileRead, OutputVar, DTS_done.txt
Sort, OutputVar, u
OutputVar := RegExReplace(OutputVar, "\R+\R", "`r`n")
FileDelete, DTS_done.txt
sleep, 30
FileAppend, %OutputVar%, DTS_done.txt
Loop, Read, DTS_done.txt
{
   total_lines = %A_Index%
}
nnn2 := 1
Loop, %total_lines%
{
FileReadLine, varTTT, DTS_done.txt, %nnn2%
str := varTTT
s:=StrSplit(str, A_Space).1
mmm1 := s
s:=StrSplit(str, A_Space).2
mmm2 := s
str := mmm2
RegExMatch(str, "(January|February|March|April|May|June|July|August|September|October|November|December)", mounth)
mmm3 := mounth
FileAppend,
(
%mmm1% %mmm3%`n
), DTS_final.txt
nnn2++
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FileRead, OutputVar, DTS_final.txt
Sort, OutputVar, u
OutputVar := RegExReplace(OutputVar, "\R+\R", "`r`n")
FileDelete, DTS_final.txt
sleep, 30
FileAppend, %OutputVar%, DTS_final.txt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Loop, Read, DTS_final.txt
{
   total_lines = %A_Index%
}
nnn4 := 1
Loop, %total_lines%
{
FileReadLine, varMMM, DTS_final.txt, %nnn4%
str := varMMM
s:=StrSplit(str,A_Space).1
dd1d%nnn4% := s
s:=StrSplit(str,A_Space).2
dd2d%nnn4% := s
nnn4++
}
FileDelete, DTS_final.txt
nnn4 := 1
m1m1m1 := 1
m1m1m2 := 2
m1m1m3 := 3
m1m1m4 := 4
m1m1m5 := 5
m1m1m6 := 6
m1m1m7 := 7
m1m1m8 := 8
m1m1m9 := 9
m1m1m10 := 10
m1m1m11 := 11
m1m1m12 := 12
m1m1m13 := 13
m1m1m14 := 14
m1m1m15 := 15
m1m1m16 := 16
m1m1m17 := 17
m1m1m18 := 18
m1m1m19 := 19
m1m1m20 := 20
m1m1m21 := 21
m1m1m22 := 22
m1m1m23 := 23
m1m1m24 := 24
m1m1m25 := 25
m1m1m26 := 26
m1m1m27 := 27
m1m1m28 := 28
m1m1m29 := 29
m1m1m30 := 30
m1m1m31 := 31
nnn5 := 1
nnn7 := 1
Loop
{
if (dd1d%nnn5% = m1m1m%nnn7%)
{
dd1d := dd1d%nnn5%
dd2d := dd2d%nnn5%
FileAppend,
(
%dd1d% %dd2d%`n
), DTS_final.txt
nnn4++
}
nnn5++
if (nnn5 >= total_lines)
{
nnn5 := 1
nnn7++
}
if (nnn4 >= total_lines)
{
break
}
;;;;;;;;;;; end loop
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Loop, Read, DTS_final.txt
{
   total_lines = %A_Index%
}
nnn4 := 1
Loop, %total_lines%
{
FileReadLine, varMMM, DTS_final.txt, %nnn4%
str := varMMM
s:=StrSplit(str,A_Space).1
dd1d%nnn4% := s
s:=StrSplit(str,A_Space).2
dd2d%nnn4% := s
nnn4++
}
FileDelete, DTS_final.txt
nnn4 := 1
m1m1m1 = January
m1m1m2 = February
m1m1m3 = March
m1m1m4 = April
m1m1m5 = May
m1m1m6 = June
m1m1m7 = July
m1m1m8 = August
m1m1m9 = September
m1m1m10 = October
m1m1m11 = November
m1m1m12 = December
nnn5 := 1
nnn7 := 1
Loop
{
if (dd2d%nnn5% = m1m1m%nnn7%)
{
dd1d := dd1d%nnn5%
dd2d := dd2d%nnn5%
FileAppend,
(
%dd1d% %dd2d%`n
), DTS_final.txt
nnn4++
}
nnn5++
if (nnn5 >= total_lines)
{
nnn5 := 1
nnn7++
}
if (nnn4 >= total_lines)
{
break
}
;;;;;;;;;;; end loop
}









Run DTS checking.ahk




Return