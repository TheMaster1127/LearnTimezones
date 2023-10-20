#singleinstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Loop
{
Sleep, 5000
tttvar1bbgg := A_Min
var1bbgg := SubStr(tttvar1bbgg,2,1)
;MsgBox, %var1bbgg%
if (var1bbgg >= 0) && (var1bbgg <= 5)
{
;MsgBox, 262144, , brake, 1
break
}
else
{
;MsgBox, 262144, , countine, 1
continue
;MsgBox, 262160, Error: Unable to Check In at Specified Time, You cannot check in at minutes 6, 7, 8, or 9 as it may break the code.`nInstead, you can check in at minutes 0, 1, 2, 3, 4, or 5.`nFor example, you can check in at minutes 04, 25, or 53.`nPlease ensure that you use the second digit to represent the minutes correctly in the examples.
}
Sleep, 5000
;; end loop
}

Sleep, 10
Run list of DTS Checking.ahk
Sleep, 10500

;MsgBox, 262144, , var runnnn, 1
FileRead, OutputVar, countries291.txt


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
file = countries291.txt
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
FileDelete, output.txt
jjj := 0



nnn := 1
nnnn := 0
jjj1 := 0
Loop, %count2%
{
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



GetDate() {
global
WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
WebRequest.Open("GET", "https://www.timeanddate.com/worldclock/" c1c)
WebRequest.Send()
return RegExReplace(WebRequest.ResponseText, "s).+id=ctdat>(.+?)</span>.+", "$1")
}

date := GetDate()
;MsgBox, %date%

str := date


s := StrSplit(str, " ")
day := s[2]
;MsgBox, % day




str := timeAndDate

s:=StrSplit(str,"`n").1
kk%nnn% := s


c1c = %c1c%
kk := kk%nnn%
c1c1 := c1c
c1c1 = %c1c%
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
If (c1c1 = "@4033681")
{
c1c1 = Society Islands, Tuamotus, Austral Islands - France
}
Else If (c1c1 = "france/marquesas-islands")
{
c1c1 = Marquesas Islands - France
}
Else If (c1c1 = "french-polynesia/gambier-islands")
{
c1c1 = Gambier Islands - France
}
Else If (c1c1 = "clipperton-island")
{
c1c1 = Clipperton Island - France
}
Else If (c1c1 = "guadeloupe")
{
c1c1 = Guadeloupe, Martinique, Saint Barthélemy, Saint Martin - France
}
Else If (c1c1 = "french-guiana")
{
c1c1 = French Guiana, Saint Pierre and Miquelon - France
}
Else If (c1c1 = "france")
{
c1c1 = Metropolitan France - France
}
Else If (c1c1 = "mayotte")
{
c1c1 = Mayotte, Scattered Islands in the Indian Ocean - France
}
Else If (c1c1 = "reunion")
{
c1c1 = Réunion, Crozet Islands - France
}
Else If (c1c1 = "@1546556")
{
c1c1 = Kerguelen Islands, Saint Paul and Amsterdam Islands - France
}
Else If (c1c1 = "new-caledonia")
{
c1c1 = New Caledonia - France
}
Else If (c1c1 = "wallis-and-futuna")
{
c1c1 = Wallis and Futuna - France
}

;Russia


If (c1c1 = "russia/kaliningrad-oblast")
{
c1c1 = (Kaliningrad Time) — Kaliningrad Oblast - Russia
}
Else If (c1c1 = "russia/moscow")
{
c1c1 = (Moscow Time) — Most of European Russia - Russia
}
Else If (c1c1 = "@580491")
{
c1c1 = (Samara Time) - Russia
}
Else If (c1c1 = "russia/yekaterinburg")
{
c1c1 = (Yekaterinburg Time) - Russia
}
Else If (c1c1 = "@1496152")
{
c1c1 = (Omsk Time) — Omsk Oblast - Russia
}
Else If (c1c1 = "russia/novosibirsk-oblast")
{
c1c1 = (Novosibirsk Time) - Russia
}
Else If (c1c1 = "russia/irkutsk-oblast")
{
c1c1 = (Irkutsk Time) — Buryatia and Irkutsk Oblast - Russia
}
Else If (c1c1 = "russia/yakutsk")
{
c1c1 = (Yakutsk Time) - Russia
}
Else If (c1c1 = "russia/vladivostok")
{
c1c1 = (Vladivostok Time) - Russia
}
Else If (c1c1 = "russia/magadan-oblast")
{
c1c1 = (Magadan Time) - Russia
}
Else If (c1c1 = "russia/kamchatka")
{
c1c1 = (Kamchatka Time) - Russia
}

;usa

If (c1c1 = "usa/baker-island")
{
c1c1 = Baker Island and Howland Island - United States
}
Else If (c1c1 = "american-samoa")
{
c1c1 = American Samoa, Jarvis Island, Kingman Reef, Midway Atoll and Palmyra Atoll - United States
}
Else If (c1c1 = "usa/hawaii")
{
c1c1 = Hawaii, most of the Aleutian Islands, and Johnston Atoll - United States
}
Else If (c1c1 = "usa/alaska")
{
c1c1 = most of the state of Alaska - United States
}
Else If (c1c1 = "usa/california")
{
c1c1 = Pacific Time zone - California, Nevada and Oregon - United States
}
Else If (c1c1 = "usa/salt-lake-city")
{
c1c1 = Mountain Time zone - most of Idaho, part of Oregon - United States
}
Else If (c1c1 = "usa/illinois")
{
c1c1 = Central Time zone - Illinois - United States
}
Else If (c1c1 = "usa/new-york")
{
c1c1 = Eastern Time zone - Florida, New York - United States
}
Else If (c1c1 = "us-virgin")
{
c1c1 = Puerto Rico, the U.S. Virgin Islands - United States
}
Else If (c1c1 = "puerto-rico")
{
c1c1 = Puerto Rico, the U.S. Virgin Islands - United States
}
Else If (c1c1 = "guam")
{
c1c1 = Guam and the Northern Mariana Islands - United States
}
Else If (c1c1 = "usa/wake-island")
{
c1c1 = Wake Island - United States
}


;Australia


If (c1c1 = "@1547314")
{
c1c1 = Territory of Heard Island and McDonald Islands - Australia
}
Else If (c1c1 = "cocos")
{
c1c1 = Cocos (Keeling) Islands - Australia
}
Else If (c1c1 = "christmas")
{
c1c1 = Christmas Island - Australia
}
Else If (c1c1 = "australia/perth")
{
c1c1 = Western Australia - Perth - Australia
}
Else If (c1c1 = "australia/eucla")
{
c1c1 = Eucla, Western Australia, Australia - Australia
}
Else If (c1c1 = "australia/darwin")
{
c1c1 = Darwin, Northern Territory, Australia
}
Else If (c1c1 = "australia/queensland")
{
c1c1 = Victoria, Tasmania Brisbane, Queensland, Australia - Australia
}
Else If (c1c1 = "australia/adelaide")
{
c1c1 = Adelaide, South Australia, Australia - Australia
}
Else If (c1c1 = "australia/lord-howe")
{
c1c1 = Lord Howe Island - Australia
}
Else If (c1c1 = "norfolk-island")
{
c1c1 = Norfolk Island - Australia
}

;Antarctica

If (c1c1 = "antarctica/palmer-station")
{
c1c1 = Palmer Station, Rothera Station - Antarctica
}
Else If (c1c1 = "antarctica/troll")
{
c1c1 = Troll Station - Antarctica
}
Else If (c1c1 = "@6625247")
{
c1c1 = Syowa Station - Antarctica
}
Else If (c1c1 = "antarctica/mawson")
{
c1c1 = Mawson Station - Antarctica
}
Else If (c1c1 = "antarctica/vostok-station")
{
c1c1 = Vostok Station - Antarctica
}
Else If (c1c1 = "antarctica/davis")
{
c1c1 = Davis Station - Antarctica
}
Else If (c1c1 = "antarctica/dumont-d-urville-station")
{
c1c1 = Dumont-d'Urville Station - Antarctica
}
Else If (c1c1 = "antarctica/casey")
{
c1c1 = Casey Station - Antarctica
}
Else If (c1c1 = "antarctica/mcmurdo")
{
c1c1 = McMurdo Station, Amundsen–Scott South Pole Station - Antarctica
}


;United Kingdom

If (c1c1 = "pitcairn")
{
c1c1 = Pitcairn Islands - United Kingdom
}
Else If (c1c1 = "cayman-islands")
{
c1c1 = Cayman Islands, Turks and Caicos Islands - United Kingdom
}
Else If (c1c1 = "anguilla")
{
c1c1 = Anguilla, Bermuda, British Virgin Islands, Montserrat - United Kingdom
}
Else If (c1c1 = "falkland")
{
c1c1 = Falkland Islands - United Kingdom
}
Else If (c1c1 = "south-georgia-sandwich")
{
c1c1 = South Georgia and the South Sandwich Islands - United Kingdom
}
Else If (c1c1 = "isle-of-man")
{
c1c1 = main territory of the United Kingdom, Saint Helena, Ascension and Tristan da Cunha, Guernsey, Isle of Man, Jersey - United Kingdom
}
Else If (c1c1 = "gibraltar")
{
c1c1 = Gibraltar - United Kingdom
}
Else If (c1c1 = "@8306813")
{
c1c1 = Akrotiri and Dhekelia - United Kingdom
}
Else If (c1c1 = "biot")
{
c1c1 = British Indian Ocean Territory - United Kingdom
}


;Canada
If (c1c1 = "canada/british-columbia")
{
c1c1 = Larger Western Part of British Columbia - Canada
}
Else If (c1c1 = "canada/alberta")
{
c1c1 = Alberta - Canada
}
Else If (c1c1 = "canada/manitoba")
{
c1c1 = Manitoba - Canada
}
Else If (c1c1 = "canada/ontario")
{
c1c1 = Ontario and Quebec - Canada
}
Else If (c1c1 = "canada/nova-scotia")
{
c1c1 = Labrador, New Brunswick, Nova Scotia, Prince Edward Island - Canada
}
Else If (c1c1 = "canada/st-johns")
{
c1c1 = St. John's, Newfoundland and Labrador - Canada
}


;Denmark
If (c1c1 = "greenland/thule-air-base")
{
c1c1 = Thule Air Base in Greenland
}
Else If (c1c1 = "greenland/nuuk")
{
c1c1 = Most of Greenland, including inhabited south coast and west coast
}
Else If (c1c1 = "greenland/ittoqqortoormiit")
{
c1c1 = Ittoqqortoormiit and surrounding area in Greenland's Tunu county
}
Else If (c1c1 = "faroe")
{
c1c1 = Faroe Islands
}
Else If (c1c1 = "denmark")
{
c1c1 = Main territory of Denmark
}


;New Zealand
If (c1c1 = "niue")
{
c1c1 = Niue - New Zealand
}
Else If (c1c1 = "cook-islands")
{
c1c1 = Cook Islands - New Zealand
}
Else If (c1c1 = "new-zealand")
{
c1c1 = main territory of New Zealand
}
Else If (c1c1 = "new-zealand/chatham-islands-territory")
{
c1c1 = Chatham Islands - New Zealand
}
Else If (c1c1 = "tokelau")
{
c1c1 = Tokelau - New Zealand
}

;More Whit Multiple Time Zones Part 1
If (c1c1 = "brazil/rio-branco")
{
c1c1 = (Brazil time -2) - Acre and Southwestern Amazonas Rio Branco - Brazil
}
Else If (c1c1 = "brazil/manaus")
{
c1c1 = (Brazil time -1) - Most part of the Amazonas State, Mato Grosso, Mato Grosso do Sul, Rondônia, Roraima - Brazil
}
Else If (c1c1 = "brazil/sao-paulo")
{
c1c1 = (Brazil time) - the Southeast Region, the South Region - Sao Paulo and Rio de Janeiro - Brazil
}
Else If (c1c1 = "brazil/fernando-de-noronha")
{
c1c1 = (Brazil time +1) - few islands on the east coast of Brazil - Fernando de Noronha, Saint Peter and Saint Paul Archipelago - Brazil
}
Else If (c1c1 = "mexico/baja-california")
{
c1c1 = Northwest Zone - the state of Baja California - Mexico
}
Else If (c1c1 = "mexico/mexico-city")
{
c1c1 = Mexico City Time - Mexico
}
Else If (c1c1 = "mexico/reynosa")
{
c1c1 = Reynosa and most of Mexico  - Mexico
}
Else If (c1c1 = "chile/easter-island")
{
c1c1 = Easter Island - Chile
}
Else If (c1c1 = "chile")
{
c1c1 = main territory of Chile
}
Else If (c1c1 = "chile/punta-arenas")
{
c1c1 = Punta Arenas South of Chile no DTS zone - Chile
}
Else If (c1c1 = "indonesia/jakarta")
{
c1c1 = (Western Indonesian Standard Time) - islands of Sumatra and Java - Indonesia
}
Else If (c1c1 = "indonesia/makassar")
{
c1c1 = (Central Indonesian Standard Time) - islands of Sulawesi and Bali - Indonesia
}
Else If (c1c1 = "indonesia/manokwari")
{
c1c1 = (Eastern Indonesian Standard Time) - provinces of Maluku, North Maluku, Papua and West Papua - Indonesia
}
Else If (c1c1 = "kiribati/tarawa")
{
c1c1 = Gilbert Islands - Kiribati
}
Else If (c1c1 = "kiribati/kanton-island")
{
c1c1 = Phoenix Islands - Kiribati
}
Else If (c1c1 = "kiribati/kiritimati")
{
c1c1 = Line Islands - Kiribati
}


;More Whit Multiple Time Zones Part 2
If (c1c1 = "congo-demrep/kinshasa")
{
c1c1 = West Africa Time - The Capital - Kinshasa - Democratic Republic of the Congo
}
Else If (c1c1 = "congo-demrep/lubumbashi")
{
c1c1 = Central Africa Time - Lubumbashi Time - Democratic Republic of the Congo
}
Else If (c1c1 = "ecuador/galapagos-islands")
{
c1c1 = Galapagos Islands - Ecuador
}
Else If (c1c1 = "ecuador/quito")
{
c1c1 = (Ecuador Time) — main territory of Ecuador
}
Else If (c1c1 = "micronesia/weno")
{
c1c1 = Chuuk Time - Federated States of Micronesia
}
Else If (c1c1 = "micronesia/lelu")
{
c1c1 = The states of Kosrae and Pohnpei - Federated States of Micronesia
}
Else If (c1c1 = "kazakstan/aqtobe")
{
c1c1 = Western Kazakhstan (Aktobe, Atyrau, Kyzylorda, Mangystau and West Kazakhstan) - Kazakhstan
}
Else If (c1c1 = "kazakstan/almaty")
{
c1c1 = Eastern Kazakhstan - Capital Time - Kazakhstan
}
Else If (c1c1 = "caribbean-netherlands")
{
c1c1 = Time Zone in Caribbean Netherlands
}
Else If (c1c1 = "netherlands/amsterdam")
{
c1c1 = Main territory of the Netherlands
}
Else If (c1c1 = "mongolia/hovd")
{
c1c1 = The provinces of Khovd, Uvs and Bayan-Ölgii - Mongolia
}
Else If (c1c1 = "mongolia/ulaanbaatar")
{
c1c1 = Most of the country - Mongolia
}
Else If (c1c1 = "papua-new-guinea/port-moresby")
{
c1c1 = Most of the country - Capital Time - Port Moresby - Papua New Guinea
}
Else If (c1c1 = "papua-new-guinea/arawa")
{
c1c1 = Arawa - Bougainville - Papua New Guinea
}
Else If (c1c1 = "portugal/ponta-delgada-azores")
{
c1c1 = Ponta Delgada - Azores - Portugal
}
Else If (c1c1 = "portugal/lisbon")
{
c1c1 = The main territory of Portugal
}
Else If (c1c1 = "south-africa")
{
c1c1 = (South African Standard Time) — main territory of South Africa
}
Else If (c1c1 = "south-africa/marion-island-prince-edward-islands")
{
c1c1 = Prince Edward Islands - South Africa
}
Else If (c1c1 = "spain/canary-islands")
{
c1c1 = Canary Islands - Spain
}
Else If (c1c1 = "spain/madrid")
{
c1c1 = Main territory of Spain
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

FileAppend,
(
%c1c1%`n%kk%|%day%`n
), output.txt
nnn++
}
}


ExitApp
