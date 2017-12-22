module Shinni'shikiRomaji where

import Data.Maybe

import Kana
import qualified Hiragana as Hira
import qualified Katakana as Kata

--romanize :: JapnString -> LatnString

--japanize :: LatnString -> JapnString

romanizeKana :: Kana -> LatnString
romanizeKana c = initial c ++ final c
  where
    initial :: Kana -> LatnString
    initial c
      | otherwise = ""
    final :: Kana -> LatnString
    final c
      | elem c aColumn = "a" ++ modifier c
      | elem c iColumn = "i" ++ modifier c
      | elem c uColumn = "u" ++ modifier c
      | elem c eColumn = "e" ++ modifier c
      | elem c oColumn = "o" ++ modifier c
      | c == 'ん'      = "'"
      | otherwise = ""
    modifier :: Kana -> LatnString
    modifier = (fromMaybe "") . modifier'
      where
        modifier' :: Kana -> (Maybe LatnString)
        modifier' c
          | elem c small = Just " ́"
          | otherwise         = Nothing
