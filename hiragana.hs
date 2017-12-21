module Hiragana where

import qualified Prelude
import Data.Set

(++) = (Prelude.++)

hiraganaAll = ['ぁ'..'ゟ'] -- as defined in the hiragana unicode block, including special characters
hiragana    = ['ぁ'..'ゖ']

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
yaRowSeion = ya :       yu  :      yo : []
raRowSeion = ra : ri  : ru  : re : ro : []
waRowSeion = wa : wi  :       we : wo : []
-- All dakuon rows
vaRow = vu : [] -- TODO: Replace with below
--vaRow = va : vi  : vu  : ve : vo : []
gaRow = ga : gi  : gu  : ge : go     : []
zaRow = za : ji  : zu  : ze : zo     : []
daRow = da : dji : dzu : de : doKana : []
baRow = ba : bi  : bu  : be : bo     : []
-- All bidakuon rows
paRow = pa : pi : pu : pe : po : []
--ngaRow = nga : ngi : ngu : nge : ngo : []

-- Hiragana columns

aColumnSeion = a : ka : sa  : ta  : na : ha : ma : ya : ra : wa : []
iColumnSeion = i : ki : shi : chi : ni : hi : mi :      ri : wi : []
uColumnSeion = u : ku : su  : tsu : nu : fu : mu : yu : ru :      []
eColumnSeion = e : ke : se  : te  : ne : he : me :      re : we : []
oColumnSeion = o : ko : so  : to  : no : ho : mo : yo : ro : wo : []

-- Vocalization groups

seion    = aColumnSeion ++ iColumnSeion ++ uColumnSeion ++ eColumnSeion ++ oColumnSeion
dakuon   = gaRow ++ zaRow ++ daRow ++ baRow ++ vaRow
bidakuon = paRow -- ++ ngaRow
--hiseion  = hiragana \\ seion -- In the strictest sense
small    = a' : i' : u' : e' : o' : ka' : ke' : sokuon : ya' : yu' : yo' : wa' : []

-- Groups regardless of vocalization
aAll   = a   :                a'     : []
iAll   = i   :                i'     : []
uAll   = u   : vu     :       u'     : []
eAll   = e   :                e'     : []
oAll   = o   :                o'     : []
kaAll  = ka  : ga     :       ka'    : [] -- TODO include nga
kiAll  = ki  : gi     :                [] -- TODO include ngi
kuAll  = ku  : gu     :                [] -- TODO include ngu
keAll  = ke  : ge     :       ke'    : [] -- TODO include nge
koAll  = ko  : go     :                [] -- TODO include ngo
saAll  = sa  : za     :                []
shiAll = shi : ji     :                []
suAll  = su  : zu     :                []
seAll  = se  : ze     :                []
soAll  = so  : zo     :                []
taAll  = ta  : da     :                []
chiAll = chi : dji    :                []
tsuAll = tsu : dzu    :       sokuon : []
teAll  = te  : de     :                []
toAll  = to  : doKana :                []
haAll  = ha  : ba     : pa  :          []
hiAll  = hi  : bi     : pi  :          []
fuAll  = fu  : bu     : pu  :          []
heAll  = he  : be     : pe  :          []
hoAll  = ho  : bo     : po  :          []
yaAll  = ya  :                ya'    : []
yuAll  = yu  :                yu'    : []
yoAll  = yo  :                yo'    : []
waAll  = wa  :                wa'    : [] -- TODO include va
wiAll  = wi  :                         [] -- TODO include vi
weAll  = we  :                         [] -- TODO include ve
woAll  = wo  :                         [] -- TODO include vo

aRow  = aAll  ++ iAll   ++ uAll   ++ eAll  ++ oAll
kaRow = kaAll ++ kiAll  ++ kuAll  ++ keAll ++ koAll
saRow = saAll ++ shiAll ++ suAll  ++ seAll ++ soAll
taRow = taAll ++ chiAll ++ tsuAll ++ teAll ++ toAll
naRow = na    :  ni     :  nu     :  ne    : no     : []
haRow = haAll ++ hiAll  ++ fuAll  ++ heAll ++ hoAll
maRow = ma    :  mi     :  mu     :  me    : mo     : []
yaRow = yaAll ++           yuAll  ++          yoAll
raRow = ra    :  ri     :  ru     :  re    : ro     : []
waRow = waAll ++ wiAll  ++           weAll ++ woAll

aColumn = aAll ++ kaAll ++ saAll  ++ taAll  ++ [na] ++ haAll ++ [ma] ++ yaAll ++ [ra] ++ waAll
iColumn = iAll ++ kiAll ++ shiAll ++ chiAll ++ [ni] ++ hiAll ++ [mi] ++          [ri] ++ wiAll
uColumn = uAll ++ kuAll ++ suAll  ++ tsuAll ++ [nu] ++ fuAll ++ [mu] ++ yuAll ++ [ru]
eColumn = eAll ++ keAll ++ seAll  ++ teAll  ++ [ne] ++ heAll ++ [me] ++          [re] ++ weAll
oColumn = oAll ++ koAll ++ soAll  ++ toAll  ++ [no] ++ hoAll ++ [mo] ++ yoAll ++ [ro] ++ woAll
