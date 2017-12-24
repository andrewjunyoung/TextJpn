module RomajiScheme where

import Kana
import qualified Hiragana as Hira
import qualified Katakana as Kata

columnMap = [(aColumn,"a"),
             (iColumn,"i"),
             (uColumn,"u"),
             (eColumn,"e"),
             (oColumn,"o")
            ]

rowMap = [(shi,"sh"),
          (ji,"j"),
          (chi,"ch"),
          (tsu,"ts"),
          (fu,"f"),
          (dji,"dj"),
          (dzu,"dz"),
          (kaRowSeion,"k"),
          (gaRow,"g"), -- TODO add nga row
          (saRowSeion,"s"),
          (zaRow,"z"),
          (taRowSeion,"t"),
          (daRow,"d"),
          (naRowSeion,"n"),
          (haRowSeion,"h"),
          (baRow,"b"),
          (paRow,"p"),
          (maRowSeion,"m"),
          (yaRowSeion,"y"),
          (raRowSeion,"r"),
          (waRowSeion,"w"),
          (vaRow,"v"),
          (n,"n'"),
          ([Kata.chouon],":")
         ]
