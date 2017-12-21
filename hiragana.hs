module Hiragana where

import qualified Prelude
import Data.Set

(++) = (Prelude.++)

hiragana = ['ぁ'..'ゟ'] -- as defined in the hiragana unicode block

-- Hiragana (char)

-- Special hiragana
kurikaeshi       = 'ゝ'
kurikaeshiDakuon = 'ゞ'
yori             = 'ゟ'
dakuten          = '゛'
handakuten       = '゜'
combiningDakuten = '゙'
--combiningHandakuten = ' ゚'

dakutenAll    = dakuten : combiningDakuten : []
--handakutenAll = handakuten : combiningHandakuten : []
kurikaeshiAll = kurikaeshi : kurikaeshiDakuon : []


-- All seion hiragana
a   = 'あ'
i   = 'い'
u   = 'う'
e   = 'え'
o   = 'お'
ka  = 'か'
ki  = 'き'
ku  = 'く'
ke  = 'け'
ko  = 'こ'
sa  = 'さ'
shi = 'し'
su  = 'す'
se  = 'せ'
so  = 'そ'
ta  = 'た'
chi = 'ち'
tsu = 'つ'
te  = 'て'
to  = 'と'
na  = 'な'
ni  = 'に'
nu  = 'ぬ'
ne  = 'ね'
no  = 'の'
ha  = 'は'
hi  = 'ひ'
fu  = 'ふ'
he  = 'へ'
ho  = 'ほ'
ma  = 'ま'
mi  = 'み'
mu  = 'む'
me  = 'め'
mo  = 'も'
ya  = 'や'
yu  = 'ゆ'
yo  = 'よ'
ra  = 'ら'
ri  = 'り'
ru  = 'る'
re  = 'れ'
ro  = 'ろ'
wa  = 'わ'
wi  = 'ゐ'
we  = 'ゑ'
wo  = 'を'
n   = 'ん'
-- All dakuon hiragana
ga  = 'が'
gi  = 'ぎ'
gu  = 'ぐ'
ge  = 'げ'
go  = 'ご'
za  = 'ざ'
ji  = 'じ'
zu  = 'ず'
ze  = 'ぜ'
zo  = 'ぞ'
da  = 'だ'
dji = 'ぢ'
dzu = 'づ'
de  = 'で'
doKana  = 'ど'
ba  = 'ば'
bi  = 'び'
bu  = 'ぶ'
be  = 'べ'
bo  = 'ぼ'
-- va  = 'わ゙'
-- vi  = 'ゐ゙'
vu  = 'ゔ'
-- ve  = 'ゑ゙'
-- vo  = 'を゙'
-- All bidakuon hiragana
-- nga = 'か゚'
-- ngi = 'き゚'
-- ngu = 'く゚'
-- nge = 'け゚'
-- ngo = 'こ゚'
pa = 'ぱ'
pi = 'ぴ'
pu = 'ぷ'
pe = 'ぺ'
po = 'ぽ'
-- All small hiragana
a'     = 'ぁ'
i'     = 'ぃ'
u'     = 'ぅ'
e'     = 'ぇ'
o'     = 'ぉ'
ka'    = 'ゕ'
ke'    = 'ゖ'
sokuon = 'っ'
ya'    = 'ゃ'
yu'    = 'ゅ'
yo'    = 'ょ'
wa'    = 'ゎ'

-- Hiragana rows

-- All seion rows
aRowSeion  = a  : i   : u   : e  : o  : []
kaRowSeion = ka : ki  : ku  : ke : ko : []
saRowSeion = sa : shi : su  : se : so : []
taRowSeion = ta : chi : tsu : te : to : []
naRowSeion = na : ni  : nu  : ne : no : []
haRowSeion = ha : hi  : fu  : he : ho : []
maRowSeion = ma : mi  : mu  : me : mo : []
yaRowSeion = ya       : yu       : yo : []
raRowSeion = ra : ri  : ru  : re : ro : []
waRowSeion = wa : wi        : we : wo : []
-- All dakuon rows
vaRow = vu : [] -- TODO: Replace with below
--vaRow = va : vi  : vu  : ve : vo : []
gaRow = ga : gi  : gu  : ge : go : []
zaRow = za : ji  : zu  : ze : zo : []
daRow = da : dji : dzu : de : doKana : []
baRow = ba : bi  : bu  : be : bo : []
-- All bidakuon rows
paRow = pa : pi : pu : pe : po : []
--ngaRow = nga : ngi : ngu : nge : ngo : []

--  columns

aColumnSeion = a : ka : sa  : ta  : na : ha : ma : ya : ra : wa : []
iColumnSeion = i : ki : shi : chi : ni : hi : mi      : ri : wi : []
uColumnSeion = u : ku : su  : tsu : nu : fu : mu : yu : ru      : []
eColumnSeion = e : ke : se  : te  : ne : he : me      : re : we : []
oColumnSeion = o : ko : so  : to  : no : ho : mo : yo : ro : wo : []

-- Vocalization groups

seion    = aColumnSeion ++ iColumnSeion ++ uColumnSeion ++ eColumnSeion ++ oColumnSeion
dakuon   = gaRow ++ zaRow ++ daRow ++ baRow ++ vaRow
bidakuon = paRow -- ++ ngaRow
--hiseion  = hiragana \\ seion -- In the strictest sense
small    = a' : i' : u' : e' : o' : ka' : ke' : sokuon : ya' : yu' : yo' : wa' : []
