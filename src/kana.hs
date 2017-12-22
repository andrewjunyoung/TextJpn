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
