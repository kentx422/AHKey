CoordMode,Mouse,Screen

outputChar(string){
	send, %string%
}

SHKey_Q={!}
SHKey_W=`"
SHKey_E={#}
SHKey_R=$
SHKey_T=`%
SHKey_Y=&
SHKey_U=`'
SHKey_I=(
SHKey_O=)
SHKey_P={=}
SHKey_AT=~
SHKey_A=1
SHKey_S=2
SHKey_D=3
SHKey_F=4
SHKey_G=5
SHKey_H=6
SHKey_J=7
SHKey_K=8
SHKey_L=9
SHKey_SColon=0
SHKey_Colon={^}
SHKey_Z={F1}
SHKey_X={F2}
SHKey_C={F3}
SHKey_V={F4}
SHKey_B={F5}
SHKey_N={F6}
SHKey_M={F7}
SHKey_Comma={F8}
SHKey_Dot={F9}
SHKey_Slash={F10}
SHKey_1={F1}
SHKey_2={F2}
SHKey_3={F3}
SHKey_4={F4}
SHKey_5={F5}
SHKey_6={F6}
SHKey_7={F7}
SHKey_8={F8}
SHKey_9={F9}
SHKey_0={F10}

; 以下は IME がローマ字モードじゃないときに出力する文字です

defaultKey_Q=q
defaultKey_W=w
defaultKey_E=e
defaultKey_R=r
defaultKey_T=t
defaultKey_Y=y
defaultKey_U=u
defaultKey_I=i
defaultKey_O=o
defaultKey_P=p
defaultKey_AT=@
defaultKey_A=a
defaultKey_S=s
defaultKey_D=d
defaultKey_F=f
defaultKey_G=g
defaultKey_H=h
defaultKey_J=j
defaultKey_K=k
defaultKey_L=l
defaultKey_SColon=`;
defaultKey_Colon=`:
defaultKey_Z=z
defaultKey_X=x
defaultKey_C=c
defaultKey_V=v
defaultKey_B=b
defaultKey_N=n
defaultKey_M=m
defaultKey_Comma=`,
defaultKey_Dot=.
defaultKey_Slash=/
defaultKey_1=1
defaultKey_2=2
defaultKey_3=3
defaultKey_4=4
defaultKey_5=5
defaultKey_6=6
defaultKey_7=7
defaultKey_8=8
defaultKey_9=9
defaultKey_0=0
defaultKey_F1={F1}
defaultKey_F2={F2}
defaultKey_F3={F3}
defaultKey_F4={F4}
defaultKey_F5={F5}
defaultKey_F6={F6}
defaultKey_F7={F7}
defaultKey_F8={F8}
defaultKey_F9={F9}
defaultKey_F10={F10}
defaultKey_F11={F11}
defaultKey_F12={F12}

;追加
macroH := ""
macroY := ""
macronum := 1
gpaste := ""
clip00:=""
clip01:=""
clip02:=""
clip03:=""
clip04:=""
clip05:=""
clip06:=""
clip07:=""
clip08:=""
clip09:=""
clip10:=""
clip11:=""
clip12:=""
clip13:=""
clip14:=""
clip15:=""
clip16:=""
clip17:=""
clip18:=""
clip19:=""
WinGetPos, , , , tbHeight, ahk_class Shell_TrayWnd
vWinWidth := A_ScreenWidth
hWinWidth := A_ScreenWidth / 2
vWinHeight := (A_ScreenHeight - tbHeight) / 2
hWinHeight := A_ScreenHeight - tbHeight

onKeyDown(keyName){
	global fstate,flag
	if(fstate != ""){
		flag := 1
		key := defaultKey%keyName%
		if(fstate=="")
			Send,%key%
		else if(fstate=="H")
			Send,^%key%
		else if(fstate=="S")
			Send,+%key%
		else if(fstate=="HS")
			Send,^+%key%
		else if(fstate=="K"){
			Send,#%key%
			fstate:=""
		}else if(fstate=="A"){
			Send,!%key%
			fstate:=""
		}else if(fstate=="KH")
			Send,^!%key%
		else if(fstate=="KS")
			Send,+!%key%
		else if(fstate=="SH")
			outputChar(SHKey%keyName%)
		else if(fstate=="KSH")
			outputChar("^"SHKey%keyName%)
		else if(fstate=="ASH")
			outputChar("!"SHKey%keyName%)
		else if(fstate=="SM")
			whenSM(key)
		else
			func%keyName%()
		return
	}
	key := defaultKey%keyName%
	GetKeyState, state, CapsLock, T ; D if CapsLock is ON or U otherwise.
	if state = D
		StringUpper, key, key
	send, %key%
}

; 以下ホットキー定義
#UseHook On
#IfWinActive,Macro ahk_class #32770   ;Macro時
h::onKeyDown("_H")
y::onKeyDown("_Y")
#IfWinActive ahk_class ConsoleWindowClass
	^v::Send,!{Space}ep     ;コマンドプロンプトで^V をペーストにする
	^x::Send,!{Space}ek     ;範囲指定
#IfWinActive
^Esc::Suspend,Toggle
#w::WinSet, Style, ^0xC00000, A


q::onKeyDown("_Q")
w::onKeyDown("_W")
e::onKeyDown("_E")
r::onKeyDown("_R")
t::onKeyDown("_T")
y::onKeyDown("_Y")
u::onKeyDown("_U")
i::onKeyDown("_I")
o::onKeyDown("_O")
p::onKeyDown("_P")
@::onKeyDown("_AT")
a::onKeyDown("_A")
s::onKeyDown("_S")
d::onKeyDown("_D")
f::onKeyDown("_F")
g::onKeyDown("_G")
h::onKeyDown("_H")
j::onKeyDown("_J")
k::onKeyDown("_K")
l::onKeyDown("_L")
z::onKeyDown("_Z")
x::onKeyDown("_X")
`;::onKeyDown("_SColon")
sc028::onKeyDown("_Colon")
c::onKeyDown("_C")
v::onKeyDown("_V")
b::onKeyDown("_B")
n::onKeyDown("_N")
m::onKeyDown("_M")
sc033 ::onKeyDown("_Comma")
.::onKeyDown("_Dot")
/::onKeyDown("_Slash")
1::onKeyDown("_1")
2::onKeyDown("_2")
3::onKeyDown("_3")
4::onKeyDown("_4")
5::onKeyDown("_5")
6::onKeyDown("_6")
7::onKeyDown("_7")
8::onKeyDown("_8")
9::onKeyDown("_9")
0::onKeyDown("_0")
F1::onKeyDown("_F1")
F2::onKeyDown("_F2")
F3::onKeyDown("_F3")
F4::onKeyDown("_F4")
F5::onKeyDown("_F5")
F6::onKeyDown("_F6")
F7::onKeyDown("_F7")
F8::onKeyDown("_F8")
F9::onKeyDown("_F9")
F10::onKeyDown("_F10")
F11::onKeyDown("_F11")
F12::onKeyDown("_F12")
vk1Dsc07B::		;無変換キー
	flag:=0
	if !InStr(fstate, "M")
		fstate := fstate . "M"
	return
vk1Dsc07B up::
	if(fstate == "HM" && flag == 0){
		Send,+{TAB}
		flag:=1
	}
	StringReplace, fstate, fstate, K,, ALL
	StringReplace, fstate, fstate, A,, ALL
	StringReplace, fstate, fstate, M,, ALL
	return
vk1Csc079::		;変換キー
	flag:=0
	if(fstate == "MS"){
		Send,+{SPACE}
		flag:=1
	}
	if !InStr(fstate, "H")
		fstate := fstate . "H"
	return
vk1Csc079 up::
	if(fstate == "MH" && flag == 0){
		Send,{TAB}
		flag:=1
	}else if(fstate == "H" && flag == 0)
		Send,{CTRL}
	else if(fstate == "KH" && flag == 0){
		Send,{vk1Csc079}
		flag:=1
	}
	StringReplace, fstate, fstate, K,, ALL
	StringReplace, fstate, fstate, A,, ALL
	StringReplace, fstate, fstate, H,, ALL
	return
!vk1Csc079::
	if !InStr(fstate, "AH")
		fstate := fstate . "AH"
	return
!vk1Csc079 up::
	StringReplace, fstate, fstate, AH,, ALL
	return
Space::		;スペースキー
	flag:=0
	if(fstate == "MH"){
		Send,{END}{ENTER}
		flag:=1
	}else if(fstate == "HM"){
		Send,{UP}{END}{ENTER}
		flag:=1
	}
	if !InStr(fstate, "S")
		fstate := fstate . "S"
	return
Space up::
	if(fstate == "S" && flag == 0)
		Send,{Space}
	else if(fstate == "MS" && flag == 0){
		Send,{ENTER}
		flag:=1
	}else if(fstate == "HS" && flag == 0){
		Send,^{Space}
		flag:=1
	}else if(fstate == "KS" && flag == 0){
		Send,+{Space}
		flag:=1
	}else if(fstate == "KMS" && flag == 0){
		Send,^{ENTER}
		flag:=1
	}else if(fstate == "AMS" && flag == 0){
		Send,!{ENTER}
		flag:=1
	}
	StringReplace, fstate, fstate, K,, ALL
	StringReplace, fstate, fstate, A,, ALL
	StringReplace, fstate, fstate, S,, ALL
	return
!Space::
	if !InStr(fstate, "AS")
		fstate := fstate . "AS"
	return
!Space up::
	StringReplace, fstate, fstate, AS,, ALL
	return
sc070::		;カタカナ/ひらがなキー
	if(fstate == "M"){
		Send,{vk1Dsc07B}
		flag:=1
	}else if(fstate == "H"){
		Send,{vk1Csc079}
		flag:=1
	}else if(fstate == "S"){
		Send,^{Esc}
		flag:=1
	}else if !InStr(fstate, "K")
		fstate := fstate . "K"
	else if(fstate == "K")
		fstate := ""
	return
!sc070::
	if !InStr(fstate, "A")
		fstate := fstate . "A"
return
func_Q(){
	withFuncKey("(","""","'")
}
func_W(){
	withFuncKey("!{F4}","^{F4}")
}
func_E(){
	processes()
}
func_R(){
	processes()
}
func_T(){
	processes()
}
func_Y(){
	processes()
}
func_U(){
	withFuncKey("{HOME}","+{HOME}","^{HOME}","^+{HOME}")
}
func_I(){
	withFuncKey("{UP}","+{UP}","^{UP}","^+{UP}")
}
func_O(){
	withFuncKey("{END}","+{END}","^{END}","^+{END}")
}
func_P(){
	withFuncKey("{PGUP}","+{PGUP}","^{PGUP}","^+{PGUP}")
}
func_AT(){
	withFuncKey("{ESC}","{AppsKey}","!{Space}")
}
func_A(){
	withFuncKey("[]{LEFT}","{{}","{{}{ENTER}{ENTER}{}}{UP}{END}")
}
func_S(){
	withFuncKey("(){LEFT}","{}}","{{}{}}{LEFT}")
}
func_D(){
	withFuncKey("-","=","%","#d")
}
func_F(){
	processes()
	;withFuncKey("{vkF3sc029}","{CapsLock}","{Ins}")
}
func_G(){
	processes()
	;withFuncKey("!{ESC}","^{TAB}","^+{TAB}")
}
func_H(){
	processes()
}
func_J(){
	withFuncKey("{LEFT}","+{LEFT}","^{LEFT}","^+{LEFT}")
}
func_K(){
	withFuncKey("{DOWN}","+{DOWN}","^{DOWN}","^+{DOWN}")
}
func_L(){
	withFuncKey("{RIGHT}","+{RIGHT}","^{RIGHT}","^+{RIGHT}")
}
func_SColon(){
	withFuncKey("{PGDN}","+{PGDN}","^{PGDN}","^+{PGDN}")
}
func_Colon(){
	withFuncKey("$","{#}","&")
}
func_Z(){
	withFuncKey("\","/","|")
}
func_X(){
	withFuncKey("""""{LEFT}","''{LEFT}","%%{LEFT}")
}
func_C(){
	withFuncKey("_",">","<")
}
func_V(){
	processes()
}
func_B(){
	;withFuncKey("{ESC}","{AppsKey}","!{Space}","#b")
	processes()
}
func_N(){
	withFuncKey("{BS}","!{RIGHT}","!{LEFT}","^+n")
}
func_M(){
	withFuncKey("{DEL}","{END}{SHIFT DOWN}{HOME}{LEFT}{SHIFT UP}","{HOME}+{END}","#m")
}
func_Comma(){
	withFuncKey("{SPACE}","{TAB}","{ENTER}")
}
func_Dot(){
	withFuncKey(")","<>{LEFT}","</>{LEFT}")
}
func_Slash(){
	withFuncKey("{!}","/*  */{LEFT 3}")
}
func_1(){
	processes()
}
func_2(){
	processes()
}
func_3(){
	processes()
}
func_4(){
	processes()
}
func_5(){
	withFuncKey()
}
func_6(){
	withFuncKey()
}
func_7(){
	withFuncKey()
}
func_8(){
	withFuncKey()
}
func_9(){
	withFuncKey()
}
func_0(){
	withFuncKey()
}
withFuncKey(mkey="",mhkey="",hmkey="",mskey="") {
	global fstate
	if(fstate=="M")
		Send,%mkey%
	else if(fstate=="MH")
		Send,%mhkey%
	else if(fstate=="HM")
		Send,%hmkey%
	else if(fstate=="MS")
		Send,%mskey%
	else if(fstate=="KM")
		Send,^%mkey%
	else if(fstate=="KMH")
		Send,^%mhkey%
	else if(fstate=="KHM")
		Send,^%hmkey%
	else if(fstate=="KMS")
		Send,^%mskey%
	else if(fstate=="AM")
		Send,!%mkey%
	else if(fstate=="AMH")
		Send,!%mhkey%
	else if(fstate=="AHM")
		Send,!%hmkey%
	else if(fstate=="AMS")
		Send,!%mskey%
	return
}

processes(){
	StringUpper, lkey, A_ThisHotkey
	if(lkey==".")
		lkey := "Dot"
	process%lkey%()
	return
}

processE(){
	global vWinHeight,vWinWidth,fstate
	if(fstate=="M"){
		WinMinimize,A     ; 最小化
	}else if(fstate=="MH")
		WinMove,A,, 0, 0, %vWinWidth%, %vWinHeight%
	else if(fstate=="HM")
		WinMove,A,, 0, %vWinHeight%, %vWinWidth%, %vWinHeight%
	else if(fstate=="MS")
		Send,#e
	return
}
processR(){
	global hWinWidth,hWinHeight,fstate
	if(fstate=="M"){
		WinGet, t, MinMax, A		; 最大化（トグル）
		if t=0
			WinMaximize,A
		else
			WinRestore,A
	}else if(fstate=="MH"){
		if(A_OSVersion=="WIN_7" || A_OSVersion=="WIN_8")
			Send,#{RIGHT}
		else
			WinMove,A,, %hWinWidth%, 0, %hWinWidth%, %hWinHeight%
	}else if(fstate=="HM"){
		if(A_OSVersion=="WIN_7" || A_OSVersion=="WIN_8")
			Send,#{LEFT}
		else
			WinMove,A,, 0, 0, %hWinWidth%, %hWinHeight%
	}else if(fstate=="MS")
		Send,#r
	return
}
processT(){
	global fstate
	if(fstate=="M")
		WinSet, Topmost, Toggle, A    ; 最前面表示（トグル）
	else if(fstate=="MH"){
		WinGet, t, Transparent, A	; 半透明にする（トグル）
		if %t%
			WinSet, Transparent, Off, A
		else
			WinSet, Transparent, 160, A
	}
}
processY(){
	processMacro("Y")
}
processF(){
	global fstate
	if(fstate=="M"){
		Send, {vkF3sc029}
	}else if(fstate=="MH"){
		GetKeyState, state, CapsLock, T ; D if CapsLock is ON or U otherwise.
		if state = D
			SetCapsLockState, Off
		else
			SetCapsLockState, On
	}else if(fstate=="HM"){
		Send, {Ins}
	}
	return
}
processG(){
	global fstate
	if(fstate=="M"){
		GroupAdd, GroupName,
		WinGet, num, Count, ahk_group GroupName
		Loop,%num%{
			WinActivateBottom,ahk_group GroupName
			WinGetPos,,, Width, Height, A
			if(Width>20 || Height>20)
				break
		}
	}else if(fstate=="MH"){
		Send, ^{TAB}
	}else if(fstate=="HM"){
		Send, ^+{TAB}
	}else if(fstate=="MS"){
		WinGetClass, className, A
		WinActivateBottom, ahk_class %className%
	}
	return
}
processB(){
	global fstate
	if(fstate=="M"){
		WinGetClass, className, A
		WinActivateBottom, ahk_class %className%
	}else if(fstate=="MH"){
		Send, !{ESC}
	}else if(fstate=="HM"){
		Send, !+{ESC}
	}
}
processH(){
	processMacro("H")
}
processV(){
	global clipNum, clip00, clip01, clip02, clip03, clip04, clip05, clip06, clip07, clip08, clip09, clip10, clip11, clip12, clip13, clip14, clip15, clip16, clip17, clip18, clip19,fstate,gpaste,clipNum,clipNTmp
	initial := "asdfghjkl"
	if(fstate=="M"){
		Loop, %clipNum%{
			decIndex := A_Index-1
			zeroIfltTen := (decIndex<10)? "0" : ""
			endChr := (StrLen(clip%zeroIfltTen%%decIndex%)>32)? "..." : ""
			StringLeft, text, clip%zeroIfltTen%%decIndex%, 32
			Menu, mymenu, Add,%decIndex% %text%%endChr%,MenuAction
		}
		if(gpaste<>""){
			endChr := (StrLen(gpaste)>32)? "..." : ""
			StringLeft, text, gpaste, 32
			Menu, mymenu, Add
			Menu, mymenu, Add, %text%%endChr%,MenuActionF
		}
		if(clipNum<>0){
			fstate:=""
			Menu, mymenu, Show
			Menu, mymenu, Delete
		}
	}else if(fstate=="MH"){
		Send, ^c
		ClipWait, 2
		gpaste := clipboard
	}else if(fstate=="HM"){
		Loop, %clipNum%{
			indm := A_Index - 1
			zeroiltn:=(indm<10)? "0" : ""
			if(gpaste == clip%zeroiltn%%indm%){
				clipNTmp := indm
				break
			}
		}
		clipboard := gpaste
		ClipWait , 1
		Send,+{Ins}
	}
}
processMacro(chr){
	global fstate,macroH,macroY,macronum
	if(fstate=="M"){
		outer:
		Loop,%macronum%{
			;インクリメント処理
			StringSplit, macropart, macro%chr%,``
			macro%chr% := ""
			sndmcr := ""
			Loop,%macropart0% {
				sndmcr := sndmcr . macropart%A_Index%
				if(A_Index<>1)
					macro%chr% := macro%chr% . "``"
				if(Mod(A_Index,2)=0){
					if macropart%A_Index% is integer
						macropart%A_Index% += 1
					else if(StrLen(macropart%A_Index%)<>0){
						as := Asc(SubStr(macropart%A_Index%, 1, 1)) +1
						macropart%A_Index% := Chr(as)
					}
				}
				macro%chr% := macro%chr% . macropart%A_Index%
			}
			;Send, %sndmcr%
			;calc処理
			Loop{
				if(RegExMatch(sndmcr, "i)`{calc ([\d\+\-\*/%\^\(\)]+)`}",SubPat)<>0)
					sndmcr := RegExReplace(sndmcr, "i)`{calc [\d\+\-\*/%\^\(\)]+`}", kaiseki(SubPat1),nl,1)
				else
					break
			}
			;wait処理
			Loop{
				;matchStr1 : sleep時間(秒)
				matchPos := RegExMatch(sndmcr,"i)`{wait (\d+)`}",matchStr)
				if(matchPos = 0){
					Send,%sndmcr%
					break
				}
				;Msgbox,%matchPos%,%matchStr%,%matchStr1%
				StringLeft, temp,sndmcr,% (matchPos-1)
				Send,%temp%
				;Sleep,%matchStr1%
				;Escで中断
				time1000 := matchStr1 / 1000
				KeyWait, Esc, D T%time1000%
				if ErrorLevel = 0
				{
					break outer
				}
				StringLen,matchLen,matchStr
				cutnum := matchPos+matchLen-1
				StringTrimLeft,sndmcr,sndmcr,%cutnum%
			}
			;Escで中断
			GetKeyState, state, Esc, P
			if state = D
			{
				break
			}
		}
		;先頭が-で無いのならば１に戻す
		if (SubStr(macronum, 1, 1) <> "+")
			macronum := 1
	}else if(fstate=="MH"){
		MouseGetPos, xpos, ypos
		InputBox,ipt,Macro%chr% (Esc makes the macro cancel),{UP}{LEFT}{RIGHT}{DOWN}{HOME}{END}{PgUp}{PgDn}`n{TAB}{BS}{DEL}{ENTER}{INS}{Esc}{AppsKey}`n^:Ctrl !:Alt +:Shift #:Window ``increment```n{Click`,%xpos%`,%ypos%`,Right`,Down} : Right mouse down at Mpointer`n{Wait 1000} : Wait 1000ms  {Calc (1+2)*3} : 9 [use+-*/^`%()],,,,,,,,% macro%chr%
		if ErrorLevel = 0
			macro%chr% := ipt
	}else if(fstate=="HM"){
		InputBox,ipt,Macro Loop,Macro Loop`n+n keeps n,,160,130,,,,,%macronum%
		if ErrorLevel = 0
			macronum := ipt
	}
}
kaiseki(siki){
	Loop{
		if(RegExMatch(siki, "\(([\d\+\-]+)\)",SubPat)<>0){
			siki := RegExReplace(siki, "\([\d\+\-]+\)", kaiseki(SubPat1),nl,1)
		}else if(RegExMatch(siki, "(\d+)(\^)(\d+)",SubPat)<>0){
			siki := RegExReplace(siki, "\d+\^\d+", calc(SubPat1,SubPat2,SubPat3),nl,1)
		}else if(RegExMatch(siki, "(\d+)([\*/%])(\d+)",SubPat)<>0){
			siki := RegExReplace(siki, "\d+[\*/%]\d+", calc(SubPat1,SubPat2,SubPat3),nl,1)
		}else if(RegExMatch(siki, "(\d+)([\+\-])(\d+)",SubPat)<>0){
			siki := RegExReplace(siki, "\d+[\+\-]\d+", calc(SubPat1,SubPat2,SubPat3),nl,1)
		}else{
			break
		}
	}
	return siki
}
calc(num1,ope,num2){
	if(ope=="+"){
		return (num1+num2)
	}else if(ope=="-"){
		return (num1-num2)
	}else if(ope=="*"){
		return (num1*num2)
	}else if(ope=="/"){
		return (num1//num2)
	}else if(ope=="^"){
		return (num1**num2)
	}else if(ope=="%"){
		return (mod(num1,num2))
	}
}
whenSM(key){
	if(key == "j")
		moveMouse(-1)
	else if(key == "k")
		moveMouse(,1)
	else if(key == "l")
		moveMouse(1)
	else if(key == "i")
		moveMouse(,-1)
	else if(key == "u")
		click,L
	else if(key == "o")
		click,R
	else if(key == "p")
		click,WU
	else if(key == ";")
		click,WD
	else if(key == "y"){
		GetKeyState, state, LButton, P
		if state = U
			click,L,D
		else if state = D
			click,L,U
	}else if(key == "h"){
		GetKeyState, state, RButton, P
		if state = U
			click,R,D
		else if state = D
			click,R,U
	}
}

moveMouse(x=0,y=0){
	GetKeyState, state, D, P
	if state = D
	{
		MouseMove,x*30,y*30,,R
		return
	}
	GetKeyState, state, E, P
	if state = D
	{
		MouseMove, x*10,y*10,,R
		return
	}
	MouseMove, x*100,y*100,,R
}

MenuAction:
;numSelected:=SubStr(A_ThisMenuItem,2,1)
numSelected:=A_ThisMenuItemPos-1
zeroOfSel:=(numSelected<10)? "0" : ""
clipNTmp := numSelected
clipboard := clip%zeroOfSel%%numSelected%
ClipWait , 1
Send,+{Ins}
return

MenuActionF:
Loop, %clipNum%{
	indm := A_Index - 1
	zeroiltn:=(indm<10)? "0" : ""
	if(gpaste == clip%zeroiltn%%indm%){
		clipNTmp := indm
		break
	}
}
clipboard := gpaste
ClipWait , 1
Send,+{Ins}
return

OnClipboardChange:
if(clipboard=="")
	return
Loop, %clipNTmp%{
	preNum:=clipNTmp-A_Index
	aftNum:=clipNTmp-A_Index+1
	zeroOfpre:=(preNum<10)? "0" : ""
	zeroOfaft:=(aftNum<10)? "0" : ""
	clip%zeroOfaft%%aftNum% := clip%zeroOfpre%%preNum%
}
if(clipNum<>clipNTmp)
	clipNTmp:=clipNum
else if(clipNum<20){
	clipNum++
	clipNTmp++
}
clip00 := clipboard
return