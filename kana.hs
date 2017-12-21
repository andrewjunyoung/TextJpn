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
