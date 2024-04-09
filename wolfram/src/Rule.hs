{- 
-- EPITECH PROJECT, 2023
-- wolfram
-- File description:
-- createRule.hs
-}

module Rule where
import Text.Read (readMaybe)


-- Rule creation

getWolframRule :: String -> Maybe Int
getWolframRule [] = Nothing
getWolframRule num = case readMaybe num of
    Just n -> if n >= 0 && n <= 255 then Just n else Nothing
    Nothing -> Nothing 

iTS :: [Int] -> String
iTS [] = []
iTS (0:xs) = ' ' : iTS xs
iTS (1:xs) = '*' : iTS xs

toBinary :: Int -> [Int]
toBinary 0 = [0]
toBinary n = reverse (helper n)
  where
    helper 0 = []
    helper n = (n `mod` 2) : helper (n `div` 2)

addZeros :: [Int] -> [Int]
addZeros xs = replicate (8 - length xs) 0 ++ xs



