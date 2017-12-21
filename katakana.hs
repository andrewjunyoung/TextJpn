module Katakana where

import qualified Prelude -- Needed to hide "pi"

import Data.Set

(++) = (Prelude.++)

katakana = ['＝'..'ヿ'] -- as defined in the katakana unicode block

-- Katakana (char)

-- Special katakana
doubleHyphen     = '゠'
kurikaeshi       = 'ヽ'
kurikaeshiDakuon = 'ヾ'
koto             = 'ヿ'
nakaguro         = '・'
chouon           = 'ー'

-- All seion katakana
a   = 'ア'
i   = 'イ'
u   = 'ウ'
e   = 'エ'
o   = 'オ'
ka  = 'カ'
ki  = 'キ'
ku  = 'ク'
ke  = 'ケ'
ko  = 'コ'
sa  = 'サ'
shi = 'シ'
su  = 'ス'
se  = 'セ'
so  = 'ソ'
ta  = 'タ'
chi = 'チ'
tsu = 'ツ'
te  = 'テ'
to  = 'ト'
na  = 'ナ'
ni  = 'ニ'
nu  = 'ヌ'
ne  = 'ネ'
no  = 'ノ'
ha  = 'ハ'
hi  = 'ヒ'
fu  = 'フ'
he  = 'ヘ'
ho  = 'ホ'
ma  = 'マ'
mi  = 'ミ'
mu  = 'ム'
me  = 'メ'
mo  = 'モ'
ya  = 'ヤ'
yu  = 'ユ'
yo  = 'ヨ'
ra  = 'ラ'
ri  = 'リ'
ru  = 'ル'
re  = 'レ'
ro  = 'ロ'
wa  = 'ワ'
wi  = 'ヰ'
we  = 'ヱ'
wo  = 'ヲ'
n   = 'ン'
-- All dakuon katakana
ga  = 'ガ'
gi  = 'ギ'
gu  = 'グ'
ge  = 'ゲ'
go  = 'ゴ'
za  = 'ザ'
ji  = 'ジ'
zu  = 'ズ'
ze  = 'ゼ'
zo  = 'ゾ'
da  = 'ダ'
dji = 'ヂ'
dzu = 'ヅ'
de  = 'デ'
doKana  = 'ド'
ba  = 'バ'
bi  = 'ビ'
bu  = 'ブ'
be  = 'ベ'
bo  = 'ボ'
-- va  = 'ヷ'
-- vi  = 'ヸ'
vu  = 'ヴ'
-- ve  = 'ヹ'
-- vo  = 'ヺ'
-- All bidakuon katakana
-- nga = 'カ゚'
-- ngi = 'キ゚'
-- ngu = 'ク゚'
-- nge = 'ケ゚'
-- ngo = 'コ゚'
pa = 'パ'
pi = 'ピ'
pu = 'プ'
pe = 'ペ'
po = 'ポ'
-- All small katakana
a'     = 'ァ'
i'     = 'ィ'
u'     = 'ゥ'
e'     = 'ェ'
o'     = 'ォ'
ka'    = 'ヵ'
ke'    = 'ヶ'
sokuon = 'ッ'
ya'    = 'ャ'
yu'    = 'ュ'
yo'    = 'ョ'
wa'    = 'ヮ'

--  rows

-- All seion rows
aRowSeion  = a  : i   : u   : e  : o  : []
kaRowSeion = ka : ki  : ku  : ke : ko : []
saRowSeion = sa : shi : su  : se : so : []
taRowSeion = ta : chi : tsu : te : to : []
naRowSeion = na : ni  : nu  : ne : no : []
haRowSeion = ha : hi  : fu  : he : ho : []
maRowSeion = ma : mi  : mu  : me : mo : []
yaRowSeion = ya  : yu  : yo            : []
raRowSeion = ra : ri  : ru  : re : ro : []
waRowSeion = wa : wi        : we  : wo: []
-- All dakuon rows
vaRow = vu : []
--vaRow = va : vi  : vu  : ve : vo : []
gaRow = ga : gi  : gu  : ge : go : []
zaRow = za : ji  : zu  : ze : zo : []
daRow = da : dji : dzu : de : doKana : []
baRow = ba : bi  : bu  : be : bo : []
-- All bidakuon rows
paRow = pa : pi : pu : pe : po : []

--  columns

aColumnSeion = a : ka : sa  : ta  : na : ha : ma : ya : ra : wa : []
iColumnSeion = i : ki : shi : chi : ni : hi : mi      : ri : wi : []
uColumnSeion = u : ku : su  : tsu : nu : fu : mu : yu : ru      : []
eColumnSeion = e : ke : se  : te  : ne : he : me      : re : we : []
oColumnSeion = o : ko : so  : to  : no : ho : mo : yo : ro : wo : []

-- Vocalization groups

seion    = aColumnSeion ++ iColumnSeion ++ uColumnSeion ++ eColumnSeion ++ oColumnSeion
dakuon   = gaRow ++ zaRow ++ daRow ++ baRow ++ vaRow
bidakuon = paRow
--hiseion  = katakana \\ seion -- In the strictest sense
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
