#singleinstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

Gui, Font, s19
Gui, Color, 121212
Gui, Add, Button, x10 y10 w120 h60 gNewc, Start over
Gui, Add, Text, cWhite x10 y110 w120 h60 , 1/%count%
Gui, Add, Text, cWhite x140 y10 w1000,
Gui, Add, Text, cWhite x140 y100 w1000,
Gui, Add, Text, cWhite x140 y200 w1000,
Gui, Add, Text, cWhite x10 y500 w5110, Press 1 or M if you are wrong!
Gui, Add, Text, cWhite x10 y600 w5110, Mistakes`n0/%count%
Gui, Add, Text, cWhite x10 y535 w5110, Press 2 to fix your mistakes!
Gui, Add, Text, cWhite x10 y570 w5110, Press 3 to go to Main Menu!

Gui, Show, w1400 h700
jjj := 0
GuiControl, Text, Static1, 0/%count%
GuiControl, Text, Static2, %A_Hour%:%A_Min%
GuiControl, Text, Static3, Press Space
GuiControl, Text, Static4, Press Space


nnn := 1
nnnn := 0
jjj1 := 0
Return

Space::
jjj++
jjj1++
if (jjj = 2)
{
GuiControl, Text, Static4, %kk%
GuiControl, Text, Static2, %A_Hour%:%A_Min%
GuiControl, Text, Static6, Mistakes`n%nnnn%/%count%
jjj := 0
}
else
{

c1c := vccc%nnn%

GetUTC() {
    global
    WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    WebRequest.Open("GET", "https://www.timeanddate.com/worldclock/" c1c)
    WebRequest.Send()
    return RegExReplace(WebRequest.ResponseText, "s).+id=ct class=h1>(.+?)</span>.+?id=ctdat>(.+?)</span>.+", "$1`n$2")
}


timeAndDate := GetUTC()
;MsgBox, %timeAndDate%



str := timeAndDate

s:=StrSplit(str,"`n").1
kk%nnn% := s


c1c = %c1c%
kk := kk%nnn%
GuiControl, Text, Static3, %c1c%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; France
If (c1c = "@4033681")
{
    GuiControl, Text, Static3, Society Islands, Tuamotus, Austral Islands - France
}
Else If (c1c = "france/marquesas-islands")
{
    GuiControl, Text, Static3, Marquesas Islands - France
}
Else If (c1c = "french-polynesia/gambier-islands")
{
    GuiControl, Text, Static3, Gambier Islands - France
}
Else If (c1c = "clipperton-island")
{
    GuiControl, Text, Static3, Clipperton Island - France
}
Else If (c1c = "guadeloupe")
{
    GuiControl, Text, Static3, Guadeloupe, Martinique, Saint Barthélemy, Saint Martin - France
}
Else If (c1c = "french-guiana")
{
    GuiControl, Text, Static3, French Guiana, Saint Pierre and Miquelon - France
}
Else If (c1c = "france")
{
    GuiControl, Text, Static3, Metropolitan France - France
}
Else If (c1c = "mayotte")
{
    GuiControl, Text, Static3, Mayotte, Scattered Islands in the Indian Ocean - France
}
Else If (c1c = "reunion")
{
    GuiControl, Text, Static3, Réunion, Crozet Islands - France
}
Else If (c1c = "@1546556")
{
    GuiControl, Text, Static3, Kerguelen Islands, Saint Paul and Amsterdam Islands - France
}
Else If (c1c = "new-caledonia")
{
    GuiControl, Text, Static3, New Caledonia - France
}
Else If (c1c = "wallis-and-futuna")
{
    GuiControl, Text, Static3, Wallis and Futuna - France
}

;Russia


If (c1c = "russia/kaliningrad-oblast")
{
    GuiControl, Text, Static3, (Kaliningrad Time) — Kaliningrad Oblast - Russia
}
Else If (c1c = "russia/moscow")
{
    GuiControl, Text, Static3, (Moscow Time) — Most of European Russia - Russia
}
Else If (c1c = "@580491")
{
    GuiControl, Text, Static3, (Samara Time) - Russia
}
Else If (c1c = "russia/yekaterinburg")
{
    GuiControl, Text, Static3, (Yekaterinburg Time) - Russia
}
Else If (c1c = "@1496152")
{
    GuiControl, Text, Static3, (Omsk Time) — Omsk Oblast - Russia
}
Else If (c1c = "russia/novosibirsk-oblast")
{
    GuiControl, Text, Static3, (Novosibirsk Time) - Russia
}
Else If (c1c = "russia/irkutsk-oblast")
{
    GuiControl, Text, Static3, (Irkutsk Time) — Buryatia and Irkutsk Oblast - Russia
}
Else If (c1c = "russia/yakutsk")
{
    GuiControl, Text, Static3, (Yakutsk Time) - Russia
}
Else If (c1c = "russia/vladivostok")
{
    GuiControl, Text, Static3, (Vladivostok Time) - Russia
}
Else If (c1c = "russia/magadan-oblast")
{
    GuiControl, Text, Static3, (Magadan Time) - Russia
}
Else If (c1c = "russia/kamchatka")
{
    GuiControl, Text, Static3, (Kamchatka Time) - Russia
}

;usa

If (c1c = "usa/baker-island")
{
    GuiControl, Text, Static3, Baker Island and Howland Island - United States
}
Else If (c1c = "american-samoa")
{
    GuiControl, Text, Static3, American Samoa, Jarvis Island, Kingman Reef, Midway Atoll and Palmyra Atoll - United States
}
Else If (c1c = "usa/hawaii")
{
    GuiControl, Text, Static3, Hawaii, most of the Aleutian Islands, and Johnston Atoll - United States
}
Else If (c1c = "usa/alaska")
{
    GuiControl, Text, Static3, most of the state of Alaska - United States
}
Else If (c1c = "usa/california")
{
    GuiControl, Text, Static3, Pacific Time zone - California, Nevada and Oregon - United States
}
Else If (c1c = "usa/salt-lake-city")
{
    GuiControl, Text, Static3, Mountain Time zone - most of Idaho, part of Oregon - United States
}
Else If (c1c = "usa/illinois")
{
    GuiControl, Text, Static3, Central Time zone - Illinois - United States
}
Else If (c1c = "usa/new-york")
{
    GuiControl, Text, Static3, Eastern Time zone - Florida, New York - United States
}
Else If (c1c = "us-virgin")
{
    GuiControl, Text, Static3, Puerto Rico, the U.S. Virgin Islands - United States
}
Else If (c1c = "puerto-rico")
{
    GuiControl, Text, Static3, Puerto Rico, the U.S. Virgin Islands - United States
}
Else If (c1c = "guam")
{
    GuiControl, Text, Static3, Guam and the Northern Mariana Islands - United States
}
Else If (c1c = "usa/wake-island")
{
    GuiControl, Text, Static3, Wake Island - United States
}


;Australia


If (c1c = "@1547314")
{
GuiControl, Text, Static3, Territory of Heard Island and McDonald Islands - Australia
}
Else If (c1c = "cocos")
{
GuiControl, Text, Static3, Cocos (Keeling) Islands - Australia
}
Else If (c1c = "christmas")
{
GuiControl, Text, Static3, Christmas Island - Australia
}
Else If (c1c = "australia/perth")
{
GuiControl, Text, Static3, Western Australia - Perth - Australia
}
Else If (c1c = "australia/eucla")
{
GuiControl, Text, Static3, Eucla, Western Australia, Australia - Australia
}
Else If (c1c = "australia/darwin")
{
GuiControl, Text, Static3, Darwin, Northern Territory, Australia
}
Else If (c1c = "australia/queensland")
{
GuiControl, Text, Static3, Victoria, Tasmania Brisbane, Queensland, Australia - Australia
}
Else If (c1c = "australia/adelaide")
{
GuiControl, Text, Static3, Adelaide, South Australia, Australia - Australia
}
Else If (c1c = "australia/lord-howe")
{
GuiControl, Text, Static3, Lord Howe Island - Australia
}
Else If (c1c = "norfolk-island")
{
GuiControl, Text, Static3, Norfolk Island - Australia
}

;Antarctica

If (c1c = "antarctica/palmer-station")
{
    GuiControl, Text, Static3, Palmer Station, Rothera Station - Antarctica
}
Else If (c1c = "antarctica/troll")
{
    GuiControl, Text, Static3, Troll Station - Antarctica
}
Else If (c1c = "@6625247")
{
    GuiControl, Text, Static3, Syowa Station - Antarctica
}
Else If (c1c = "antarctica/mawson")
{
    GuiControl, Text, Static3, Mawson Station - Antarctica
}
Else If (c1c = "antarctica/vostok-station")
{
    GuiControl, Text, Static3, Vostok Station - Antarctica
}
Else If (c1c = "antarctica/davis")
{
    GuiControl, Text, Static3, Davis Station - Antarctica
}
Else If (c1c = "antarctica/dumont-d-urville-station")
{
    GuiControl, Text, Static3, Dumont-d'Urville Station - Antarctica
}
Else If (c1c = "antarctica/casey")
{
    GuiControl, Text, Static3, Casey Station - Antarctica
}
Else If (c1c = "antarctica/mcmurdo")
{
    GuiControl, Text, Static3, McMurdo Station, Amundsen–Scott South Pole Station - Antarctica
}


;United Kingdom

If (c1c = "pitcairn")
{
    GuiControl, Text, Static3, Pitcairn Islands - United Kingdom
}
Else If (c1c = "cayman-islands")
{
    GuiControl, Text, Static3, Cayman Islands, Turks and Caicos Islands - United Kingdom
}
Else If (c1c = "anguilla")
{
    GuiControl, Text, Static3, Anguilla, Bermuda, British Virgin Islands, Montserrat - United Kingdom
}
Else If (c1c = "falkland")
{
    GuiControl, Text, Static3, Falkland Islands - United Kingdom
}
Else If (c1c = "south-georgia-sandwich")
{
    GuiControl, Text, Static3, South Georgia and the South Sandwich Islands - United Kingdom
}
Else If (c1c = "isle-of-man")
{
    GuiControl, Text, Static3, main territory of the United Kingdom, Saint Helena, Ascension and Tristan da Cunha, Guernsey, Isle of Man, Jersey - United Kingdom
}
Else If (c1c = "gibraltar")
{
    GuiControl, Text, Static3, Gibraltar - United Kingdom
}
Else If (c1c = "@8306813")
{
    GuiControl, Text, Static3, Akrotiri and Dhekelia - United Kingdom
}
Else If (c1c = "biot")
{
    GuiControl, Text, Static3, British Indian Ocean Territory - United Kingdom
}


;Canada
If (c1c = "canada/victoria")
{
    GuiControl, Text, Static3, Larger Western Part of British Columbia - Canada
}
Else If (c1c = "canada/alberta")
{
    GuiControl, Text, Static3, Alberta - Canada
}
Else If (c1c = "canada/manitoba")
{
    GuiControl, Text, Static3, Manitoba - Canada
}
Else If (c1c = "canada/ontario")
{
    GuiControl, Text, Static3, Ontario and Quebec - Canada
}
Else If (c1c = "canada/nova-scotia")
{
    GuiControl, Text, Static3, Labrador, New Brunswick, Nova Scotia, Prince Edward Island - Canada
}
Else If (c1c = "canada/st-johns")
{
    GuiControl, Text, Static3, St. John's, Newfoundland and Labrador - Canada
}


;Denmark
If (c1c = "greenland/thule-air-base")
{
    GuiControl, Text, Static3, Thule Air Base in Greenland
}
Else If (c1c = "greenland/nuuk")
{
    GuiControl, Text, Static3, Most of Greenland, including inhabited south coast and west coast
}
Else If (c1c = "greenland/ittoqqortoormiit")
{
    GuiControl, Text, Static3, Ittoqqortoormiit and surrounding area in Greenland's Tunu county
}
Else If (c1c = "faroe")
{
    GuiControl, Text, Static3, Faroe Islands
}
Else If (c1c = "denmark")
{
    GuiControl, Text, Static3, Main territory of Denmark
}


;New Zealand
If (c1c = "niue")
{
    GuiControl, Text, Static3, Niue - New Zealand
}
Else If (c1c = "cook-islands")
{
    GuiControl, Text, Static3, Cook Islands - New Zealand
}
Else If (c1c = "new-zealand")
{
    GuiControl, Text, Static3, main territory of New Zealand
}
Else If (c1c = "new-zealand/chatham-islands-territory")
{
    GuiControl, Text, Static3, Chatham Islands - New Zealand
}
Else If (c1c = "tokelau")
{
    GuiControl, Text, Static3, Tokelau - New Zealand
}

;More Whit Multiple Time Zones Part 1
If (c1c = "brazil/rio-branco")
{
    GuiControl, Text, Static3, (Brazil time -2) - Acre and Southwestern Amazonas Rio Branco - Brazil
}
Else If (c1c = "brazil/manaus")
{
    GuiControl, Text, Static3, (Brazil time -1) - Most part of the Amazonas State, Mato Grosso, Mato Grosso do Sul, Rondônia, Roraima - Brazil
}
Else If (c1c = "brazil/sao-paulo")
{
    GuiControl, Text, Static3, (Brazil time) - the Southeast Region, the South Region - Sao Paulo and Rio de Janeiro - Brazil
}
Else If (c1c = "brazil/fernando-de-noronha")
{
    GuiControl, Text, Static3, (Brazil time +1) - few islands on the east coast of Brazil - Fernando de Noronha, Saint Peter and Saint Paul Archipelago - Brazil
}
Else If (c1c = "mexico/baja-california")
{
    GuiControl, Text, Static3, Northwest Zone - the state of Baja California - Mexico
}
Else If (c1c = "mexico/mexico-city")
{
    GuiControl, Text, Static3, Mexico City Time - Mexico
}
Else If (c1c = "mexico/reynosa")
{
    GuiControl, Text, Static3, Reynosa and most of Mexico  - Mexico
}
Else If (c1c = "chile/easter-island")
{
    GuiControl, Text, Static3, Easter Island - Chile
}
Else If (c1c = "chile")
{
    GuiControl, Text, Static3, main territory of Chile
}
Else If (c1c = "chile/punta-arenas")
{
    GuiControl, Text, Static3, Punta Arenas South of Chile no DTS zone - Chile
}
Else If (c1c = "indonesia/jakarta")
{
    GuiControl, Text, Static3, (Western Indonesian Standard Time) - islands of Sumatra and Java - Indonesia
}
Else If (c1c = "indonesia/makassar")
{
    GuiControl, Text, Static3, (Central Indonesian Standard Time) - islands of Sulawesi and Bali - Indonesia
}
Else If (c1c = "indonesia/manokwari")
{
    GuiControl, Text, Static3, (Eastern Indonesian Standard Time) - provinces of Maluku, North Maluku, Papua and West Papua - Indonesia
}
Else If (c1c = "kiribati/tarawa")
{
    GuiControl, Text, Static3, Gilbert Islands - Kiribati
}
Else If (c1c = "kiribati/kanton-island")
{
    GuiControl, Text, Static3, Phoenix Islands - Kiribati
}
Else If (c1c = "kiribati/kiritimati")
{
    GuiControl, Text, Static3, Line Islands - Kiribati
}


;More Whit Multiple Time Zones Part 2
If (c1c = "congo-demrep/kinshasa")
{
    GuiControl, Text, Static3, West Africa Time - The Capital - Kinshasa - Democratic Republic of the Congo
}
Else If (c1c = "congo-demrep/lubumbashi")
{
    GuiControl, Text, Static3, Central Africa Time - Lubumbashi Time - Democratic Republic of the Congo
}
Else If (c1c = "ecuador/galapagos-islands")
{
    GuiControl, Text, Static3, Galapagos Islands - Ecuador
}
Else If (c1c = "ecuador/quito")
{
    GuiControl, Text, Static3, (Ecuador Time) — main territory of Ecuador
}
Else If (c1c = "micronesia/weno")
{
    GuiControl, Text, Static3, Chuuk Time - Federated States of Micronesia
}
Else If (c1c = "micronesia/lelu")
{
    GuiControl, Text, Static3, The states of Kosrae and Pohnpei - Federated States of Micronesia
}
Else If (c1c = "kazakstan/aqtobe")
{
    GuiControl, Text, Static3, Western Kazakhstan (Aktobe, Atyrau, Kyzylorda, Mangystau and West Kazakhstan) - Kazakhstan
}
Else If (c1c = "kazakstan/almaty")
{
    GuiControl, Text, Static3, Eastern Kazakhstan - Capital Time - Kazakhstan
}
Else If (c1c = "caribbean-netherlands")
{
    GuiControl, Text, Static3, Time Zone in Caribbean Netherlands
}
Else If (c1c = "netherlands/amsterdam")
{
    GuiControl, Text, Static3, Main territory of the Netherlands
}
Else If (c1c = "mongolia/hovd")
{
    GuiControl, Text, Static3, The provinces of Khovd, Uvs and Bayan-Ölgii - Mongolia
}
Else If (c1c = "mongolia/ulaanbaatar")
{
    GuiControl, Text, Static3, Most of the country - Mongolia
}
Else If (c1c = "papua-new-guinea/port-moresby")
{
    GuiControl, Text, Static3, Most of the country - Capital Time - Port Moresby - Papua New Guinea
}
Else If (c1c = "papua-new-guinea/arawa")
{
    GuiControl, Text, Static3, Arawa - Bougainville - Papua New Guinea
}
Else If (c1c = "portugal/ponta-delgada-azores")
{
    GuiControl, Text, Static3, Ponta Delgada - Azores - Portugal
}
Else If (c1c = "portugal/lisbon")
{
    GuiControl, Text, Static3, The main territory of Portugal
}
Else If (c1c = "south-africa")
{
    GuiControl, Text, Static3, (South African Standard Time) — main territory of South Africa
}
Else If (c1c = "south-africa/marion-island-prince-edward-islands")
{
    GuiControl, Text, Static3, Prince Edward Islands - South Africa
}
Else If (c1c = "spain/canary-islands")
{
    GuiControl, Text, Static3, Canary Islands - Spain
}
Else If (c1c = "spain/madrid")
{
    GuiControl, Text, Static3, Main territory of Spain
}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
GuiControl, Text, Static2, %A_Hour%:%A_Min%
GuiControl, Text, Static4, Press Space to revial
GuiControl, Text, Static1, %nnn%/%count%
GuiControl, Text, Static6, Mistakes`n%nnnn%/%count%


nnn++
}
if (jjj1 = count2)
{
MsgBox, 262208, , %count%/%count% DONE!`n`nPress 1 or M if you are wrong on THIS ONE!`nPress 2 to fix your mistakes!`nPress 3 to go to Main Menu!`nPress Enter or OK to Restart!`n`nIf you press Enter or OK you WONT be able to fix your current mistakes!!!!!!
nnnn := 0
GuiControl, Text, Static1, 0/%count%
GuiControl, Text, Static2, %A_Hour%:%A_Min%
GuiControl, Text, Static3, Press Space
GuiControl, Text, Static4, Press Space
GuiControl, Text, Static6, Mistakes`n%nnnn%/%count%
jjj := 0
nnn := 1
nnnn := 0
jjj1 := 0
}



Return
Newc:
nnnn := 0

GuiControl, Text, Static1, 0/%count%
GuiControl, Text, Static2, %A_Hour%:%A_Min%
GuiControl, Text, Static3, Press Space
GuiControl, Text, Static4, Press Space
GuiControl, Text, Static6, Mistakes`n%nnnn%/%count%
jjj := 0
nnn := 1
nnnn := 0
jjj1 := 0
Return
1::
M::
nnnn++
err%nnnn% = %c1c%
GuiControl, Text, Static6, Mistakes`n%nnnn%/%count%
Return
2::
if (nnnn = 0)
{
MsgBox, 262160, ERROR!!!, No wrong countries seleced!!!
Return
}
njn := 1
FileDelete, countries.txt
;MsgBox, %err1% %err2% %err3%
Loop, %nnnn%
{
jccc := err%njn%
FileAppend,
(
%jccc%|
), countries.txt
njn++
}
njn := 1
Run %A_ScriptFullPath%
Return
3::
Run Main Menu.ahk
ExitApp
Return

GuiClose:
ExitApp