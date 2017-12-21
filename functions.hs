import Kana
import qualified Hiragana as Hira
import qualified Katakana as Kata
import Data.Char

hiraganaKatakanaShift = ord('ア') - ord('あ')

hiraganaToKatakana :: Hiragana -> Katakana
hiraganaToKatakana c = chr (ord c + hiraganaKatakanaShift)

katakanaToHiragana :: Katakana -> Hiragana
katakanaToHiragana c = chr (ord c - hiraganaKatakanaShift)

kanaConvert :: Kana.JpanChar -> Kana.JpanChar
kanaConvert c
  | elem c Hira.hiragana = hiraganaToKatakana c
  | elem c Kata.katakana = katakanaToHiragana c
