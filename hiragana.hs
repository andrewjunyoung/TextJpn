import Data.Set

type Kana = Char -- Hiragana | Katakana

type Hiragana = Char
type Katakana = Char
type Kanji = Char

type JpanChar = Char -- Kana | Kanji
type JpanText = [JpanChar]

type LatnChar = Char
type LatnText = [LatnChar]

hiragana = ['ぁ'..'ゟ'] -- as defined in the hiragana unicode block

-- Hiragana (char)

-- Special hiragana
kurikaeshiHiragana       = 'ゝ'
kurikaeshiDakuonHiragana = 'ゞ'
yoriHiragana             = 'ゟ'
dakuten                  = '゛'
handakuten               = '゜'
combiningDakuten         = '゙'
--combiningHandakuten      = ' ゚'

dakutenAll    = dakuten : combiningDakuten : []
--handakutenAll = handakuten : combiningHandakuten : []
kurikaeshiHiraganaAll = kurikaeshiHiragana : kurikaeshiDakuonHiragana : []


-- All seion hiragana
aHiragana      = 'あ'
iHiragana      = 'い'
uHiragana      = 'う'
eHiragana      = 'え'
oHiragana      = 'お'
kaHiragana     = 'か'
kiHiragana     = 'き'
kuHiragana     = 'く'
keHiragana     = 'け'
koHiragana     = 'こ'
saHiragana     = 'さ'
shiHiragana    = 'し'
suHiragana     = 'す'
seHiragana     = 'せ'
soHiragana     = 'そ'
taHiragana     = 'た'
chiHiragana    = 'ち'
tsuHiragana    = 'つ'
teHiragana     = 'て'
toHiragana     = 'と'
naHiragana     = 'な'
niHiragana     = 'に'
nuHiragana     = 'ぬ'
neHiragana     = 'ね'
noHiragana     = 'の'
haHiragana     = 'は'
hiHiragana     = 'ひ'
fuHiragana     = 'ふ'
heHiragana     = 'へ'
hoHiragana     = 'ほ'
maHiragana     = 'ま'
miHiragana     = 'み'
muHiragana     = 'む'
meHiragana     = 'め'
moHiragana     = 'も'
yaHiragana     = 'や'
yuHiragana     = 'ゆ'
yoHiragana     = 'よ'
raHiragana     = 'ら'
riHiragana     = 'り'
ruHiragana     = 'る'
reHiragana     = 'れ'
roHiragana     = 'ろ'
waHiragana     = 'わ'
wiHiragana     = 'ゐ'
weHiragana     = 'ゑ'
woHiragana     = 'を'
nHiragana      = 'ん'
chouonHiragana = 'ー'
-- All dakuon hiragana
gaHiragana  = 'が'
giHiragana  = 'ぎ'
guHiragana  = 'ぐ'
geHiragana  = 'げ'
goHiragana  = 'ご'
zaHiragana  = 'ざ'
jiHiragana  = 'じ'
zuHiragana  = 'ず'
zeHiragana  = 'ぜ'
zoHiragana  = 'ぞ'
daHiragana  = 'だ'
djiHiragana = 'ぢ'
dzuHiragana = 'づ'
deHiragana  = 'で'
doHiragana  = 'ど'
baHiragana  = 'ば'
biHiragana  = 'び'
buHiragana  = 'ぶ'
beHiragana  = 'べ'
boHiragana  = 'ぼ'
-- vaHiragana  = 'わ゙'
-- viHiragana  = 'ゐ゙'
vuHiragana  = 'ゔ'
-- veHiragana  = 'ゑ゙'
-- voHiragana  = 'を゙'
-- All bidakuon hiragana
-- ngaHiragana = 'か゚'
-- ngiHiragana = 'き゚'
-- nguHiragana = 'く゚'
-- ngeHiragana = 'け゚'
-- ngoHiragana = 'こ゚'
paHiragana = 'ぱ'
piHiragana = 'ぴ'
puHiragana = 'ぷ'
peHiragana = 'ぺ'
poHiragana = 'ぽ'
-- All small hiragana
a'Hiragana     = 'ぁ'
i'Hiragana     = 'ぃ'
u'Hiragana     = 'ぅ'
e'Hiragana     = 'ぇ'
o'Hiragana     = 'ぉ'
ka'Hiragana    = 'ゕ'
ke'Hiragana    = 'ゖ'
sokuonHiragana = 'っ'
ya'Hiragana    = 'ゃ'
yu'Hiragana    = 'ゅ'
yo'Hiragana    = 'ょ'
wa'Hiragana    = 'ゎ'

-- Hiragana rows

-- All seion rows
aRowSeionHiragana  = aHiragana  : iHiragana   : uHiragana   : eHiragana  : oHiragana  : []
kaRowSeionHiragana = kaHiragana : kiHiragana  : kuHiragana  : keHiragana : koHiragana : []
saRowSeionHiragana = saHiragana : shiHiragana : suHiragana  : seHiragana : soHiragana : []
taRowSeionHiragana = taHiragana : chiHiragana : tsuHiragana : teHiragana : toHiragana : []
naRowSeionHiragana = naHiragana : niHiragana  : nuHiragana  : neHiragana : noHiragana : []
haRowSeionHiragana = haHiragana : hiHiragana  : fuHiragana  : heHiragana : hoHiragana : []
maRowSeionHiragana = maHiragana : miHiragana  : muHiragana  : meHiragana : moHiragana : []
yaRowSeionHiragana = yaHiragana : yuHiragana  : yoHiragana                            : []
raRowSeionHiragana = raHiragana : riHiragana  : ruHiragana  : reHiragana : roHiragana : []
waRowSeionHiragana = waHiragana : wiHiragana  : weHiragana  : woHiragana              : []
-- All dakuon rows
vaRowHiragana = vuHiragana : []
--vaRowHiragana = vaHiragana : viHiragana  : vuHiragana  : veHiragana : voHiragana : []
gaRowHiragana = gaHiragana : giHiragana  : guHiragana  : geHiragana : goHiragana : []
zaRowHiragana = zaHiragana : jiHiragana  : zuHiragana  : zeHiragana : zoHiragana : []
daRowHiragana = daHiragana : djiHiragana : dzuHiragana : deHiragana : doHiragana : []
baRowHiragana = baHiragana : biHiragana  : buHiragana  : beHiragana : boHiragana : []
-- All bidakuon rows
paRowHiragana = paHiragana : piHiragana : puHiragana : peHiragana : poHiragana : []

-- Hiragana columns

aColumnSeionHiragana = aHiragana : kaHiragana : saHiragana  : taHiragana  : naHiragana : haHiragana : maHiragana : yaHiragana : raHiragana : waHiragana : []
iColumnSeionHiragana = iHiragana : kiHiragana : shiHiragana : chiHiragana : niHiragana : hiHiragana : miHiragana              : riHiragana : wiHiragana : []
uColumnSeionHiragana = uHiragana : kuHiragana : suHiragana  : tsuHiragana : nuHiragana : fuHiragana : muHiragana : yuHiragana : ruHiragana              : []
eColumnSeionHiragana = eHiragana : keHiragana : seHiragana  : teHiragana  : neHiragana : heHiragana : meHiragana              : reHiragana : weHiragana : []
oColumnSeionHiragana = oHiragana : koHiragana : soHiragana  : toHiragana  : noHiragana : hoHiragana : moHiragana : yoHiragana : roHiragana : woHiragana : []

-- Vocalization groups

seionHiragana    = aColumnSeionHiragana ++ iColumnSeionHiragana ++ uColumnSeionHiragana ++ eColumnSeionHiragana ++ oColumnSeionHiragana
dakuonHiragana   = gaRowHiragana ++ zaRowHiragana ++ daRowHiragana ++ baRowHiragana ++ vaRowHiragana
bidakuonHiragana = paRowHiragana
--hiseionHiragana  = hiragana \\ seionHiragana -- In the strictest sense
smallHiragana    = a'Hiragana : i'Hiragana : u'Hiragana : e'Hiragana : o'Hiragana : sokuonHiragana : ya'Hiragana : yu'Hiragana : yo'Hiragana : wa'Hiragana : []
