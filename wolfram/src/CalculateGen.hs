{- 
-- EPITECH PROJECT, 2023
-- wolfram
-- File description:
-- CalculateGen.hs
-}

module CalculateGen where

import Config

-- ru application

newCell :: String -> [Char] -> Char
newCell _ [] = ' '
newCell pattern rule = case pattern of
    "***" -> head rule
    "** " -> rule !! 1
    "* *" -> rule !! 2
    "*  " -> rule !! 3
    " **" -> rule !! 4
    " * " -> rule !! 5
    "  *" -> rule !! 6
    "   " -> rule !! 7

restListR :: String -> String -> [Char]
restListR (x:y:z:xs) ru = newCell [x, y, z] ru : og
    where
        og = restListR (y:z:xs) ru

restListL :: String -> String -> [Char]
restListL (x:y:z:xs) ru = newCell [z, y, x] ru : og
    where
        og = restListL (y:z:xs) ru

createNewGen :: Gen -> String -> Gen
createNewGen gen ru = Gen {
    l = newCell [(lg !! 1), (lg !! 0), mg] ru : restListL lg ru,
    mid = newCell [(lg !! 0), mg, (rg !! 0)] ru,
    r = newCell [mg, (rg !! 0), (rg !! 1)] ru : restListR rg ru
}
    where
        mg = mid gen
        lg = l gen
        rg = r gen
