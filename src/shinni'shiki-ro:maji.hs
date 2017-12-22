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
    final c = fromMaybe "" (lookUp c columnMap) ++ modifier c
    modifier :: Kana -> LatnString
    modifier = (fromMaybe "") . modifier'
      where
        modifier' :: Kana -> (Maybe LatnString)
        modifier' c
          | elem c small = Just " ́"
          | otherwise         = Nothing

lookUp :: (Eq a) => a -> [([a],b)] -> Maybe b
lookUp a (x:xs) = if elem a (fst x) then Just (snd x) else lookUp a xs
lookUp _ [] = Nothing

columnMap = [(aColumn,"a"),
             (iColumn,"i"),
             (uColumn,"u"),
             (eColumn,"e"),
             (oColumn,"o")
            ]
