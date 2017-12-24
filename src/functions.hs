module Functions where

lookupSublist :: (Eq a) => a -> [([a],b)] -> Maybe b
lookupSublist a (x:xs) = if elem a (fst x) then Just (snd x) else lookupSublist a xs
lookupSublist _ [] = Nothing
