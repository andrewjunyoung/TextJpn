module Katakana where

import Data.Set

katakana = ['＝'..'ヿ'] -- as defined in the katakana unicode block

-- Katakana (char)

-- Special katakana
doubleHyphen             = '゠'
kurikaeshiKatakana       = 'ヽ'
kurikaeshiDakuonKatakana = 'ヾ'
kotoKatakana             = 'ヿ'
nakaguroKatakana         = '・'
chouon                   = 'ー'

-- All seion katakana
aKatakana      = 'ア'
iKatakana      = 'イ'
uKatakana      = 'ウ'
eKatakana      = 'エ'
oKatakana      = 'オ'
kaKatakana     = 'カ'
kiKatakana     = 'キ'
kuKatakana     = 'ク'
keKatakana     = 'ケ'
koKatakana     = 'コ'
saKatakana     = 'サ'
shiKatakana    = 'シ'
suKatakana     = 'ス'
seKatakana     = 'セ'
soKatakana     = 'ソ'
taKatakana     = 'タ'
chiKatakana    = 'チ'
tsuKatakana    = 'ツ'
teKatakana     = 'テ'
toKatakana     = 'ト'
naKatakana     = 'ナ'
niKatakana     = 'ニ'
nuKatakana     = 'ヌ'
neKatakana     = 'ネ'
noKatakana     = 'ノ'
haKatakana     = 'ハ'
hiKatakana     = 'ヒ'
fuKatakana     = 'フ'
heKatakana     = 'ヘ'
hoKatakana     = 'ホ'
maKatakana     = 'マ'
miKatakana     = 'ミ'
muKatakana     = 'ム'
meKatakana     = 'メ'
moKatakana     = 'モ'
yaKatakana     = 'ヤ'
yuKatakana     = 'ユ'
yoKatakana     = 'ヨ'
raKatakana     = 'ラ'
riKatakana     = 'リ'
ruKatakana     = 'ル'
reKatakana     = 'レ'
roKatakana     = 'ロ'
waKatakana     = 'ワ'
wiKatakana     = 'ヰ'
weKatakana     = 'ヱ'
woKatakana     = 'ヲ'
nKatakana      = 'ン'
-- All dakuon katakana
gaKatakana  = 'ガ'
giKatakana  = 'ギ'
guKatakana  = 'グ'
geKatakana  = 'ゲ'
goKatakana  = 'ゴ'
zaKatakana  = 'ザ'
jiKatakana  = 'ジ'
zuKatakana  = 'ズ'
zeKatakana  = 'ゼ'
zoKatakana  = 'ゾ'
daKatakana  = 'ダ'
djiKatakana = 'ヂ'
dzuKatakana = 'ヅ'
deKatakana  = 'デ'
doKatakana  = 'ド'
baKatakana  = 'バ'
biKatakana  = 'ビ'
buKatakana  = 'ブ'
beKatakana  = 'ベ'
boKatakana  = 'ボ'
-- vaKatakana  = 'ヷ'
-- viKatakana  = 'ヸ'
vuKatakana  = 'ヴ'
-- veKatakana  = 'ヹ'
-- voKatakana  = 'ヺ'
-- All bidakuon katakana
-- ngaKatakana = 'カ゚'
-- ngiKatakana = 'キ゚'
-- nguKatakana = 'ク゚'
-- ngeKatakana = 'ケ゚'
-- ngoKatakana = 'コ゚'
paKatakana = 'パ'
piKatakana = 'ピ'
puKatakana = 'プ'
peKatakana = 'ペ'
poKatakana = 'ポ'
-- All small katakana
a'Katakana     = 'ァ'
i'Katakana     = 'ィ'
u'Katakana     = 'ゥ'
e'Katakana     = 'ェ'
o'Katakana     = 'ォ'
ka'Katakana    = 'ヵ'
ke'Katakana    = 'ヶ'
sokuonKatakana = 'ッ'
ya'Katakana    = 'ャ'
yu'Katakana    = 'ュ'
yo'Katakana    = 'ョ'
wa'Katakana    = 'ヮ'

-- Katakana rows

-- All seion rows
aRowSeionKatakana  = aKatakana  : iKatakana   : uKatakana   : eKatakana  : oKatakana  : []
kaRowSeionKatakana = kaKatakana : kiKatakana  : kuKatakana  : keKatakana : koKatakana : []
saRowSeionKatakana = saKatakana : shiKatakana : suKatakana  : seKatakana : soKatakana : []
taRowSeionKatakana = taKatakana : chiKatakana : tsuKatakana : teKatakana : toKatakana : []
naRowSeionKatakana = naKatakana : niKatakana  : nuKatakana  : neKatakana : noKatakana : []
haRowSeionKatakana = haKatakana : hiKatakana  : fuKatakana  : heKatakana : hoKatakana : []
maRowSeionKatakana = maKatakana : miKatakana  : muKatakana  : meKatakana : moKatakana : []
yaRowSeionKatakana = yaKatakana : yuKatakana  : yoKatakana                            : []
raRowSeionKatakana = raKatakana : riKatakana  : ruKatakana  : reKatakana : roKatakana : []
waRowSeionKatakana = waKatakana : wiKatakana  : weKatakana  : woKatakana              : []
-- All dakuon rows
vaRowKatakana = vuKatakana : []
--vaRowKatakana = vaKatakana : viKatakana  : vuKatakana  : veKatakana : voKatakana : []
gaRowKatakana = gaKatakana : giKatakana  : guKatakana  : geKatakana : goKatakana : []
zaRowKatakana = zaKatakana : jiKatakana  : zuKatakana  : zeKatakana : zoKatakana : []
daRowKatakana = daKatakana : djiKatakana : dzuKatakana : deKatakana : doKatakana : []
baRowKatakana = baKatakana : biKatakana  : buKatakana  : beKatakana : boKatakana : []
-- All bidakuon rows
paRowKatakana = paKatakana : piKatakana : puKatakana : peKatakana : poKatakana : []

-- Katakana columns

aColumnSeionKatakana = aKatakana : kaKatakana : saKatakana  : taKatakana  : naKatakana : haKatakana : maKatakana : yaKatakana : raKatakana : waKatakana : []
iColumnSeionKatakana = iKatakana : kiKatakana : shiKatakana : chiKatakana : niKatakana : hiKatakana : miKatakana              : riKatakana : wiKatakana : []
uColumnSeionKatakana = uKatakana : kuKatakana : suKatakana  : tsuKatakana : nuKatakana : fuKatakana : muKatakana : yuKatakana : ruKatakana              : []
eColumnSeionKatakana = eKatakana : keKatakana : seKatakana  : teKatakana  : neKatakana : heKatakana : meKatakana              : reKatakana : weKatakana : []
oColumnSeionKatakana = oKatakana : koKatakana : soKatakana  : toKatakana  : noKatakana : hoKatakana : moKatakana : yoKatakana : roKatakana : woKatakana : []

-- Vocalization groups

seionKatakana    = aColumnSeionKatakana ++ iColumnSeionKatakana ++ uColumnSeionKatakana ++ eColumnSeionKatakana ++ oColumnSeionKatakana
dakuonKatakana   = gaRowKatakana ++ zaRowKatakana ++ daRowKatakana ++ baRowKatakana ++ vaRowKatakana
bidakuonKatakana = paRowKatakana
--hiseionKatakana  = katakana \\ seionKatakana -- In the strictest sense
smallKatakana    = a'Katakana : i'Katakana : u'Katakana : e'Katakana : o'Katakana : sokuonKatakana : ya'Katakana : yu'Katakana : yo'Katakana : wa'Katakana : []
