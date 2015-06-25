CoordMode,Mouse,Screen

SMODE := 1
RMODE := 2
TMODE := 3
KMODE := 4
gmode := RMODE
gimode := "S"
fstate := ""
flag := 0
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
clipNum:=0
clipNTmp:=0
; この時間(ms)内に次の入力があった場合は「同時」と見なしま

MaximalGT:=40
WinGetPos, , , , tbHeight, ahk_class Shell_TrayWnd
vWinWidth := A_ScreenWidth
hWinWidth := A_ScreenWidth / 2
vWinHeight := (A_ScreenHeight - tbHeight) / 2
hWinHeight := A_ScreenHeight - tbHeight

; Single Key Wait はキーを押してからタイマーで確定するまでの時間です

SingleKeyWait:=MaximalGT


singleStrokeS_Q=-	;ぱ
singleStrokeS_W=ni	;け
singleStrokeS_E=ha	;こ
singleStrokeS_R=`,	;て
singleStrokeS_T=ti	;ー
singleStrokeS_Y=gu	;ぽ
singleStrokeS_U=ba	;ん
singleStrokeS_I=ko	;り
singleStrokeS_O=ga	;つ
singleStrokeS_P=hi	;づ
singleStrokeS_AT=ge	;う゛
singleStrokeS_A=no	;は
singleStrokeS_S=to	;か
singleStrokeS_D=ka	;し
singleStrokeS_F=nn	;と
singleStrokeS_G=xtu	;た
singleStrokeS_H=ku	;く
singleStrokeS_J=u	;う
singleStrokeS_K=i	;い
singleStrokeS_L=si	;の
singleStrokeS_SColon=na	;き
singleStrokeS_Colon=/	;き
singleStrokeS_Z=su	;せ
singleStrokeS_X=ma	;お
singleStrokeS_C=ki	;に
singleStrokeS_V=ru	;な
singleStrokeS_B=tu	;さ
singleStrokeS_N=te	;っ
singleStrokeS_M=ta	;る
singleStrokeS_Comma=de	;す
singleStrokeS_Dot=.	;ら
singleStrokeS_Slash=bu	;ち
singleStrokeS_1=1
singleStrokeS_2=2
singleStrokeS_3=3
singleStrokeS_4=4
singleStrokeS_5=5
singleStrokeS_6=6
singleStrokeS_7=7
singleStrokeS_8=8
singleStrokeS_9=9
singleStrokeS_0=0
singleStrokeS_F1={F1}
singleStrokeS_F2={F2}
singleStrokeS_F3={F3}
singleStrokeS_F4={F4}
singleStrokeS_F5={F5}
singleStrokeS_F6={F6}
singleStrokeS_F7={F7}
singleStrokeS_F8={F8}
singleStrokeS_F9={F9}
singleStrokeS_F10={F10}
singleStrokeS_F11={F11}
singleStrokeS_F12={F12}

singleStrokeK_Q=o	;ぱ
singleStrokeK_W=sa	;け
singleStrokeK_E=ko	;こ
singleStrokeK_R=he	;て
singleStrokeK_T=.	;ー
singleStrokeK_Y=`,	;ぽ
singleStrokeK_U=ru	;ん
singleStrokeK_I=su	;り
singleStrokeK_O=tu	;つ
singleStrokeK_P=ri	;づ
singleStrokeK_AT=ltu	;う゛
singleStrokeK_A=te	;は
singleStrokeK_S=ta	;か
singleStrokeK_D=ka	;し
singleStrokeK_F=u	;と
singleStrokeK_G=ku	;た
singleStrokeK_H=ki	;く
singleStrokeK_J=si	;う
singleStrokeK_K=i	;い
singleStrokeK_L=nn	;の
singleStrokeK_SColon=to	;き
singleStrokeK_Colon=-	;き
singleStrokeK_Z=ra	;せ
singleStrokeK_X=se	;お
singleStrokeK_C=ma	;に
singleStrokeK_V=hi	;な
singleStrokeK_B=.	;さ
singleStrokeK_N=`,	;っ
singleStrokeK_M=ltu	;る
singleStrokeK_Comma=so	;す
singleStrokeK_Dot=ya	;ら
singleStrokeK_Slash=re	;ち
singleStrokeK_1=1
singleStrokeK_2=2
singleStrokeK_3=3
singleStrokeK_4=4
singleStrokeK_5=5
singleStrokeK_6=6
singleStrokeK_7=7
singleStrokeK_8=8
singleStrokeK_9=9
singleStrokeK_0=0
singleStrokeS_F1={F1}
singleStrokeS_F2={F2}
singleStrokeS_F3={F3}
singleStrokeS_F4={F4}
singleStrokeS_F5={F5}
singleStrokeS_F6={F6}
singleStrokeS_F7={F7}
singleStrokeS_F8={F8}
singleStrokeS_F9={F9}
singleStrokeS_F10={F10}
singleStrokeS_F11={F11}
singleStrokeS_F12={F12}



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

; 各キーに同時打鍵判定のための識別フラグをわりあてます

flag_Q:=1
flag_W:=1<<1
flag_E:=1<<2
flag_R:=1<<3
flag_T:=1<<4
flag_Y:=1<<5
flag_U:=1<<6
flag_I:=1<<7
flag_O:=1<<8
flag_P:=1<<9
flag_A:=1<<10
flag_S:=1<<11
flag_D:=1<<12
flag_F:=1<<13
flag_G:=1<<14
flag_H:=1<<15
flag_J:=1<<16
flag_K:=1<<17
flag_L:=1<<18
flag_SColon:=1<<19
flag_Z:=1<<20
flag_X:=1<<21
flag_C:=1<<22
flag_V:=1<<23
flag_B:=1<<24
flag_N:=1<<25
flag_M:=1<<26
flag_Comma:=1<<27
flag_Dot:=1<<28
flag_Slash:=1<<30
flag_AT:=1<<31
flag_Colon:=1<<32
flag_Home:=1<<33
flag_End:=1<<34
flag_1:=1<<35
flag_2:=1<<36
flag_3:=1<<37
flag_4:=1<<38
flag_5:=1<<39
flag_6:=1<<40
flag_7:=1<<41
flag_8:=1<<42
flag_9:=1<<43
flag_0:=1<<44
flag_Colon:=1<<45
flag_F1:=1<<46
flag_F2:=1<<47
flag_F3:=1<<48
flag_F4:=1<<49
flag_F5:=1<<50
flag_F6:=1<<51
flag_F7:=1<<52
flag_F8:=1<<53
flag_F9:=1<<54
flag_F10:=1<<55
flag_F11:=1<<56
flag_F12:=1<<57


SHKey_Q=#1
SHKey_W=#2
SHKey_E=#3
SHKey_R=#4
SHKey_T=#5
SHKey_Y=#6
SHKey_U=#7
SHKey_I=#8
SHKey_O=#9
SHKey_P=#0
SHKey_AT={F11}
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
SHKey_Colon={F12}
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

; 同時打鍵の定義


kCmbS1:=flag_K|flag_Q	; ぁ
resultOfKCmbS1=fa
kCmbS2:=flag_K|flag_W	; み
resultOfKCmbS2=go
kCmbS3:=flag_K|flag_E	; え
resultOfKCmbS3=hu
kCmbS4:=flag_K|flag_R	; や
resultOfKCmbS4=fi
kCmbS5:=flag_K|flag_T	; ぃ
resultOfKCmbS5=fe
kCmbS6:=flag_K|flag_A	; ろ
resultOfKCmbS6=ho
kCmbS7:=flag_K|flag_S	; れ
resultOfKCmbS7=zi
kCmbS8:=flag_K|flag_D	; も
resultOfKCmbS8=re
kCmbS9:=flag_K|flag_F	; あ
resultOfKCmbS9=mo
kCmbS10:=flag_K|flag_G	; よ
resultOfKCmbS10=yu
kCmbS11:=flag_K|flag_Z	; ぇ
resultOfKCmbS11=du
kCmbS12:=flag_K|flag_X	; を
resultOfKCmbS12=zo
kCmbS13:=flag_K|flag_C	; へ
resultOfKCmbS13=bo
kCmbS14:=flag_K|flag_V	; ほ
resultOfKCmbS14=mu
kCmbS15:=flag_K|flag_B	; ぉ
resultOfKCmbS15=fo
kCmbS16:=flag_D|flag_Y	; ぅ
resultOfKCmbS16=wi
kCmbS17:=flag_D|flag_U	; ぬ
resultOfKCmbS17=pa
kCmbS18:=flag_D|flag_I	; そ
resultOfKCmbS18=yo
kCmbS19:=flag_D|flag_O	; ふ
resultOfKCmbS19=mi
kCmbS20:=flag_D|flag_P	; ゎ
resultOfKCmbS20=we
kCmbS21:=flag_D|flag_H	; め
resultOfKCmbS21=he
kCmbS22:=flag_D|flag_J	; わ
resultOfKCmbS22=a
kCmbS23:=flag_D|flag_SColon	; ゆ
resultOfKCmbS23=e
kCmbS24:=flag_D|flag_N	; ひ
resultOfKCmbS24=se
kCmbS25:=flag_D|flag_M	; む
resultOfKCmbS25=ne
kCmbS26:=flag_D|flag_Comma	; ゃ
resultOfKCmbS26=be
kCmbS27:=flag_D|flag_Dot	; ゅ
resultOfKCmbS27=pu
kCmbS28:=flag_D|flag_Slash	; ょ
resultOfKCmbS28=vu
kCmbS29:=flag_L|flag_Q	; げ
resultOfKCmbS29=di
kCmbS30:=flag_L|flag_W	; げ
resultOfKCmbS30=me
kCmbS31:=flag_L|flag_E	; ご
resultOfKCmbS31=ke
kCmbS32:=flag_L|flag_R	; で
resultOfKCmbS32=thi
kCmbS33:=flag_L|flag_T	; ぴ
resultOfKCmbS33=dhi
kCmbS34:=flag_L|flag_A	; ば
resultOfKCmbS34=wo
kCmbS35:=flag_L|flag_S	; が
resultOfKCmbS35=sa
kCmbS36:=flag_L|flag_D	; じ
resultOfKCmbS36=o
kCmbS37:=flag_L|flag_F	; ど
resultOfKCmbS37=ri
kCmbS38:=flag_L|flag_G	; だ
resultOfKCmbS38=zu
kCmbS39:=flag_L|flag_Z	; ぜ
resultOfKCmbS39=ze
kCmbS40:=flag_L|flag_X	; ね
resultOfKCmbS40=za
kCmbS41:=flag_L|flag_C	; べ
resultOfKCmbS41=gi
kCmbS42:=flag_L|flag_V	; ぼ
resultOfKCmbS42=ro
kCmbS43:=flag_L|flag_B	; ざ
resultOfKCmbS43=nu
kCmbS44:=flag_S|flag_Y	; ぷ
resultOfKCmbS44=sye
kCmbS45:=flag_S|flag_U	; ぷ
resultOfKCmbS45=pe
kCmbS46:=flag_S|flag_I	; ぞ
resultOfKCmbS46=do
kCmbS47:=flag_S|flag_O	; ぶ
resultOfKCmbS47=ya
kCmbS48:=flag_S|flag_P	; ぶ
resultOfKCmbS48=zye
kCmbS49:=flag_S|flag_H	; ぐ
resultOfKCmbS49=bi
kCmbS50:=flag_S|flag_J	; ま
resultOfKCmbS50=ra
kCmbS51:=flag_S|flag_SColon	; ぎ
resultOfKCmbS51=so
kCmbS52:=flag_S|flag_N	; び
resultOfKCmbS52=wa
kCmbS53:=flag_S|flag_M	; ぺ
resultOfKCmbS53=da
kCmbS54:=flag_S|flag_Comma	; ず
resultOfKCmbS54=pi
kCmbS55:=flag_S|flag_Dot	; ゅ
resultOfKCmbS55=po
kCmbS56:=flag_S|flag_Slash	; ぢ
resultOfKCmbS56=tye
kCmbS57:=flag_I|flag_1
resultOfKCmbS57=xyu
kCmbS58:=flag_I|flag_2
resultOfKCmbS58=bya
kCmbS59:=flag_I|flag_3
resultOfKCmbS59=byu
kCmbS60:=flag_I|flag_4
resultOfKCmbS60=byo
kCmbS61:=flag_I|flag_Q
resultOfKCmbS61=hyu
kCmbS62:=flag_I|flag_W
resultOfKCmbS62=syu
kCmbS63:=flag_I|flag_E
resultOfKCmbS63=syo
kCmbS64:=flag_I|flag_R
resultOfKCmbS64=kyu
kCmbS65:=flag_I|flag_T
resultOfKCmbS65=tyu
kCmbS66:=flag_I|flag_A
resultOfKCmbS66=hyo
kCmbS67:=flag_I|flag_F
resultOfKCmbS67=kyo
kCmbS68:=flag_I|flag_G
resultOfKCmbS68=tyo
kCmbS69:=flag_I|flag_Z
resultOfKCmbS69=hya
kCmbS70:=flag_I|flag_C
resultOfKCmbS70=sya
kCmbS71:=flag_I|flag_V
resultOfKCmbS71=kya
kCmbS72:=flag_I|flag_B
resultOfKCmbS72=tya
kCmbS73:=flag_O|flag_1
resultOfKCmbS73=xyo
kCmbS74:=flag_O|flag_2
resultOfKCmbS74=pya
kCmbS75:=flag_O|flag_3
resultOfKCmbS75=pyu
kCmbS76:=flag_O|flag_4
resultOfKCmbS76=pyo
kCmbS77:=flag_O|flag_Q
resultOfKCmbS77=ryu
kCmbS78:=flag_O|flag_W
resultOfKCmbS78=zyu
kCmbS79:=flag_O|flag_E
resultOfKCmbS79=zyo
kCmbS80:=flag_O|flag_R
resultOfKCmbS80=gyu
kCmbS81:=flag_O|flag_T
resultOfKCmbS81=nyu
kCmbS82:=flag_O|flag_A
resultOfKCmbS82=ryo
kCmbS83:=flag_O|flag_F
resultOfKCmbS83=gyo
kCmbS84:=flag_O|flag_G
resultOfKCmbS84=nyo
kCmbS85:=flag_O|flag_Z
resultOfKCmbS85=rya
kCmbS86:=flag_O|flag_C
resultOfKCmbS86=zya
kCmbS87:=flag_O|flag_V
resultOfKCmbS87=gya
kCmbS88:=flag_O|flag_B
resultOfKCmbS88=nya
kCmbS89:=flag_K|flag_1
resultOfKCmbS89=xa
kCmbS90:=flag_K|flag_2
resultOfKCmbS90=xi
kCmbS91:=flag_K|flag_3
resultOfKCmbS91=xu
kCmbS92:=flag_K|flag_4
resultOfKCmbS92=xe
kCmbS93:=flag_K|flag_5
resultOfKCmbS93=xo
kCmbS94:=flag_L|flag_1
resultOfKCmbS94=xya
kCmbS95:=flag_L|flag_2
resultOfKCmbS95=mya
kCmbS96:=flag_L|flag_3
resultOfKCmbS96=myu
kCmbS97:=flag_L|flag_4
resultOfKCmbS97=myo
kCmbS98:=flag_L|flag_5
resultOfKCmbS98=xwa
kCmbS99:=flag_SColon|flag_q
resultOfKCmbS99=myu
kCmbS100:=flag_SColon|flag_w
resultOfKCmbS100=pyu
kCmbS101:=flag_SColon|flag_e
resultOfKCmbS101=pyo
kCmbS102:=flag_SColon|flag_r
resultOfKCmbS102=byu
kCmbS103:=flag_SColon|flag_t
resultOfKCmbS103=dyu
kCmbS104:=flag_SColon|flag_a
resultOfKCmbS104=myo
kCmbS105:=flag_SColon|flag_f
resultOfKCmbS105=byo
kCmbS106:=flag_SColon|flag_g
resultOfKCmbS106=dyo
kCmbS107:=flag_SColon|flag_z
resultOfKCmbS107=mya
kCmbS108:=flag_SColon|flag_c
resultOfKCmbS108=pya
kCmbS109:=flag_SColon|flag_v
resultOfKCmbS109=bya
kCmbS110:=flag_SColon|flag_b
resultOfKCmbS110=dya
kCmbS111:=flag_i|flag_x
resultOfKCmbS111=xya
kCmbS112:=flag_o|flag_x
resultOfKCmbS112=xyu
kCmbS113:=flag_SColon|flag_x
resultOfKCmbS113=xyo
kCmbS114:=flag_D|flag_AT
resultOfKCmbS114=who

; 同時打鍵パターンの総数

NumberOfKCmbS:=114



kCmbK1:=flag_K|flag_Q	; ぁ
resultOfKCmbK1=ti
kCmbK2:=flag_K|flag_W	; み
resultOfKCmbK2=yu
kCmbK3:=flag_K|flag_E	; え
resultOfKCmbK3=ro
kCmbK4:=flag_K|flag_R	; や
resultOfKCmbK4=pe
kCmbK5:=flag_K|flag_T	; ぃ
resultOfKCmbK5=pu
kCmbK6:=flag_K|flag_A	; ろ
resultOfKCmbK6=na
kCmbK7:=flag_K|flag_S	; れ
resultOfKCmbK7=e
kCmbK8:=flag_K|flag_D	; も
resultOfKCmbK8=mo
kCmbK9:=flag_K|flag_F	; あ
resultOfKCmbK9=ha
kCmbK10:=flag_W|flag_Y	; よ
resultOfKCmbK10=dyo
kCmbK11:=flag_K|flag_Z	; ぇ
resultOfKCmbK11=hu
kCmbK12:=flag_K|flag_X	; を
resultOfKCmbK12=pa
kCmbK13:=flag_K|flag_C	; へ
resultOfKCmbK13=po
kCmbK14:=flag_K|flag_V	; ほ
resultOfKCmbK14=pi
kCmbK15:=flag_K|flag_B	; ぉ
resultOfKCmbK15=`[
kCmbK16:=flag_D|flag_Y	; ぅ
resultOfKCmbK16=`]
kCmbK17:=flag_D|flag_U	; ぬ
resultOfKCmbK17=a
kCmbK18:=flag_D|flag_I	; そ
resultOfKCmbK18=yo
kCmbK19:=flag_D|flag_O	; ふ
resultOfKCmbK19=mu
kCmbK20:=flag_D|flag_P	; ゎ
resultOfKCmbK20=ho
kCmbK21:=flag_D|flag_H	; め
resultOfKCmbK21=mi
kCmbK22:=flag_D|flag_J	; わ
resultOfKCmbK22=ni
kCmbK23:=flag_D|flag_SColon	; ゆ
resultOfKCmbK23=no
kCmbK24:=flag_W|flag_H	; ひ
resultOfKCmbK24=dyo
kCmbK25:=flag_D|flag_M	; む
resultOfKCmbK25=ke
kCmbK26:=flag_W|flag_N	; ゃ
resultOfKCmbK26=dya
kCmbK27:=flag_W|flag_U	; ゅ
resultOfKCmbK27=ju
kCmbK28:=flag_W|flag_J	; ょ
resultOfKCmbK28=jo
kCmbK29:=flag_L|flag_Q	; げ
resultOfKCmbK29=di
kCmbK30:=flag_L|flag_W	; げ
resultOfKCmbK30=za
kCmbK31:=flag_L|flag_E	; ご
resultOfKCmbK31=go
kCmbK32:=flag_L|flag_R	; で
resultOfKCmbK32=be
kCmbK33:=flag_W|flag_M	; ぴ
resultOfKCmbK33=ja
kCmbK34:=flag_L|flag_A	; ば
resultOfKCmbK34=de
kCmbK35:=flag_L|flag_S	; が
resultOfKCmbK35=da
kCmbK36:=flag_L|flag_D	; じ
resultOfKCmbK36=ga
kCmbK37:=flag_L|flag_F	; ど
resultOfKCmbK37=ba
kCmbK38:=flag_L|flag_G	; だ
resultOfKCmbK38=gu
kCmbK39:=flag_L|flag_Z	; ぜ
resultOfKCmbK39=bu
kCmbK40:=flag_L|flag_X	; ね
resultOfKCmbK40=ze
kCmbK41:=flag_L|flag_C	; べ
resultOfKCmbK41=ne
kCmbK42:=flag_L|flag_V	; ぼ
resultOfKCmbK42=bi
kCmbK43:=flag_E|flag_Y	; ざ
resultOfKCmbK43=chu
kCmbK44:=flag_E|flag_H	; ぷ
resultOfKCmbK44=cho
kCmbK45:=flag_S|flag_U	; ぷ
resultOfKCmbK45=me
kCmbK46:=flag_S|flag_I	; ぞ
resultOfKCmbK46=zu
kCmbK47:=flag_S|flag_O	; ぶ
resultOfKCmbK47=du
kCmbK48:=flag_S|flag_P	; ぶ
resultOfKCmbK48=bo
kCmbK49:=flag_S|flag_H	; ぐ
resultOfKCmbK49=gi
kCmbK50:=flag_S|flag_J	; ま
resultOfKCmbK50=ji
kCmbK51:=flag_S|flag_SColon	; ぎ
resultOfKCmbK51=do
kCmbK52:=flag_E|flag_N	; び
resultOfKCmbK52=cha
kCmbK53:=flag_S|flag_M	; ぺ
resultOfKCmbK53=ge
kCmbK54:=flag_S|flag_Comma	; ず
resultOfKCmbK54=zo
kCmbK55:=flag_S|flag_Dot	; ゅ
resultOfKCmbK55=/
kCmbK56:=flag_S|flag_Slash	; ぢ
resultOfKCmbK56=nu
kCmbK57:=flag_E|flag_U
resultOfKCmbK57=shu
kCmbK58:=flag_E|flag_J
resultOfKCmbK58=sho
kCmbK59:=flag_E|flag_M
resultOfKCmbK59=sha
kCmbK60:=flag_A|flag_Y
resultOfKCmbK60=myu
kCmbK61:=flag_A|flag_H
resultOfKCmbK61=myo
kCmbK62:=flag_A|flag_N
resultOfKCmbK62=mya
kCmbK63:=flag_A|flag_U
resultOfKCmbK63=ryu
kCmbK64:=flag_I|flag_R
resultOfKCmbK64=kyu
kCmbK65:=flag_I|flag_T
resultOfKCmbK65=hyu
kCmbK66:=flag_A|flag_J
resultOfKCmbK66=ryo
kCmbK67:=flag_I|flag_F
resultOfKCmbK67=kyo
kCmbK68:=flag_I|flag_G
resultOfKCmbK68=hyo
kCmbK69:=flag_A|flag_M
resultOfKCmbK69=rya
kCmbK70:=flag_SColon|flag_R
resultOfKCmbK70=nyu
kCmbK71:=flag_I|flag_V
resultOfKCmbK71=kya
kCmbK72:=flag_I|flag_B
resultOfKCmbK72=hya
kCmbK73:=flag_SColon|flag_F
resultOfKCmbK73=nyo
kCmbK74:=flag_SColon|flag_V
resultOfKCmbK74=nya
kCmbK75:=flag_SColon|flag_T
resultOfKCmbK75=pyu
kCmbK76:=flag_SColon|flag_G
resultOfKCmbK76=pyo
kCmbK77:=flag_SColon|flag_V
resultOfKCmbK77=pya
kCmbK78:=flag_J|flag_F
resultOfKCmbK78=wo
kCmbK79:=flag_H|flag_G
resultOfKCmbK79=wi
kCmbK80:=flag_O|flag_R
resultOfKCmbK80=gyu
kCmbK81:=flag_O|flag_T
resultOfKCmbK81=byu
kCmbK82:=flag_H|flag_R
resultOfKCmbK82=we
kCmbK83:=flag_O|flag_F
resultOfKCmbK83=gyo
kCmbK84:=flag_O|flag_G
resultOfKCmbK84=hyo
kCmbK85:=flag_H|flag_T
resultOfKCmbK85=wo
kCmbK86:=flag_H|flag_Y
resultOfKCmbK86=dolu
kCmbK87:=flag_O|flag_V
resultOfKCmbK87=gya
kCmbK88:=flag_O|flag_B
resultOfKCmbK88=bya
kCmbK89:=flag_H|flag_U
resultOfKCmbK89=tolu
kCmbK90:=flag_H|flag_Z
resultOfKCmbK90=vo
kCmbK91:=flag_H|flag_X
resultOfKCmbK91=ve
kCmbK92:=flag_H|flag_C
resultOfKCmbK92=vi
kCmbK93:=flag_H|flag_V
resultOfKCmbK93=va
kCmbK94:=flag_H|flag_B
resultOfKCmbK94=vyu
kCmbK95:=flag_H|flag_N
resultOfKCmbK95=gwa
kCmbK96:=flag_H|flag_M
resultOfKCmbK96=kwa
kCmbK97:=flag_H|flag_Comma
resultOfKCmbK97=kwi
kCmbK98:=flag_H|flag_Colon
resultOfKCmbK98=kwe
kCmbK99:=flag_H|flag_SColon
resultOfKCmbK99=kwo
kCmbK100:=flag_J|flag_G
resultOfKCmbK100=thi
kCmbK101:=flag_J|flag_R
resultOfKCmbK101=che
kCmbK102:=flag_J|flag_T
resultOfKCmbK102=dye
kCmbK103:=flag_J|flag_Z
resultOfKCmbK103=fo
kCmbK104:=flag_J|flag_X
resultOfKCmbK104=fe
kCmbK105:=flag_J|flag_C
resultOfKCmbK105=fi
kCmbK106:=flag_J|flag_V
resultOfKCmbK106=fa
kCmbK107:=flag_J|flag_B
resultOfKCmbK107=thu
kCmbK108:=flag_F|flag_U
resultOfKCmbK108=she
kCmbK109:=flag_F|flag_U
resultOfKCmbK109=je
kCmbK110:=flag_F|flag_H
resultOfKCmbK110=dhi
kCmbK111:=flag_f|flag_n
resultOfKCmbK111=dhu
kCmbK112:=flag_k|flag_g
resultOfKCmbK112=wa
; 同時打鍵パターンの総数

NumberOfKCmbK:=112




; キーバッファ
; bufKey には _Q のような名前（文字列）が格納されます
; bufTime はキーが押された時刻です

bufKey:=0
bufTime:=0
gDownKeyName:=0


;==================================
; IME 状態チェック GUIThreadInfo 利用版
;=================================
; 構造体 GUITreadInfo
;typedef struct tagGUITHREADINFO {
; DWORD cbSize;
; DWORD flags;
; HWND hwndActive;
; HWND hwndFocus;
; HWND hwndCapture;
; HWND hwndMenuOwner;
; HWND hwndMoveSize;
; HWND hwndCaret;
; RECT rcCaret;
;} GUITHREADINFO, *PGUITHREADINFO;

;===========================================================================
; IME 入力モード (どの IMEでも共通っぽい)
;   DEC  HEX    BIN
;     0 (0x00  0000 0000) かな    半英数
;     3 (0x03  0000 0011)         半ｶﾅ
;     8 (0x08  0000 1000)         全英数
;     9 (0x09  0000 1001)         ひらがな
;    11 (0x0B  0000 1011)         全カタカナ
;    16 (0x10  0001 0000) ローマ字半英数
;    19 (0x13  0001 0011)         半ｶﾅ
;    24 (0x18  0001 1000)         全英数
;    25 (0x19  0001 1001)         ひらがな
;    27 (0x1B  0001 1011)         全カタカナ

;  ※ 地域と言語のオプション - [詳細] - 詳細設定
;     - 詳細なテキストサービスのサポートをプログラムのすべてに拡張する
;    が ONになってると値が取れない模様 
;    (Google日本語入力βはここをONにしないと駄目なので値が取れないっぽい)

IME_IfRomaKana(WinTitle="A")  {
	ControlGet,hwnd,HWND,,,%WinTitle%
	if	(WinActive(WinTitle))	{
		ptrSize := !A_PtrSize ? 4 : A_PtrSize
	    VarSetCapacity(stGTI, cbSize:=4+4+(PtrSize*6)+16, 0)
	    NumPut(cbSize, stGTI,  0, "UInt")   ;	DWORD   cbSize;
		hwnd := DllCall("GetGUIThreadInfo", Uint,0, Uint,&stGTI)
	             ? NumGet(stGTI,8+PtrSize,"UInt") : hwnd
	}
    imeget := DllCall("SendMessage"
          , UInt, DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hwnd)
          , UInt, 0x0283  ;Message : WM_IME_CONTROL
          ,  Int, 0x0005  ;wParam  : IMC_GETOPENSTATUS
          ,  Int, 0)      ;lParam  : 0
    if (imeget = 1) {
	    imegetconvmode := DllCall("SendMessage"
	          , UInt, DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hwnd)
	          , UInt, 0x0283  ;Message : WM_IME_CONTROL
	          ,  Int, 0x001   ;wParam  : IMC_GETCONVERSIONMODE
	          ,  Int, 0)      ;lParam  : 0
	    if (imegetconvmode = 9 || imegetconvmode = 19 || imegetconvmode = 25 || imegetconvmode = 27 || imegetconvmode = 16) {
	    	return 1
	    }
    }
    return 0
}

;================
; 同時打鍵の判定
;================

;=================================
; キーを押し込くんでも即座には入力されません
; 入力を確定するタイミングは次の２つです
; 
; 1. 次のキーが押されたとき (onKeyDown)
; 2. ある程度の時間が経過したとき (確定タイマー)
; 
; 確定タイマーはキーが押されたときにセット/リセットされ、
; 入力が確定したときに解除されます
; 確定タイマーはonKeyUp ルーチンを呼びます
;=================================


outputChar(string){
	send, %string%
}

onKeyUp:
	if(bufKey)
	{
	outputChar(singleStroke%gimode%%bufKey%)
	bufKey:=0
	}
	setTimer, onKeyUp, Off
Return

onKeyDown(keyName){
	global gDownKeyName,fstate,flag,gmode,SMODE,RMODE,TMODE,KMODE
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
			Send,#^%key%
		else if(fstate=="KS")
			Send,#+%key%
		else if(fstate=="AH")
			Send,!^%key%
		else if(fstate=="AS")
			Send,!+%key%
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
	if(gmode==TMODE || ((gmode==SMODE || gmode==KMODE) && IME_IfRomaKana()) ){
		gDownKeyName:=keyName
		GoSub onOnKeyDown
		return
	}
	key := defaultKey%keyName%
	GetKeyState, state, CapsLock, T ; D if CapsLock is ON or U otherwise.
	if state = D
		StringUpper, key, key
	send, %key%
}

onOnKeyDown:
	inputTime:=A_TickCount

	if(bufKey){
	; GapTime が許容値内であるか
	if( inputTime-bufTime <= MaximalGT )
	{
	currentKeyPattern:=flag%gDownKeyName%|flag%bufKey%
	numOfLoop := NumberOfKCmb%gimode%
	Loop, %numOfLoop%
	{
	; 押下中の組み合わせが定義されているか
	if( KCmb%gimode%%A_Index% == currentKeyPattern)
	{
	; 同時打鍵を出力、バッファとタイマーをクリア
	outputChar( resultOfKCmb%gimode%%A_Index%)
	bufKey:=0
	setTimer, onKeyUp, Off
	Return
	}
	}
	}
	; 同時打鍵でなかったらバッファを確定
	outputChar( singleStroke%gimode%%bufKey%)
	}
	; バッファ更新、タイマー設定
	bufTime:=inputTime
	bufKey:=gDownKeyName
	setTimer, onKeyUp, %SingleKeyWait%

	gDownKeyName:=0
Return


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
	}else if(fstate == "SM" && flag == 0){
		Send,+{ENTER}
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
	withFuncKey("-","=","%","~")
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
	withFuncKey("$","{#}","&","{^}")
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
	withFuncKey("{!}","/*  */{LEFT 3}","{END}+{HOME}^x\begin{{}^v{}}{ENTER 2}\end{{}^v{}}{UP}")
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
		if(A_OSVersion=="WIN_7" || A_OSVersion=="WIN_8" || A_OSVersion=="WIN_8.1")
			Send,#{RIGHT}
		else
			WinMove,A,, %hWinWidth%, 0, %hWinWidth%, %hWinHeight%
	}else if(fstate=="HM"){
		if(A_OSVersion=="WIN_7" || A_OSVersion=="WIN_8" || A_OSVersion=="WIN_8.1")
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
		if t =
			t := 255
		t := t - 30
		if t >= 255
			WinSet, Transparent, Off, A
		else if t <= 45
			WinSet, Transparent, 45, A
		else
			WinSet, Transparent, %t%, A
	} else if(fstate=="HM"){
		WinGet, t, Transparent, A	; 半透明にする（トグル）
		if t =
			t := 255
		t := t + 30
		if t >= 255
			WinSet, Transparent, Off, A
		else if t <= 45
			WinSet, Transparent, 45, A
		else
			WinSet, Transparent, %t%, A
	} else if(fstate=="MS"){
		WinSet, Style, ^0xC00000, A
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
;		Loop, %clipNum%{
;			decIndex := A_Index-1
;			zeroIfltTen := (decIndex<10)? "0" : ""
;			endChr := (StrLen(clip%zeroIfltTen%%decIndex%)>32)? "..." : ""
;			StringLeft, text, clip%zeroIfltTen%%decIndex%, 32
;			Menu, mymenu, Add,%decIndex% %text%%endChr%,MenuAction
;		}
;		if(gpaste<>""){
;			;指定文字列以上で余剰分を消して"..."を表示
;			endChr := (StrLen(gpaste)>32)? "..." : ""
;			StringLeft, text, gpaste, 32
;			Menu, mymenu, Add
;			Menu, mymenu, Add, %text%%endChr%,MenuActionF
;		}
;		if(clipNum<>0){
;			fstate:=""
;			Menu, mymenu, Show
;			Menu, mymenu, Delete
;		}
		Gui, -Border
		Gui, Margin, 0, 0
		Gui, Add, Listview, NoSort R%clipNum% gMyPasteBox, Column
		Gui,Add,Button,gOnEnter Hidden Default
		Loop, %clipNum% {
			decIndex := A_Index-1
			zeroIfltTen := (decIndex<10)? "0" : ""
			tmp := clip%zeroIfltTen%%decIndex%
			LV_Add("", tmp)
		}
		LV_Modify(1, "Focus")
		LV_Modify(1, "Select")
		MouseGetPos, xpos, ypos
		Gui, show, X%xpos% Y%ypos%
	}else if(fstate=="MH"){
		gpaste := clip00
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
process1(){
	global gmode,SMODE,gimode
	gmode:=SMODE
	gimode:="S"
}
process2(){
	global gmode,RMODE,gimode
	gmode:=RMODE
	gimode:=""
}
process3(){
	global gmode,TMODE,gimode
	gmode:=TMODE
}
process4(){
	global gmode,KMODE,gimode
	gmode:=KMODE
	gimode:="K"
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
	}else if(key == "q"){
		;SoundSet, 0, , mute
		;SoundSet +2  ; Increase master volume by 2%
		Send,{VOLUME_UP}
	}else if(key == "a") {
		;SoundSet, +1, , mute  ; Toggle the master mute (set it to the opposite state)
		Send,{VOLUME_MUTE}
	}else if(key == "z"){
		;SoundSet, 0, , mute
		;SoundSet -2  ; Decrease master volume by 2%
		Send,{VOLUME_DOWN}
	}else if(key == "r")
		Send,{MEDIA_NEXT}
	else if(key == "f")
		Send,{MEDIA_PLAY_PAUSE}
	else if(key == "v")
		Send,{MEDIA_PREV}
	else if(key == "n"){
		WinGetPos, X, Y, Width, Height, A
		;最小化ではないとき
		if(X>=0){
			MouseMove, X, Y
		}
	}else if(key == "m"){
		WinGetPos, X, Y, Width, Height, A
		;最小化ではないとき
		if(X>=0){
			MouseMove, X+Width, Y+Height
		}
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
	GetKeyState, state, C, P
	if state = D
	{
		MouseMove, x*A_ScreenWidth/4,y*A_ScreenHeight/4,,R
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
MyPasteBox:
	if A_GuiEvent = DoubleClick
		pasteAction(A_EventInfo)
return
OnEnter:
	GuiControlGet, FocusedControl, Focus
	if FocusedControl = SysListView321
		pasteAction(LV_GetNext(1,"F"))
return
GuiEscape:
GuiClose:
	GUI, Destroy
return


pasteAction(row){
	global clipNum, clip00, clip01, clip02, clip03, clip04, clip05, clip06, clip07, clip08, clip09, clip10, clip11, clip12, clip13, clip14, clip15, clip16, clip17, clip18, clip19,fstate,gpaste,clipNum,clipNTmp
	GUI, Destroy
	if row = 0 ;なぜか1番目enterの時が効かないので
		row := 1
	clipNTmp := row-1
	zeroiltn:=(clipNTmp<10)? "0" : ""
	clipboard := clip%zeroiltn%%clipNTmp%
	ClipWait , 1
	Send,+{Ins}
}