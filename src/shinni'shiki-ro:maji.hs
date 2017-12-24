module Shinni'shikiRomaji where

import Data.Maybe

import RomajiScheme
import Kana
import Functions
import qualified Hiragana as Hira
import qualified Katakana as Kata

romanize :: JpanString -> LatnString
romanize = concatMap romanizeKana

--japanize :: LatnString -> JapnString

romanizeKana c = initial c ++ final c
  where
    initial c = fromMaybe "" (lookupSublist c rowMap)
    final c = fromMaybe "" (lookupSublist c columnMap) ++ modifier c
    modifier = (fromMaybe "") . modifier'
      where
        modifier' c = if elem c small then Just " ́" else Nothing
