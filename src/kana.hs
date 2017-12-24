module Kana where

import qualified Hiragana as Hira
import qualified Katakana as Kata

type Kana = Char -- Hiragana | Katakana

type Hiragana = Char
type Katakana = Char
type Kanji = Char

type JpanChar = Char -- Kana | Kanji
type JpanString = [JpanChar]

type LatnChar = Char
type LatnString = [LatnChar]

kana = Hira.hiragana ++ Kata.katakana

a   = Hira.a   : Kata.a   : []
i   = Hira.i   : Kata.i   : []
u   = Hira.u   : Kata.u   : []
e   = Hira.e   : Kata.e   : []
o   = Hira.o   : Kata.o   : []
ka  = Hira.ka  : Kata.ka  : []
ki  = Hira.ki  : Kata.ki  : []
ku  = Hira.ku  : Kata.ku  : []
ke  = Hira.ke  : Kata.ke  : []
ko  = Hira.ko  : Kata.ko  : []
sa  = Hira.sa  : Kata.sa  : []
shi = Hira.shi : Kata.shi : []
su  = Hira.su  : Kata.su  : []
se  = Hira.se  : Kata.se  : []
so  = Hira.so  : Kata.so  : []
ta  = Hira.ta  : Kata.ta  : []
chi = Hira.chi : Kata.chi : []
tsu = Hira.tsu : Kata.tsu : []
te  = Hira.te  : Kata.te  : []
to  = Hira.to  : Kata.to  : []
na  = Hira.na  : Kata.na  : []
ni  = Hira.ni  : Kata.ni  : []
nu  = Hira.nu  : Kata.nu  : []
ne  = Hira.ne  : Kata.ne  : []
no  = Hira.no  : Kata.no  : []
ha  = Hira.ha  : Kata.ha  : []
hi  = Hira.hi  : Kata.hi  : []
fu  = Hira.fu  : Kata.fu  : []
he  = Hira.he  : Kata.he  : []
ho  = Hira.ho  : Kata.ho  : []
ma  = Hira.ma  : Kata.ma  : []
mi  = Hira.mi  : Kata.mi  : []
mu  = Hira.mu  : Kata.mu  : []
me  = Hira.me  : Kata.me  : []
mo  = Hira.mo  : Kata.mo  : []
ya  = Hira.ya  : Kata.ya  : []
yu  = Hira.yu  : Kata.yu  : []
yo  = Hira.yo  : Kata.yo  : []
ra  = Hira.ra  : Kata.ra  : []
ri  = Hira.ri  : Kata.ri  : []
ru  = Hira.ru  : Kata.ru  : []
re  = Hira.re  : Kata.re  : []
ro  = Hira.ro  : Kata.ro  : []
wa  = Hira.wa  : Kata.wa  : []
wi  = Hira.wi  : Kata.wi  : []
we  = Hira.we  : Kata.we  : []
wo  = Hira.wo  : Kata.wo  : []
n   = Hira.n   : Kata.n   : []
-- All dakuon hiragana
ga      = Hira.ga     : Kata.ga     : []
gi      = Hira.gi     : Kata.gi     : []
gu      = Hira.gu     : Kata.gu     : []
ge      = Hira.ge     : Kata.ge     : []
go      = Hira.go     : Kata.go     : []
za      = Hira.za     : Kata.za     : []
ji      = Hira.ji     : Kata.ji     : []
zu      = Hira.zu     : Kata.zu     : []
ze      = Hira.ze     : Kata.ze     : []
zo      = Hira.zo     : Kata.zo     : []
da      = Hira.da     : Kata.da     : []
dji     = Hira.dji    : Kata.dji    : []
dzu     = Hira.dzu    : Kata.dzu    : []
de      = Hira.de     : Kata.de     : []
doKana  = Hira.doKana : Kata.doKana : []
ba      = Hira.ba     : Kata.ba     : []
bi      = Hira.bi     : Kata.bi     : []
bu      = Hira.bu     : Kata.bu     : []
be      = Hira.be     : Kata.be     : []
bo      = Hira.bo     : Kata.bo     : []
-- va  = Hira.va : Kata.va
-- vi  = Hira.vi : Kata.vi
vu  = Hira.vu : Kata.vu : []
-- ve  = Hira.ve : Kata.ve
-- vo  = Hira.vo : Kata.vo
-- All bidakuon hiragana
-- nga = Hira.nga : Kata.nga
-- ngi = Hira.ngi : Kata.ngi
-- ngu = Hira.ngu : Kata.ngu
-- nge = Hira.nge : Kata.nge
-- ngo = Hira.ngo : Kata.ngo
pa = Hira.pa : Kata.pa : []
pi = Hira.pi : Kata.pi : []
pu = Hira.pu : Kata.pu : []
pe = Hira.pe : Kata.pe : []
po = Hira.po : Kata.po : []
-- All small hiragana
a'     = Hira.a'     : Kata.a'     : []
i'     = Hira.i'     : Kata.i'     : []
u'     = Hira.u'     : Kata.u'     : []
e'     = Hira.e'     : Kata.e'     : []
o'     = Hira.o'     : Kata.o'     : []
ka'    = Hira.ka'    : Kata.ka'    : []
ke'    = Hira.ke'    : Kata.ke'    : []
sokuon = Hira.sokuon : Kata.sokuon : []
ya'    = Hira.ya'    : Kata.ya'    : []
yu'    = Hira.yu'    : Kata.yu'    : []
yo'    = Hira.yo'    : Kata.yo'    : []
wa'    = Hira.wa'    : Kata.wa'    : []

-- All seion rows
aRowSeion  = Hira.aRowSeion ++ Kata.aRowSeion
kaRowSeion = Hira.kaRowSeion ++ Kata.kaRowSeion
saRowSeion = Hira.saRowSeion ++ Kata.saRowSeion
taRowSeion = Hira.taRowSeion ++ Kata.taRowSeion
naRowSeion = Hira.naRowSeion ++ Kata.naRowSeion
haRowSeion = Hira.haRowSeion ++ Kata.haRowSeion
maRowSeion = Hira.maRowSeion ++ Kata.maRowSeion
yaRowSeion = Hira.yaRowSeion ++ Kata.yaRowSeion
raRowSeion = Hira.raRowSeion ++ Kata.raRowSeion
waRowSeion = Hira.waRowSeion ++ Kata.waRowSeion
-- All dakuon rows
vaRow = Hira.vaRow ++ Kata.vaRow
gaRow = Hira.gaRow ++ Kata.gaRow
zaRow = Hira.zaRow ++ Kata.zaRow
daRow = Hira.daRow ++ Kata.daRow
baRow = Hira.baRow ++ Kata.baRow
-- All bidakuon rows
paRow = Hira.paRow ++ Kata.paRow
--ngaRow = Hira.ngaRow ++ Kata.ngaRow

--  columns

aColumnSeion = Hira.aColumnSeion ++ Kata.aColumnSeion
iColumnSeion = Hira.iColumnSeion ++ Kata.iColumnSeion
uColumnSeion = Hira.uColumnSeion ++ Kata.uColumnSeion
eColumnSeion = Hira.eColumnSeion ++ Kata.eColumnSeion
oColumnSeion = Hira.oColumnSeion ++ Kata.oColumnSeion

-- Vocalization groups

seion    = Hira.seion ++ Kata.seion
dakuon   = Hira.dakuon ++ Kata.dakuon
bidakuon = Hira.bidakuon ++ Kata.bidakuon
--hiseion  = kana \\ seion -- In the strictest sense
small    = Hira.small ++ Kata.small

-- Groups regardless of vocalization
aAll   = Hira.aAll   ++ Kata.aAll
iAll   = Hira.iAll   ++ Kata.iAll
uAll   = Hira.uAll   ++ Kata.uAll
eAll   = Hira.eAll   ++ Kata.eAll
oAll   = Hira.oAll   ++ Kata.oAll
kaAll  = Hira.kaAll  ++ Kata.kaAll
kiAll  = Hira.kiAll  ++ Kata.kiAll
kuAll  = Hira.kuAll  ++ Kata.kuAll
keAll  = Hira.keAll  ++ Kata.keAll
koAll  = Hira.koAll  ++ Kata.koAll
saAll  = Hira.saAll  ++ Kata.saAll
shiAll = Hira.shiAll ++ Kata.shiAll
suAll  = Hira.suAll  ++ Kata.suAll
seAll  = Hira.seAll  ++ Kata.seAll
soAll  = Hira.soAll  ++ Kata.soAll
taAll  = Hira.taAll  ++ Kata.taAll
chiAll = Hira.chiAll ++ Kata.chiAll
tsuAll = Hira.tsuAll ++ Kata.tsuAll
teAll  = Hira.teAll  ++ Kata.teAll
toAll  = Hira.toAll  ++ Kata.toAll
haAll  = Hira.haAll  ++ Kata.haAll
hiAll  = Hira.hiAll  ++ Kata.hiAll
fuAll  = Hira.fuAll  ++ Kata.fuAll
heAll  = Hira.heAll  ++ Kata.heAll
hoAll  = Hira.hoAll  ++ Kata.hoAll
yaAll  = Hira.yaAll  ++ Kata.yaAll
yuAll  = Hira.yuAll  ++ Kata.yuAll
yoAll  = Hira.yoAll  ++ Kata.yoAll
waAll  = Hira.waAll  ++ Kata.waAll
wiAll  = Hira.wiAll  ++ Kata.wiAll
weAll  = Hira.weAll  ++ Kata.weAll
woAll  = Hira.woAll  ++ Kata.woAll

aRow  = Hira.aRow  ++ Kata.aRow
kaRow = Hira.kaRow ++ Kata.kaRow
saRow = Hira.saRow ++ Kata.saRow
taRow = Hira.taRow ++ Kata.taRow
naRow = Hira.naRow ++ Kata.naRow
haRow = Hira.haRow ++ Kata.haRow
maRow = Hira.maRow ++ Kata.maRow
yaRow = Hira.yaRow ++ Kata.yaRow
raRow = Hira.raRow ++ Kata.raRow
waRow = Hira.waRow ++ Kata.waRow

aColumn = Hira.aColumn ++ Kata.aColumn
iColumn = Hira.iColumn ++ Kata.iColumn
uColumn = Hira.uColumn ++ Kata.uColumn
eColumn = Hira.eColumn ++ Kata.eColumn
oColumn = Hira.oColumn ++ Kata.oColumn
