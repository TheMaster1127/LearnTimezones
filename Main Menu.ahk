;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name:
; Learn Timezones BETA 1.0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#singleinstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;OPTIMIZATIONS START
#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
DllCall("ntdll\ZwSetTimerResolution","Int",5000,"Int",1,"Int*",MyCurrentTimerResolution) ;setting the Windows Timer Resolution to 0.5ms, THIS IS A GLOBAL CHANGE
;OPTIMIZATIONS END

Gui, Font, s13
Gui, Color, 121212
Gui, Add, Checkbox, cWhite x10 y10 w250 h20 vCheckbox1, Oceania (13)
Gui, Add, Checkbox, cWhite x10 y40 w250 h20 vCheckbox2, Europe (45)
Gui, Add, Checkbox, cWhite x10 y70 w250 h20 vCheckbox3, Asia (49)
Gui, Add, Checkbox, cWhite x10 y100 w250 h20 vCheckbox4, Africa (54)
Gui, Add, Checkbox, cWhite x10 y130 w250 h20 vCheckbox5, South America (13)
Gui, Add, Checkbox, cWhite x10 y160 w290 h20 vCheckbox6, North America/central (24)
Gui, Add, Checkbox, cWhite x10 y190 w340 h20 vCheckbox7, Countries with multiple time zones (114)
Gui, Add, Checkbox, cWhite x10 y220 w280 h20 vCheckbox8, France (12)
Gui, Add, Checkbox, cWhite x10 y250 w280 h20 vCheckbox9, Russia (11)
Gui, Add, Checkbox, cWhite x10 y280 w280 h20 vCheckbox10, United States (6 + 5 = (11))
Gui, Add, Checkbox, cWhite x10 y310 w280 h20 vCheckbox11, Australia (10)
Gui, Add, Checkbox, cWhite x10 y340 w280 h20 vCheckbox12, Antarctica (9)
Gui, Add, Checkbox, cWhite x10 y370 w280 h20 vCheckbox13, United Kingdom (9)
Gui, Add, Checkbox, cWhite x10 y400 w280 h20 vCheckbox14, Canada (6)
Gui, Add, Checkbox, cWhite x10 y430 w280 h20 vCheckbox15, Denmark (5)
Gui, Add, Checkbox, cWhite x10 y460 w280 h20 vCheckbox16, New Zealand (5)
Gui, Add, Checkbox, cWhite x10 y490 w340 h20 vCheckbox17, More with multiple time zones Part 1 (16)
Gui, Add, Checkbox, cWhite x10 y520 w340 h20 vCheckbox18, More with multiple time zones Part 2 (20)
Gui, Add, Checkbox, cWhite x10 y550 w280 h20 vCheckbox19, Middle east (18)
Gui, Add, Checkbox, cWhite x10 y580 w280 h20 vCheckbox20, Balkans (13)
Gui, Add, Checkbox, cWhite x10 y610 w280 h20 vCheckbox21, All Countries and territories (291)
Gui, Add, Checkbox, cWhite x10 y640 w340 h20 gUTC vCheckbox22, UTC ofsets (27) form UTC-12 to UTC+14
Gui, Add, Text, cWhite x360 y10 w500 h600, Countries with multiple time zones = 114`nFrance - 12`nRussia - 11`nUnited States - 6 + 5 = 11`nAustralia - 10`nAntarctica - 9`nUnited Kingdom - 9`nCanada - 6`nDenmark - 5`nNew Zealand - 5`nBrazil - 4`nMexico - 3`nChile - 3`nIndonesia - 3`nKiribati - 3`nDemocratic Republic of the Congo - 2`nEcuador - 2`nFederated States of Micronesia - 2`nKazakhstan - 2`nKingdom of the Netherlands - 2`nMongolia - 2`nPapua New Guinea - 2`nPortugal - 2`nSouth Africa - 2`nSpain - 2
Gui, Add, Button, x10 y690 w150 h40 gButton1, Start
Gui, Add, Button, x10 y740 w150 h40 gButton2, Check timezones
Gui, Add, Button, x170 y690 w150 h40 gButton3, Check DTS dates
Gui, Add, Text, cWhite x10 y790 w150 h60,
Gui, Show, w700 h830
Return
Button3:
Run DTS checking.ahk
ExitApp
Return
UTC:
Gui, Submit, NoHide
If (Checkbox22 = 1)
{
varvarvar := 1
}
else
{
varvarvar := 0
}
Return


Button1:
if (varvarvar = 1)
{
MsgBox, 262192, Invalid box!, Select a valid box UTC is not a valid box!!!`nUTC is used to check timezones only!
Return
}
GuiControl, Text, Static2, Please wait...
mkmkmk := 0
FileDelete, countries.txt
Gui, Submit, NoHide
if (Checkbox1 = 1)
{
mkmkmk++
;MsgBox, yes
funcOceania()
}

if (Checkbox2 = 1)
{
mkmkmk++
;MsgBox, yes
funcEurope()
}

if (Checkbox3 = 1)
{
mkmkmk++
;MsgBox, yes
funcAsia()
}


if (Checkbox4 = 1)
{
mkmkmk++
;MsgBox, yes
funcAfrica()
}


if (Checkbox5 = 1)
{
mkmkmk++
;MsgBox, yes
funcSouthAmerica()
}


if (Checkbox6 = 1)
{
mkmkmk++
;MsgBox, yes
funcNorthAmericaCentral()
}


if (Checkbox7 = 1)
{
mkmkmk++
;MsgBox, yes
funcCountriesWithMultipleTimeZones()
}


if (Checkbox8 = 1)
{
mkmkmk++
;MsgBox, yes
funcFrance()
}


if (Checkbox9 = 1)
{
mkmkmk++
;MsgBox, yes
funcRussia()
}


if (Checkbox10 = 1)
{
mkmkmk++
;MsgBox, yes
funcUnitedStates()
}

if (Checkbox11 = 1)
{
mkmkmk++
;MsgBox, yes
funcAustralia()
}

if (Checkbox12 = 1)
{
mkmkmk++
;MsgBox, yes
funcAntarctica()
}

if (Checkbox13 = 1)
{
mkmkmk++
;MsgBox, yes
funcUnitedKingdom()
}

if (Checkbox14 = 1)
{
mkmkmk++
;MsgBox, yes
funcCanada()
}

if (Checkbox15 = 1)
{
mkmkmk++
;MsgBox, yes
funcDenmark()
}

if (Checkbox16 = 1)
{
mkmkmk++
;MsgBox, yes
funcNewZealand()
}

if (Checkbox17 = 1)
{
mkmkmk++
;MsgBox, yes
funcMoreWhitMultipleTimeZonesPart1()
}

if (Checkbox18 = 1)
{
mkmkmk++
;MsgBox, yes
funcMoreWhitMultipleTimeZonesPart2()
}

if (Checkbox19 = 1)
{
mkmkmk++
;MsgBox, yes
funcMiddleEast()
}

if (Checkbox20 = 1)
{
mkmkmk++
;MsgBox, yes
funcBalkans()
}

if (Checkbox21 = 1)
{
mkmkmk++
;MsgBox, yes
funcAllCountriesAndTerritories()
}

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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := nnnjj
MIN := 1
MAX := nnnjj
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


nnn := 1
FileDelete, countries.txt
Loop, %nnnjj%
{
hello := hello%nnn%
cvcv1 := vccc%hello%
FileAppend,
(
%cvcv1%|
), countries.txt
nnn++
}


If (mkmkmk >= 1)
{
Run Learn Timezones BETA 1.0.ahk
ExitApp
}
Else if (varvarvar = 1)
{
GuiControl, Text, Static2,
MsgBox, 262192, Invalid box!, Select a valid box UTC is not a valid box!!!`nUTC is used to check timezones only!
}
else
{
GuiControl, Text, Static2,
MsgBox, 262192, You haven't selected a box!, Select a box before you start!!!
}
Return

Button2:
GuiControl, Text, Static2, Please wait...
mkmkmk := 0
FileDelete, countries.txt
Gui, Submit, NoHide
if (Checkbox1 = 1)
{
mkmkmk++
;MsgBox, yes
func2Oceania()
}

if (Checkbox2 = 1)
{
mkmkmk++
;MsgBox, yes
func2Europe()
}

if (Checkbox3 = 1)
{
mkmkmk++
;MsgBox, yes
func2Asia()
}


if (Checkbox4 = 1)
{
mkmkmk++
;MsgBox, yes
func2Africa()
}


if (Checkbox5 = 1)
{
mkmkmk++
;MsgBox, yes
func2SouthAmerica()
}


if (Checkbox6 = 1)
{
mkmkmk++
;MsgBox, yes
func2NorthAmericaCentral()
}


if (Checkbox7 = 1)
{
GuiControl, Text, Static2,
MsgBox, 262160, ERROR, You can't choose this one!!!
Return
}


if (Checkbox8 = 1)
{
mkmkmk++
;MsgBox, yes
func2France()
}


if (Checkbox9 = 1)
{
mkmkmk++
;MsgBox, yes
func2Russia()
}


if (Checkbox10 = 1)
{
mkmkmk++
;MsgBox, yes
func2UnitedStates()
}

if (Checkbox11 = 1)
{
mkmkmk++
;MsgBox, yes
func2Australia()
}

if (Checkbox12 = 1)
{
mkmkmk++
;MsgBox, yes
func2Antarctica()
}

if (Checkbox13 = 1)
{
mkmkmk++
;MsgBox, yes
func2UnitedKingdom()
}

if (Checkbox14 = 1)
{
mkmkmk++
;MsgBox, yes
func2Canada()
}

if (Checkbox15 = 1)
{
mkmkmk++
;MsgBox, yes
func2Denmark()
}

if (Checkbox16 = 1)
{
mkmkmk++
;MsgBox, yes
func2NewZealand()
}

if (Checkbox17 = 1)
{
mkmkmk++
;MsgBox, yes
func2MoreWhitMultipleTimeZonesPart1()
}

if (Checkbox18 = 1)
{
mkmkmk++
;MsgBox, yes
func2MoreWhitMultipleTimeZonesPart2()
}

if (Checkbox19 = 1)
{
mkmkmk++
;MsgBox, yes
func2MiddleEast()
}

if (Checkbox20 = 1)
{
mkmkmk++
;MsgBox, yes
func2Balkans()
}

if (Checkbox22 = 1)
{
mkmkmk++
;MsgBox, yes
funcUTC()
}

if (Checkbox21 = 1)
{
GuiControl, Text, Static2,
MsgBox, 262160, ERROR, You can't choose this one!!!
Return
}

if (mkmkmk > 1)
{
GuiControl, Text, Static2,
MsgBox, 262192, , Select only 1 box before you start!!!
Return
}

;~ FileRead, OutputVar, countries.txt

;~ str := OutputVar

;~ nnn := 0

;~ Loop, Parse, str, `|
;~ {
    ;~ nnn++
    ;~ vccc%nnn% := A_LoopField
;~ }
;~ nnnjj := nnn
;~ nnnjj := nnnjj - 1
;~ ;MsgBox, %nnnjj%



;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ N := nnnjj
;~ MIN := 1
;~ MAX := nnnjj
;~ name = hello
;~ Loop %N%
;~ {
  ;~ i := A_Index
  ;~ loop
  ;~ {
    ;~ Random R, %MIN%, %MAX%     ; R = random number
    ;~ j := Index_%R%             ; get value from Indexes
    ;~ If j is number
      ;~ If j between 1 and % i - 1
        ;~ If (R_%j% = R)
          ;~ continue             ; repetition found, try again
    ;~ Index_%R% := i             ; store index
    ;~ R_%i% := R                 ; store in R_1, R_2...
    ;~ break                      ; different number
  ;~ }
;~ }
;~ nnn := 1
;~ Loop, %N%
;~ {
;~ %name%%nnn% := R_%nnn%
;~ nnn++
;~ }
;~ ;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;~ nnn := 1
;~ FileDelete, countries.txt
;~ Loop, %nnnjj%
;~ {
;~ hello := hello%nnn%
;~ cvcv1 := vccc%hello%
;~ FileAppend,
;~ (
;~ %cvcv1%|
;~ ), countries.txt
;~ nnn++
;~ }


If (mkmkmk = 1) or (jjkk = 1)
{
Run Choose Timezone.ahk
ExitApp
}
else
{
GuiControl, Text, Static2,
MsgBox, 262192, You haven't selected a box!, Select a box before you start!!!
}
Return



GuiClose:
ExitApp
Return







funcOceania()
{
global
numero := 13
;Oceania
id1 := "australia/canberra"
id2 := "fiji/suva"
id3 := "kiribati/tarawa"
id4 := "marshall-islands/majuro"
id5 := "micronesia/palikir"
id6 := "nauru/yaren"
id7 := "new-zealand/wellington"
id8 := "palau/melekeok"
id9 := "papua-new-guinea/port-moresby"
id10 := "samoa/apia"
id11 := "solomon-islands/honiara"
id12 := "tuvalu/funafuti"
id13 := "vanuatu/port-vila"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}


funcEurope()
{
global
numero := 45
;Europe
id1 := "albania/tirana"
id2 := "andorra/andorra-la-vella"
id3 := "austria/vienna"
id4 := "belarus/minsk"
id5 := "belgium/brussels"
id6 := "bosnia-herzegovina/sarajevo"
id7 := "bulgaria/sofia"
id8 := "croatia/zagreb"
id9 := "cyprus/nicosia"
id10 := "czech-republic/prague"
id11 := "denmark/copenhagen"
id12 := "estonia/tallinn"
id13 := "finland/helsinki"
id14 := "france/paris"
id15 := "germany/berlin"
id16 := "greece/athens"
id17 := "hungary/budapest"
id18 := "iceland/reykjavik"
id19 := "ireland/dublin"
id20 := "italy/rome"
id21 := "kosovo/pristina"
id22 := "latvia/riga"
id23 := "liechtenstein/vaduz"
id24 := "lithuania/vilnius"
id25 := "luxembourg/luxembourg"
id26 := "republic-of-macedonia/skopje"
id27 := "malta/valletta"
id28 := "moldova/chisinau"
id29 := "monaco/monaco"
id30 := "montenegro/podgorica"
id31 := "netherlands/amsterdam"
id32 := "norway/oslo"
id33 := "poland/warsaw"
id34 := "portugal/lisbon"
id35 := "romania/bucharest"
id36 := "san-marino/san-marino"
id37 := "serbia/belgrade"
id38 := "slovakia/bratislava"
id39 := "slovenia/ljubljana"
id40 := "spain/madrid"
id41 := "sweden/stockholm"
id42 := "switzerland/bern"
id43 := "ukraine/kyiv"
id44 := "uK/london"
id45 := "vatican-city-state/vatican-city"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}


funcAsia()
{
global
numero := 49
;Asia
id1 := "afghanistan/kabul"
id2 := "armenia/yerevan"
id3 := "azerbaijan/baku"
id4 := "bahrain/manama"
id5 := "bangladesh/dhaka"
id6 := "bhutan/thimphu"
id7 := "brunei/bandar-seri-begawan"
id8 := "myanmar/naypyidaw"
id9 := "cambodia/phnom-penh"
id10 := "china/beijing"
id11 := "timor-leste/dili"
id12 := "georgia/tbilisi"
id13 := "india/new-delhi"
id14 := "indonesia/jakarta"
id15 := "iran/tehran"
id16 := "iraq/baghdad"
id17 := "israel/jerusalem"
id18 := "japan/tokyo"
id19 := "jordan/amman"
id20 := "kazakstan/astana"
id21 := "yemen/sana"
id22 := "south-korea/seoul"
id23 := "kuwait/kuwait-city"
id24 := "kyrgyzstan/bishkek"
id25 := "laos/vientiane"
id26 := "lebanon/beirut"
id27 := "malaysia/kuala-lumpur"
id28 := "maldives/male"
id29 := "mongolia/ulaanbaatar"
id30 := "nepal/kathmandu"
id31 := "north-korea/pyongyang"
id32 := "oman/muscat"
id33 := "pakistan/islamabad"
id34 := "philippines/manila"
id35 := "qatar/doha"
id36 := "russia/moscow"
id37 := "saudi-arabia/riyadh"
id38 := "singapore/singapore"
id39 := "sri-lanka/colombo"
id40 := "syria/damascus"
id41 := "taiwan/taipei"
id42 := "tajikistan/dushanbe"
id43 := "thailand/bangkok"
id44 := "vietnam/hanoi"
id45 := "turkey/ankara"
id46 := "turkmenistan/ashgabat"
id47 := "united-arab-emirates/abu-dhabi"
id48 := "uzbekistan/tashkent"
id49 := "palestine"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}


funcAfrica()
{
global
numero := 54
;Africa
id1 := "algeria/algiers"
id2 := "angola/luanda"
id3 := "benin/porto-novo"
id4 := "botswana/gaborone"
id5 := "burkina-faso/ouagadougou"
id6 := "burundi/bujumbura"
id7 := "cameroon/yaounde"
id8 := "cape-verde/praia"
id9 := "central-african-republic/bangui"
id10 := "chad/ndjamena"
id11 := "comoros/moroni"
id12 := "congo/brazzaville"
id13 := "congo-demrep/kinshasa"
id14 := "cote-divoire/yamoussoukro"
id15 := "djibouti/djibouti"
id16 := "egypt/cairo"
id17 := "equatorial-guinea/malabo"
id18 := "eritrea/asmara"
id19 := "ethiopia/addis-ababa"
id20 := "gabon/libreville"
id21 := "gambia/banjul"
id22 := "ghana/accra"
id23 := "guinea/conakry"
id24 := "guinea-bissau/bissau"
id25 := "kenya/nairobi"
id26 := "lesotho/maseru"
id27 := "liberia/monrovia"
id28 := "libya/tripoli"
id29 := "madagascar/antananarivo"
id30 := "malawi/lilongwe"
id31 := "mali/bamako"
id32 := "mauritania/nouakchott"
id33 := "mauritius/port-louis"
id34 := "morocco/rabat"
id35 := "mozambique/maputo"
id36 := "zambia/lusaka"
id37 := "namibia/windhoek"
id38 := "niger/niamey"
id39 := "nigeria/abuja"
id40 := "rwanda/kigali"
id41 := "senegal/dakar"
id42 := "seychelles/victoria"
id43 := "sierra-leone/freetown"
id44 := "somalia/mogadishu"
id45 := "south-africa/pretoria"
id46 := "south-sudan/juba"
id47 := "sudan/khartoum"
id48 := "zimbabwe/harare"
id49 := "tanzania/dodoma"
id50 := "togo/lome"
id51 := "tonga/nuku-alofa"
id52 := "tunisia/tunis"
id53 := "uganda/kampala"
id54 := "western-sahara/el-aaiun"



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}


funcSouthAmerica()
{
global
numero := 13
;South America
id1 := "argentina/buenos-aires"
id2 := "bolivia/la-paz"
id3 := "brazil/brasilia"
id4 := "chile/santiago"
id5 := "colombia/bogota"
id6 := "ecuador/quito"
id7 := "paraguay/asuncion"
id8 := "peru/lima"
id9 := "suriname/paramaribo"
id10 := "uruguay/montevideo"
id11 := "venezuela/caracas"
id12 := "french-guiana"
id13 := "guyana/georgetown"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}


funcNorthAmericaCentral()
{
global
numero := 24
;North America/central
id1 := "antigua-and-barbuda/saint-johns"
id2 := "bahamas/nassau"
id3 := "barbados/bridgetown"
id4 := "belize/belmopan"
id5 := "canada/ottawa"
id6 := "costa-rica/san-jose"
id7 := "cuba/havana"
id8 := "dominica/roseau"
id9 := "dominican-republic/santo-domingo"
id10 := "el-salvador/san-salvador"
id11 := "grenada/saint-georges"
id12 := "guatemala/guatemala"
id13 := "haiti/port-au-prince"
id14 := "honduras/tegucigalpa"
id15 := "jamaica/kingston"
id16 := "mexico/mexico-city"
id17 := "nicaragua/managua"
id18 := "panama/panama"
id19 := "saint-kitts-and-nevis/basseterre"
id20 := "saint-lucia/castries"
id21 := "saint-vincent-and-grenadines/kingstown"
id22 := "sao-tome-and-principe/sao-tome"
id23 := "trinidad-and-tobago/port-of-spain"
id24 := "usa/washington-dc"



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}


funcCountriesWithMultipleTimeZones()
{
global
numero := 114
;Extra - 114 timezones
id1 := "@4033681"
id2 := "france/marquesas-islands"
id3 := "french-polynesia/gambier-islands"
id4 := "clipperton-island"
id5 := "guadeloupe"
id6 := "french-guiana"
id7 := "france"
id8 := "mayotte"
id9 := "reunion"
id10 := "@1546556"
id11 := "new-caledonia"
id12 := "wallis-and-futuna"
id13 := "russia/kaliningrad-oblast"
id14 := "russia/moscow"
id15 := "@580491"
id16 := "russia/yekaterinburg"
id17 := "@1496152"
id18 := "russia/novosibirsk-oblast"
id19 := "russia/irkutsk-oblast"
id20 := "russia/yakutsk"
id21 := "russia/vladivostok"
id22 := "russia/magadan-oblast"
id23 := "russia/kamchatka"
id24 := "usa/baker-island"
id25 := "american-samoa"
id26 := "usa/hawaii"
id27 := "usa/alaska"
id28 := "usa/california"
id29 := "usa/salt-lake-city"
id30 := "usa/illinois"
id31 := "usa/new-york"
id32 := "us-virgin"
id33 := "guam"
id34 := "usa/wake-island"
id35 := "@1547314"
id36 := "cocos"
id37 := "christmas"
id38 := "australia/perth"
id39 := "australia/eucla"
id40 := "australia/darwin"
id41 := "australia/queensland"
id42 := "australia/adelaide"
id43 := "australia/lord-howe"
id44 := "norfolk-island"
id45 := "pitcairn"
id46 := "cayman-islands"
id47 := "anguilla"
id48 := "falkland"
id49 := "south-georgia-sandwich"
id50 := "isle-of-man"
id51 := "gibraltar"
id52 := "@8306813"
id53 := "biot"
id54 := "canada/victoria"
id55 := "canada/alberta"
id56 := "canada/manitoba"
id57 := "canada/ontario"
id58 := "canada/nova-scotia"
id59 := "canada/st-johns"
id60 := "antarctica/palmer-station"
id61 := "antarctica/troll"
id62 := "@6625247"
id63 := "antarctica/mawson"
id64 := "antarctica/vostok-station"
id65 := "antarctica/davis"
id66 := "antarctica/dumont-d-urville-station"
id67 := "antarctica/casey"
id68 := "antarctica/mcmurdo"
id69 := "greenland/thule-air-base"
id70 := "greenland/nuuk"
id71 := "greenland/ittoqqortoormiit"
id72 := "faroe"
id73 := "denmark"
id74 := "niue"
id75 := "cook-islands"
id76 := "new-zealand"
id77 := "new-zealand/chatham-islands-territory"
id78 := "tokelau"
id79 := "brazil/rio-branco"
id80 := "brazil/manaus"
id81 := "brazil/sao-paulo"
id82 := "brazil/fernando-de-noronha"
id83 := "mexico/baja-california"
id84 := "mexico/mexico-city"
id85 := "mexico/reynosa"
id86 := "chile/easter-island"
id87 := "chile"
id88 := "chile/punta-arenas"
id89 := "indonesia/jakarta"
id90 := "indonesia/makassar"
id91 := "indonesia/manokwari"
id92 := "kiribati/tarawa"
id93 := "kiribati/kanton-island"
id94 := "kiribati/kiritimati"
id95 := "congo-demrep/kinshasa"
id96 := "congo-demrep/lubumbashi"
id97 := "ecuador/galapagos-islands"
id98 := "ecuador/quito"
id99 := "micronesia/weno"
id100 := "micronesia/lelu"
id101 := "kazakstan/aqtobe"
id102 := "kazakstan/almaty"
id103 := "caribbean-netherlands"
id104 := "netherlands/amsterdam"
id105 := "mongolia/hovd"
id106 := "mongolia/ulaanbaatar"
id107 := "papua-new-guinea/port-moresby"
id108 := "papua-new-guinea/arawa"
id109 := "portugal/ponta-delgada-azores"
id110 := "portugal/lisbon"
id111 := "south-africa"
id112 := "south-africa/marion-island-prince-edward-islands"
id113 := "spain/canary-islands"
id114 := "spain/madrid"



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}


funcFrance()
{
global
numero := 12
;France
id1 := "@4033681"
id2 := "france/marquesas-islands"
id3 := "french-polynesia/gambier-islands"
id4 := "clipperton-island"
id5 := "guadeloupe"
id6 := "french-guiana"
id7 := "france"
id8 := "mayotte"
id9 := "reunion"
id10 := "@1546556"
id11 := "new-caledonia"
id12 := "wallis-and-futuna"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}


funcRussia()
{
global
numero := 11
;Russia
id1 := "russia/kaliningrad-oblast"
id2 := "russia/moscow"
id3 := "@580491"
id4 := "russia/yekaterinburg"
id5 := "@1496152"
id6 := "russia/novosibirsk-oblast"
id7 := "russia/irkutsk-oblast"
id8 := "russia/yakutsk"
id9 := "russia/vladivostok"
id10 := "russia/magadan-oblast"
id11 := "russia/kamchatka"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}


funcUnitedStates()
{
global
numero := 11
;United States
id1 := "usa/baker-island"
id2 := "american-samoa"
id3 := "usa/hawaii"
id4 := "usa/alaska"
id5 := "usa/california"
id6 := "usa/salt-lake-city"
id7 := "usa/illinois"
id8 := "usa/new-york"
id9 := "us-virgin"
id10 := "guam"
id11 := "usa/wake-island"



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}

funcAustralia()
{
global
numero := 10
;Australia
id1 := "@1547314"
id2 := "cocos"
id3 := "christmas"
id4 := "australia/perth"
id5 := "australia/eucla"
id6 := "australia/darwin"
id7 := "australia/queensland"
id8 := "australia/adelaide"
id9 := "australia/lord-howe"
id10 := "norfolk-island"



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}

funcAntarctica()
{
global
numero := 9
;Antarctica
id1 := "antarctica/palmer-station"
id2 := "antarctica/troll"
id3 := "@6625247"
id4 := "antarctica/mawson"
id5 := "antarctica/vostok-station"
id6 := "antarctica/davis"
id7 := "antarctica/dumont-d-urville-station"
id8 := "antarctica/casey"
id9 := "antarctica/mcmurdo"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}

funcUnitedKingdom()
{
global
numero := 9
;United Kingdom
id1 := "pitcairn"
id2 := "cayman-islands"
id3 := "anguilla"
id4 := "falkland"
id5 := "south-georgia-sandwich"
id6 := "isle-of-man"
id7 := "gibraltar"
id8 := "@8306813"
id9 := "biot"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}

funcCanada()
{
global
numero := 6
;Canada
id1 := "canada/victoria"
id2 := "canada/alberta"
id3 := "canada/manitoba"
id4 := "canada/ontario"
id5 := "canada/nova-scotia"
id6 := "canada/st-johns"



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}

funcDenmark()
{
global
numero := 5
;Denmark
id1 := "greenland/thule-air-base"
id2 := "greenland/nuuk"
id3 := "greenland/ittoqqortoormiit"
id4 := "faroe"
id5 := "denmark"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}

funcNewZealand()
{
global
numero := 5
;New Zealand
id1 := "niue"
id2 := "cook-islands"
id3 := "new-zealand"
id4 := "new-zealand/chatham-islands-territory"
id5 := "tokelau"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}

funcMoreWhitMultipleTimeZonesPart1()
{
global
numero := 16
;More Whit Multiple Time Zones Part 1
id1 := "brazil/rio-branco"
id2 := "brazil/manaus"
id3 := "brazil/sao-paulo"
id4 := "brazil/fernando-de-noronha"
id5 := "mexico/baja-california"
id6 := "mexico/mexico-city"
id7 := "mexico/reynosa"
id8 := "chile/easter-island"
id9 := "chile"
id10 := "chile/punta-arenas"
id11 := "indonesia/jakarta"
id12 := "indonesia/makassar"
id13 := "indonesia/manokwari"
id14 := "kiribati/tarawa"
id15 := "kiribati/kanton-island"
id16 := "kiribati/kiritimati"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}

funcMoreWhitMultipleTimeZonesPart2()
{
global
numero := 20
;More Whit Multiple Time Zones Part 2
id1 := "congo-demrep/kinshasa"
id2 := "congo-demrep/lubumbashi"
id3 := "ecuador/galapagos-islands"
id4 := "ecuador/quito"
id5 := "micronesia/weno"
id6 := "micronesia/lelu"
id7 := "kazakstan/aqtobe"
id8 := "kazakstan/almaty"
id9 := "caribbean-netherlands"
id10 := "netherlands/amsterdam"
id11 := "mongolia/hovd"
id12 := "mongolia/ulaanbaatar"
id13 := "papua-new-guinea/port-moresby"
id14 := "papua-new-guinea/arawa"
id15 := "portugal/ponta-delgada-azores"
id16 := "portugal/lisbon"
id17 := "south-africa"
id18 := "south-africa/marion-island-prince-edward-islands"
id19 := "spain/canary-islands"
id20 := "spain/madrid"



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}

funcMiddleEast()
{
global
numero := 18
;Middle East
id1 := "biot"
id2 := "bahrain/manama"
id3 := "cyprus/nicosia"
id4 := "egypt/cairo"
id5 := "iran/tehran"
id6 := "iraq/baghdad"
id7 := "israel/jerusalem"
id8 := "jordan/amman"
id9 := "kuwait/kuwait-city"
id10 := "lebanon/beirut"
id11 := "oman/muscat"
id12 := "palestine"
id13 := "qatar/doha"
id14 := "saudi-arabia/riyadh"
id15 := "syria/damascus"
id16 := "turkey/ankara"
id17 := "united-arab-emirates/abu-dhabi"
id18 := "yemen/sana"



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}



funcBalkans()
{
global
numero := 13
;All Countries And Territories
id1 := "albania/tirana"
id2 := "bosnia-herzegovina/sarajevo"
id3 := "bulgaria/sofia"
id4 := "kosovo/pristina"
id5 := "montenegro/podgorica"
id6 := "republic-of-macedonia/skopje"
id7 := "greece/athens"
id8 := "serbia/belgrade"
id9 := "croatia/zagreb"
id10 := "slovenia/ljubljana"
id11 := "romania/bucharest"
id12 := "turkey/ankara"
id13 := "italy/rome"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}


funcAllCountriesAndTerritories()
{
global
numero := 291
;All Countries And Territories
id1 := "afghanistan/kabul"
id2 := "albania/tirana"
id3 := "algeria/algiers"
id4 := "andorra/andorra-la-vella"
id5 := "angola/luanda"
id6 := "antigua-and-barbuda/saint-johns"
id7 := "argentina/buenos-aires"
id8 := "armenia/yerevan"
id9 := "australia/canberra"
id10 := "austria/vienna"
id11 := "azerbaijan/baku"
id12 := "bahamas/nassau"
id13 := "bahrain/manama"
id14 := "bangladesh/dhaka"
id15 := "barbados/bridgetown"
id16 := "belarus/minsk"
id17 := "belgium/brussels"
id18 := "belize/belmopan"
id19 := "benin/porto-novo"
id20 := "bhutan/thimphu"
id21 := "bolivia/la-paz"
id22 := "bosnia-herzegovina/sarajevo"
id23 := "botswana/gaborone"
id24 := "brazil/brasilia"
id25 := "brunei/bandar-seri-begawan"
id26 := "bulgaria/sofia"
id27 := "burkina-faso/ouagadougou"
id28 := "myanmar/naypyidaw"
id29 := "burundi/bujumbura"
id30 := "cambodia/phnom-penh"
id31 := "cameroon/yaounde"
id32 := "canada/ottawa"
id33 := "cape-verde/praia"
id34 := "central-african-republic/bangui"
id35 := "chad/ndjamena"
id36 := "chile/santiago"
id37 := "china/beijing"
id38 := "colombia/bogota"
id39 := "comoros/moroni"
id40 := "congo/brazzaville"
id41 := "costa-rica/san-jose"
id42 := "cote-divoire/yamoussoukro"
id43 := "croatia/zagreb"
id44 := "cuba/havana"
id45 := "cyprus/nicosia"
id46 := "czech-republic/prague"
id47 := "denmark/copenhagen"
id48 := "djibouti/djibouti"
id49 := "dominica/roseau"
id50 := "dominican-republic/santo-domingo"
id51 := "timor-leste/dili"
id52 := "ecuador/quito"
id53 := "egypt/cairo"
id54 := "el-salvador/san-salvador"
id55 := "equatorial-guinea/malabo"
id56 := "eritrea/asmara"
id57 := "estonia/tallinn"
id58 := "ethiopia/addis-ababa"
id59 := "fiji/suva"
id60 := "finland/helsinki"
id61 := "france/paris"
id62 := "gabon/libreville"
id63 := "gambia/banjul"
id64 := "georgia/tbilisi"
id65 := "germany/berlin"
id66 := "ghana/accra"
id67 := "greece/athens"
id68 := "grenada/saint-georges"
id69 := "guatemala/guatemala"
id70 := "guinea/conakry"
id71 := "guinea-bissau/bissau"
id72 := "guyana/georgetown"
id73 := "haiti/port-au-prince"
id74 := "honduras/tegucigalpa"
id75 := "hungary/budapest"
id76 := "iceland/reykjavik"
id77 := "india/new-delhi"
id78 := "indonesia/jakarta"
id79 := "iran/tehran"
id80 := "iraq/baghdad"
id81 := "ireland/dublin"
id82 := "israel/jerusalem"
id83 := "italy/rome"
id84 := "jamaica/kingston"
id85 := "japan/tokyo"
id86 := "jordan/amman"
id87 := "palestine"
id88 := "kazakstan/astana"
id89 := "kenya/nairobi"
id90 := "kiribati/tarawa"
id91 := "yemen/sana"
id92 := "south-korea/seoul"
id93 := "kosovo/pristina"
id94 := "kuwait/kuwait-city"
id95 := "kyrgyzstan/bishkek"
id96 := "laos/vientiane"
id97 := "latvia/riga"
id98 := "lebanon/beirut"
id99 := "lesotho/maseru"
id100 := "liberia/monrovia"
id101 := "libya/tripoli"
id102 := "liechtenstein/vaduz"
id103 := "lithuania/vilnius"
id104 := "luxembourg/luxembourg"
id105 := "republic-of-macedonia/skopje"
id106 := "madagascar/antananarivo"
id107 := "malawi/lilongwe"
id108 := "malaysia/kuala-lumpur"
id109 := "maldives/male"
id110 := "mali/bamako"
id111 := "malta/valletta"
id112 := "marshall-islands/majuro"
id113 := "mauritania/nouakchott"
id114 := "mauritius/port-louis"
id115 := "mexico/mexico-city"
id116 := "micronesia/palikir"
id117 := "moldova/chisinau"
id118 := "monaco/monaco"
id119 := "mongolia/ulaanbaatar"
id120 := "montenegro/podgorica"
id121 := "morocco/rabat"
id122 := "mozambique/maputo"
id123 := "zambia/lusaka"
id124 := "namibia/windhoek"
id125 := "nauru/yaren"
id126 := "nepal/kathmandu"
id127 := "netherlands/amsterdam"
id128 := "new-zealand/wellington"
id129 := "nicaragua/managua"
id130 := "niger/niamey"
id131 := "nigeria/abuja"
id132 := "north-korea/pyongyang"
id133 := "norway/oslo"
id134 := "oman/muscat"
id135 := "pakistan/islamabad"
id136 := "palau/melekeok"
id137 := "panama/panama"
id138 := "papua-new-guinea/port-moresby"
id139 := "paraguay/asuncion"
id140 := "peru/lima"
id141 := "philippines/manila"
id142 := "poland/warsaw"
id143 := "portugal/lisbon"
id144 := "qatar/doha"
id145 := "romania/bucharest"
id146 := "russia/moscow"
id147 := "rwanda/kigali"
id148 := "saint-kitts-and-nevis/basseterre"
id149 := "saint-lucia/castries"
id150 := "saint-vincent-and-grenadines/kingstown"
id151 := "samoa/apia"
id152 := "san-marino/san-marino"
id153 := "sao-tome-and-principe/sao-tome"
id154 := "saudi-arabia/riyadh"
id155 := "senegal/dakar"
id156 := "serbia/belgrade"
id157 := "seychelles/victoria"
id158 := "sierra-leone/freetown"
id159 := "singapore/singapore"
id160 := "slovakia/bratislava"
id161 := "slovenia/ljubljana"
id162 := "solomon-islands/honiara"
id163 := "somalia/mogadishu"
id164 := "south-africa/pretoria"
id165 := "south-sudan/juba"
id166 := "spain/madrid"
id167 := "sri-lanka/colombo"
id168 := "sudan/khartoum"
id169 := "suriname/paramaribo"
id170 := "zimbabwe/harare"
id171 := "sweden/stockholm"
id172 := "switzerland/bern"
id173 := "syria/damascus"
id174 := "taiwan/taipei"
id175 := "tajikistan/dushanbe"
id176 := "tanzania/dodoma"
id177 := "thailand/bangkok"
id178 := "vietnam/hanoi"
id179 := "togo/lome"
id180 := "tonga/nuku-alofa"
id181 := "trinidad-and-tobago/port-of-spain"
id182 := "tunisia/tunis"
id183 := "turkey/ankara"
id184 := "turkmenistan/ashgabat"
id185 := "tuvalu/funafuti"
id186 := "uganda/kampala"
id187 := "ukraine/kyiv"
id188 := "united-arab-emirates/abu-dhabi"
id189 := "uK/london"
id190 := "usa/washington-dc"
id191 := "uruguay/montevideo"
id192 := "uzbekistan/tashkent"
id193 := "vanuatu/port-vila"
id194 := "vatican-city-state/vatican-city"
id195 := "venezuela/caracas"
id196 := "western-sahara/el-aaiun"
id197 := "@4033681"
id198 := "france/marquesas-islands"
id199 := "french-polynesia/gambier-islands"
id200 := "clipperton-island"
id201 := "guadeloupe"
id202 := "french-guiana"
id203 := "mayotte"
id204 := "reunion"
id205 := "@1546556"
id206 := "new-caledonia"
id207 := "wallis-and-futuna"
id208 := "russia/kaliningrad-oblast"
id209 := "@580491"
id210 := "russia/yekaterinburg"
id211 := "@1496152"
id212 := "russia/novosibirsk-oblast"
id213 := "russia/irkutsk-oblast"
id214 := "russia/yakutsk"
id215 := "russia/vladivostok"
id216 := "russia/magadan-oblast"
id217 := "russia/kamchatka"
id218 := "usa/baker-island"
id219 := "american-samoa"
id220 := "usa/hawaii"
id221 := "usa/alaska"
id222 := "usa/california"
id223 := "usa/salt-lake-city"
id224 := "usa/illinois"
id225 := "usa/new-york"
id226 := "us-virgin"
id227 := "guam"
id228 := "usa/wake-island"
id229 := "@1547314"
id230 := "cocos"
id231 := "christmas"
id232 := "australia/perth"
id233 := "australia/eucla"
id234 := "australia/darwin"
id235 := "australia/queensland"
id236 := "australia/adelaide"
id237 := "australia/lord-howe"
id238 := "norfolk-island"
id239 := "pitcairn"
id240 := "cayman-islands"
id241 := "anguilla"
id242 := "falkland"
id243 := "south-georgia-sandwich"
id244 := "isle-of-man"
id245 := "gibraltar"
id246 := "@8306813"
id247 := "biot"
id248 := "canada/victoria"
id249 := "canada/alberta"
id250 := "canada/manitoba"
id251 := "canada/nova-scotia"
id252 := "canada/st-johns"
id253 := "antarctica/palmer-station"
id254 := "antarctica/troll"
id255 := "@6625247"
id256 := "antarctica/mawson"
id257 := "antarctica/vostok-station"
id258 := "antarctica/davis"
id259 := "antarctica/dumont-d-urville-station"
id260 := "antarctica/casey"
id261 := "antarctica/mcmurdo"
id262 := "greenland/thule-air-base"
id263 := "greenland/nuuk"
id264 := "greenland/ittoqqortoormiit"
id265 := "faroe"
id266 := "niue"
id267 := "cook-islands"
id268 := "new-zealand/chatham-islands-territory"
id269 := "tokelau"
id270 := "brazil/rio-branco"
id271 := "brazil/manaus"
id272 := "brazil/fernando-de-noronha"
id273 := "mexico/baja-california"
id274 := "mexico/reynosa"
id275 := "chile/easter-island"
id276 := "chile/punta-arenas"
id277 := "indonesia/makassar"
id278 := "indonesia/manokwari"
id279 := "kiribati/kanton-island"
id280 := "kiribati/kiritimati"
id281 := "congo-demrep/lubumbashi"
id282 := "ecuador/galapagos-islands"
id283 := "micronesia/weno"
id284 := "micronesia/lelu"
id285 := "kazakstan/aqtobe"
id286 := "caribbean-netherlands"
id287 := "mongolia/hovd"
id288 := "papua-new-guinea/arawa"
id289 := "portugal/ponta-delgada-azores"
id290 := "south-africa/marion-island-prince-edward-islands"
id291 := "spain/canary-islands"




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
N := numero
MIN := 1
MAX := numero
name = hello
Loop %N%
{
  i := A_Index
  loop
  {
    Random R, %MIN%, %MAX%     ; R = random number
    j := Index_%R%             ; get value from Indexes
    If j is number
      If j between 1 and % i - 1
        If (R_%j% = R)
          continue             ; repetition found, try again
    Index_%R% := i             ; store index
    R_%i% := R                 ; store in R_1, R_2...
    break                      ; different number
  }
}
nnn := 1
Loop, %N%
{
%name%%nnn% := R_%nnn%
nnn++
}
;MsgBox, %hello1% %hello2% %hello3% %hello4% %hello5% %hello6% %hello7% %hello8% %hello9% %hello10%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 1
Loop, %numero%
{
hello := hello%nnn%
yes%nnn% := id%hello%
nnn++
}
;MsgBox, %yes1%`n%yes2%`n%yes3%`n%yes4%`n%yes5%`n%yes6%`n%yes7%`n%yes8%`n%yes9%`n%yes10%`n%yes11%`n%yes12%`n%yes13%
nnn := 1
Loop, %numero%
{
country := yes%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




func2Oceania()
{
global
numero := 13
;Oceania
id1 := "australia/canberra"
id2 := "fiji/suva"
id3 := "Gilbert Islands - Kiribati"
id4 := "marshall-islands/majuro"
id5 := "micronesia/palikir"
id6 := "nauru/yaren"
id7 := "new-zealand/wellington"
id8 := "palau/melekeok"
id9 := "Most of the country - Capital Time - Port Moresby - Papua New Guinea"
id10 := "samoa/apia"
id11 := "solomon-islands/honiara"
id12 := "tuvalu/funafuti"
id13 := "vanuatu/port-vila"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;


func2Europe()
{
global
numero := 45
;Europe
id1 := "albania/tirana"
id2 := "andorra/andorra-la-vella"
id3 := "austria/vienna"
id4 := "belarus/minsk"
id5 := "belgium/brussels"
id6 := "bosnia-herzegovina/sarajevo"
id7 := "bulgaria/sofia"
id8 := "croatia/zagreb"
id9 := "cyprus/nicosia"
id10 := "czech-republic/prague"
id11 := "denmark/copenhagen"
id12 := "estonia/tallinn"
id13 := "finland/helsinki"
id14 := "france/paris"
id15 := "germany/berlin"
id16 := "greece/athens"
id17 := "hungary/budapest"
id18 := "iceland/reykjavik"
id19 := "ireland/dublin"
id20 := "italy/rome"
id21 := "kosovo/pristina"
id22 := "latvia/riga"
id23 := "liechtenstein/vaduz"
id24 := "lithuania/vilnius"
id25 := "luxembourg/luxembourg"
id26 := "republic-of-macedonia/skopje"
id27 := "malta/valletta"
id28 := "moldova/chisinau"
id29 := "monaco/monaco"
id30 := "montenegro/podgorica"
id31 := "Main territory of the Netherlands"
id32 := "norway/oslo"
id33 := "poland/warsaw"
id34 := "The main territory of Portugal"
id35 := "romania/bucharest"
id36 := "san-marino/san-marino"
id37 := "serbia/belgrade"
id38 := "slovakia/bratislava"
id39 := "slovenia/ljubljana"
id40 := "Main territory of Spain"
id41 := "sweden/stockholm"
id42 := "switzerland/bern"
id43 := "ukraine/kyiv"
id44 := "uK/london"
id45 := "vatican-city-state/vatican-city"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;


func2Asia()
{
global
numero := 49
;Asia
id1 := "afghanistan/kabul"
id2 := "armenia/yerevan"
id3 := "azerbaijan/baku"
id4 := "bahrain/manama"
id5 := "bangladesh/dhaka"
id6 := "bhutan/thimphu"
id7 := "brunei/bandar-seri-begawan"
id8 := "myanmar/naypyidaw"
id9 := "cambodia/phnom-penh"
id10 := "china/beijing"
id11 := "timor-leste/dili"
id12 := "georgia/tbilisi"
id13 := "india/new-delhi"
id14 := "(Western Indonesian Standard Time) - islands of Sumatra and Java - Indonesia"
id15 := "iran/tehran"
id16 := "iraq/baghdad"
id17 := "israel/jerusalem"
id18 := "japan/tokyo"
id19 := "jordan/amman"
id20 := "kazakstan/astana"
id21 := "yemen/sana"
id22 := "south-korea/seoul"
id23 := "kuwait/kuwait-city"
id24 := "kyrgyzstan/bishkek"
id25 := "laos/vientiane"
id26 := "lebanon/beirut"
id27 := "malaysia/kuala-lumpur"
id28 := "maldives/male"
id29 := "Most of the country - Mongolia"
id30 := "nepal/kathmandu"
id31 := "north-korea/pyongyang"
id32 := "oman/muscat"
id33 := "pakistan/islamabad"
id34 := "philippines/manila"
id35 := "qatar/doha"
id36 := "(Moscow Time) — Most of European Russia - Russia"
id37 := "saudi-arabia/riyadh"
id38 := "singapore/singapore"
id39 := "sri-lanka/colombo"
id40 := "syria/damascus"
id41 := "taiwan/taipei"
id42 := "tajikistan/dushanbe"
id43 := "thailand/bangkok"
id44 := "vietnam/hanoi"
id45 := "turkey/ankara"
id46 := "turkmenistan/ashgabat"
id47 := "united-arab-emirates/abu-dhabi"
id48 := "uzbekistan/tashkent"
id49 := "palestine"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;


func2Africa()
{
global
numero := 54
;Africa
id1 := "algeria/algiers"
id2 := "angola/luanda"
id3 := "benin/porto-novo"
id4 := "botswana/gaborone"
id5 := "burkina-faso/ouagadougou"
id6 := "burundi/bujumbura"
id7 := "cameroon/yaounde"
id8 := "cape-verde/praia"
id9 := "central-african-republic/bangui"
id10 := "chad/ndjamena"
id11 := "comoros/moroni"
id12 := "congo/brazzaville"
id13 := "Central Africa Time - Lubumbashi Time - Democratic Republic of the Congo"
id14 := "cote-divoire/yamoussoukro"
id15 := "djibouti/djibouti"
id16 := "egypt/cairo"
id17 := "equatorial-guinea/malabo"
id18 := "eritrea/asmara"
id19 := "ethiopia/addis-ababa"
id20 := "gabon/libreville"
id21 := "gambia/banjul"
id22 := "ghana/accra"
id23 := "guinea/conakry"
id24 := "guinea-bissau/bissau"
id25 := "kenya/nairobi"
id26 := "lesotho/maseru"
id27 := "liberia/monrovia"
id28 := "libya/tripoli"
id29 := "madagascar/antananarivo"
id30 := "malawi/lilongwe"
id31 := "mali/bamako"
id32 := "mauritania/nouakchott"
id33 := "mauritius/port-louis"
id34 := "morocco/rabat"
id35 := "mozambique/maputo"
id36 := "zambia/lusaka"
id37 := "namibia/windhoek"
id38 := "niger/niamey"
id39 := "nigeria/abuja"
id40 := "rwanda/kigali"
id41 := "senegal/dakar"
id42 := "seychelles/victoria"
id43 := "sierra-leone/freetown"
id44 := "somalia/mogadishu"
id45 := "south-africa/pretoria"
id46 := "south-sudan/juba"
id47 := "sudan/khartoum"
id48 := "zimbabwe/harare"
id49 := "tanzania/dodoma"
id50 := "togo/lome"
id51 := "tonga/nuku-alofa"
id52 := "tunisia/tunis"
id53 := "uganda/kampala"
id54 := "western-sahara/el-aaiun"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;


func2SouthAmerica()
{
global
numero := 13
;South America
id1 := "argentina/buenos-aires"
id2 := "bolivia/la-paz"
id3 := "brazil/brasilia"
id4 := "chile/santiago"
id5 := "colombia/bogota"
id6 := "(Ecuador Time) — main territory of Ecuador"
id7 := "paraguay/asuncion"
id8 := "peru/lima"
id9 := "suriname/paramaribo"
id10 := "uruguay/montevideo"
id11 := "venezuela/caracas"
id12 := "French Guiana, Saint Pierre and Miquelon - France"
id13 := "guyana/georgetown"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;


func2NorthAmericaCentral()
{
global
numero := 24
;North America/central
id1 := "antigua-and-barbuda/saint-johns"
id2 := "bahamas/nassau"
id3 := "barbados/bridgetown"
id4 := "belize/belmopan"
id5 := "canada/ottawa"
id6 := "costa-rica/san-jose"
id7 := "cuba/havana"
id8 := "dominica/roseau"
id9 := "dominican-republic/santo-domingo"
id10 := "el-salvador/san-salvador"
id11 := "grenada/saint-georges"
id12 := "guatemala/guatemala"
id13 := "haiti/port-au-prince"
id14 := "honduras/tegucigalpa"
id15 := "jamaica/kingston"
id16 := "Mexico City Time - Mexico"
id17 := "nicaragua/managua"
id18 := "panama/panama"
id19 := "saint-kitts-and-nevis/basseterre"
id20 := "saint-lucia/castries"
id21 := "saint-vincent-and-grenadines/kingstown"
id22 := "sao-tome-and-principe/sao-tome"
id23 := "trinidad-and-tobago/port-of-spain"
id24 := "usa/washington-dc"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;



func2France()
{
global
numero := 11
;France
id1 := "Society Islands, Tuamotus, Austral Islands - France"
id2 := "Marquesas Islands - France"
id3 := "Gambier Islands - France"
id4 := "Clipperton Island - France"
id5 := "Guadeloupe, Martinique, Saint Barthélemy, Saint Martin - France"
id6 := "French Guiana, Saint Pierre and Miquelon - France"
id7 := "Mayotte, Scattered Islands in the Indian Ocean - France"
id8 := "Réunion, Crozet Islands - France"
id9 := "Kerguelen Islands, Saint Paul and Amsterdam Islands - France"
id10 := "New Caledonia - France"
id11 := "Wallis and Futuna - France"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;


func2Russia()
{
global
numero := 11
;Russia
id1 := "(Kaliningrad Time) — Kaliningrad Oblast - Russia"
id2 := "(Moscow Time) — Most of European Russia - Russia"
id3 := "(Samara Time) - Russia"
id4 := "(Yekaterinburg Time) - Russia"
id5 := "(Omsk Time) — Omsk Oblast - Russia"
id6 := "(Novosibirsk Time) - Russia"
id7 := "(Irkutsk Time) — Buryatia and Irkutsk Oblast - Russia"
id8 := "(Yakutsk Time) - Russia"
id9 := "(Vladivostok Time) - Russia"
id10 := "(Magadan Time) - Russia"
id11 := "(Kamchatka Time) - Russia"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;


func2UnitedStates()
{
global
numero := 11
;United States
id1 := "Baker Island and Howland Island - United States"
id2 := "American Samoa, Jarvis Island, Kingman Reef, Midway Atoll and Palmyra Atoll - United States"
id3 := "Hawaii, most of the Aleutian Islands, and Johnston Atoll - United States"
id4 := "most of the state of Alaska - United States"
id5 := "Pacific Time zone - California, Nevada and Oregon - United States"
id6 := "Mountain Time zone - most of Idaho, part of Oregon - United States"
id7 := "Central Time zone - Illinois - United States"
id8 := "Eastern Time zone - Florida, New York - United States"
id9 := "Puerto Rico, the U.S. Virgin Islands - United States"
id10 := "Guam and the Northern Mariana Islands - United States"
id11 := "Wake Island - United States"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;

func2Australia()
{
global
numero := 10
;Australia
id1 := "Territory of Heard Island and McDonald Islands - Australia"
id2 := "Cocos (Keeling) Islands - Australia"
id3 := "Christmas Island - Australia"
id4 := "Western Australia - Perth - Australia"
id5 := "Eucla, Western Australia, Australia - Australia"
id6 := "Darwin, Northern Territory, Australia"
id7 := "Victoria, Tasmania Brisbane, Queensland, Australia - Australia"
id8 := "Adelaide, South Australia, Australia - Australia"
id9 := "Lord Howe Island - Australia"
id10 := "Norfolk Island - Australia"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;
func2Antarctica()
{
global
numero := 9
;Antarctica
id1 := "Palmer Station, Rothera Station - Antarctica"
id2 := "Troll Station - Antarctica"
id3 := "Syowa Station - Antarctica"
id4 := "Mawson Station - Antarctica"
id5 := "Vostok Station - Antarctica"
id6 := "Davis Station - Antarctica"
id7 := "Dumont-d'Urville Station - Antarctica"
id8 := "Casey Station - Antarctica"
id9 := "McMurdo Station, Amundsen–Scott South Pole Station - Antarctica"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;

func2UnitedKingdom()
{
global
numero := 9
;United Kingdom
id1 := "Pitcairn Islands - United Kingdom"
id2 := "Cayman Islands, Turks and Caicos Islands - United Kingdom"
id3 := "Anguilla, Bermuda, British Virgin Islands, Montserrat - United Kingdom"
id4 := "Falkland Islands - United Kingdom"
id5 := "South Georgia and the South Sandwich Islands - United Kingdom"
id6 := "main territory of the United Kingdom, Saint Helena, Ascension and Tristan da Cunha, Guernsey, Isle of Man, Jersey - United Kingdom"
id7 := "Gibraltar - United Kingdom"
id8 := "Akrotiri and Dhekelia - United Kingdom"
id9 := "British Indian Ocean Territory - United Kingdom"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;

func2Canada()
{
global
numero := 5
;Canada
id1 := "Larger Western Part of British Columbia - Canada"
id2 := "Alberta - Canada"
id3 := "Manitoba - Canada"
id4 := "Labrador, New Brunswick, Nova Scotia, Prince Edward Island - Canada"
id5 := "St. John's, Newfoundland and Labrador - Canada"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;

func2Denmark()
{
global
numero := 4
;Denmark
id1 := "Thule Air Base in Greenland"
id2 := "Most of Greenland, including inhabited south coast and west coast"
id3 := "Ittoqqortoormiit and surrounding area in Greenland's Tunu county"
id4 := "Faroe Islands"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;

func2NewZealand()
{
global
numero := 5
;New Zealand
id1 := "Niue - New Zealand"
id2 := "Cook Islands - New Zealand"
id3 := "Chatham Islands - New Zealand"
id4 := "Tokelau - New Zealand"
id5 := "new-zealand/wellington"
nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;

func2MoreWhitMultipleTimeZonesPart1()
{
global
numero := 14
;More Whit Multiple Time Zones Part 1
id1 := "(Brazil time -2) - Acre and Southwestern Amazonas Rio Branco - Brazil"
id2 := "(Brazil time -1) - Most part of the Amazonas State, Mato Grosso, Mato Grosso do Sul, Rondônia, Roraima - Brazil"
id3 := "(Brazil time +1) - few islands on the east coast of Brazil - Fernando de Noronha, Saint Peter and Saint Paul Archipelago - Brazil"
id4 := "Northwest Zone - the state of Baja California - Mexico"
id5 := "Mexico City Time - Mexico"
id6 := "Reynosa and most of Mexico  - Mexico"
id7 := "Easter Island - Chile"
id8 := "Punta Arenas South of Chile no DTS zone - Chile"
id9 := "(Western Indonesian Standard Time) - islands of Sumatra and Java - Indonesia"
id10 := "(Central Indonesian Standard Time) - islands of Sulawesi and Bali - Indonesia"
id11 := "(Eastern Indonesian Standard Time) - provinces of Maluku, North Maluku, Papua and West Papua - Indonesia"
id12 := "Gilbert Islands - Kiribati"
id13 := "Phoenix Islands - Kiribati"
id14 := "Line Islands - Kiribati"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;

func2MoreWhitMultipleTimeZonesPart2()
{
global
numero := 17
;More Whit Multiple Time Zones Part 2
id1 := "Central Africa Time - Lubumbashi Time - Democratic Republic of the Congo"
id2 := "Galapagos Islands - Ecuador"
id3 := "(Ecuador Time) — main territory of Ecuador"
id4 := "Chuuk Time - Federated States of Micronesia"
id5 := "The states of Kosrae and Pohnpei - Federated States of Micronesia"
id6 := "Western Kazakhstan (Aktobe, Atyrau, Kyzylorda, Mangystau and West Kazakhstan) - Kazakhstan"
id7 := "Time Zone in Caribbean Netherlands"
id8 := "Main territory of the Netherlands"
id9 := "The provinces of Khovd, Uvs and Bayan-Ölgii - Mongolia"
id10 := "Most of the country - Mongolia"
id11 := "Most of the country - Capital Time - Port Moresby - Papua New Guinea"
id12 := "Arawa - Bougainville - Papua New Guinea"
id13 := "Ponta Delgada - Azores - Portugal"
id14 := "The main territory of Portugal"
id15 := "Prince Edward Islands - South Africa"
id16 := "Canary Islands - Spain"
id17 := "Main territory of Spai"


nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;

func2MiddleEast()
{
global
numero := 18
;Middle East
id1 := "Akrotiri and Dhekelia - United Kingdom"
id2 := "bahrain/manama"
id3 := "cyprus/nicosia"
id4 := "egypt/cairo"
id5 := "iran/tehran"
id6 := "iraq/baghdad"
id7 := "israel/jerusalem"
id8 := "jordan/amman"
id9 := "kuwait/kuwait-city"
id10 := "lebanon/beirut"
id11 := "oman/muscat"
id12 := "palestine"
id13 := "qatar/doha"
id14 := "saudi-arabia/riyadh"
id15 := "syria/damascus"
id16 := "turkey/ankara"
id17 := "united-arab-emirates/abu-dhabi"
id18 := "yemen/sana"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;



func2Balkans()
{
global
numero := 13
;All Countries And Territories
id1 := "albania/tirana"
id2 := "bosnia-herzegovina/sarajevo"
id3 := "bulgaria/sofia"
id4 := "kosovo/pristina"
id5 := "montenegro/podgorica"
id6 := "republic-of-macedonia/skopje"
id7 := "greece/athens"
id8 := "serbia/belgrade"
id9 := "croatia/zagreb"
id10 := "slovenia/ljubljana"
id11 := "romania/bucharest"
id12 := "turkey/ankara"
id13 := "italy/rome"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;


funcUTC()
{
global

numero := 27
;All UTC ofsets
id1 := "timezone/utc-12"
id2 := "timezone/utc-11"
id3 := "timezone/utc-10"
id4 := "timezone/utc-9"
id5 := "timezone/utc-8"
id6 := "timezone/utc-7"
id7 := "timezone/utc-6"
id8 := "timezone/utc-5"
id9 := "timezone/utc-4"
id10 := "timezone/utc-3"
id11 := "timezone/utc-2"
id12 := "timezone/utc-1"
id13 := "timezone/utc"
id14 := "timezone/utc1"
id15 := "timezone/utc2"
id16 := "timezone/utc3"
id17 := "timezone/utc4"
id18 := "timezone/utc5"
id19 := "timezone/utc6"
id20 := "timezone/utc7"
id21 := "timezone/utc8"
id22 := "timezone/utc9"
id23 := "timezone/utc10"
id24 := "timezone/utc11"
id25 := "timezone/utc12"
id26 := "timezone/utc13"
id27 := "timezone/utc14"

nnn := 1
Loop, %numero%
{
country := id%nnn%
FileAppend,
(
%country%|
), countries.txt
nnn++
}
}
;