;vk1Dsc07B = 無変換，vk1Csc079 = 変換，vkF2sc070 = カタカナひらがな

;移動キー
vk1Dsc07B & I::Send,{Blind}{Up}				;無変換 ＋ I = ↑
vk1Dsc07B & J::Send,{Blind}{Left}			;無変換 ＋ J = ←
vk1Dsc07B & K::Send,{Blind}{Down}			;無変換 ＋ K = →
vk1Dsc07B & L::Send,{Blind}{Right}			;無変換 ＋ L = ↓

vk1Dsc07B & U::Send,{Blind}{Home}			;無変換 + U = Home
vk1Dsc07B & O::Send,{Blind}{End}			;無変換 + O = End
vk1Dsc07B & P::Send,{Blind}{PGUP}			;無変換 + P = PageUp
vk1Dsc07B & `;::Send,{Blind}{PGDN}			;無変換 + ; = PageDown


;文字入力補助キー
vk1Dsc07B & Space::Send,{Blind}{Enter}			;無変換 + Space = Enter
vk1Dsc07B & vk1Csc079::Send,{Blind}{TAB}		;無変換 + 変換 = Tab
vk1Dsc07B & <::Send,{Blind}{Space}			;無変換 + < = Space
vk1Dsc07B & N::Send,{Blind}{BS}				;無変換 + N = BackSpace
vk1Dsc07B & M::Send,{Blind}{Del}			;無変換 + M = Delete

;便利キー
vk1Dsc07B & ?::Send,{Blind}{!}
vk1Dsc07B & A::Send,{Blind}[]{Left}
vk1Dsc07B & S::Send,{Blind}(){Left}

