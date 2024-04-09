{- 
-- EPITECH PROJECT, 2023
-- wolfram
-- File description:
-- config.hs
-}

module Config where

import Text.Read (readMaybe)

data Conf = Conf {
    rule :: Maybe Int,
    start :: Maybe Int,
    lineSize :: Maybe Int,
    window :: Maybe Int,
    move :: Maybe Int
}
defaultConf :: Conf
defaultConf = Conf {
    rule = Nothing,
    start = Just 0,
    lineSize = Just (-1),
    window = Just 80,
    move = Just 0
}
getOpt :: Conf -> [String] -> Maybe Conf
getOpt conf []                  = Just conf
getOpt conf ("--rule":x:xs)     = getOpt (conf { rule = readMaybe x }) xs
getOpt conf ("--start":x:xs)    = getOpt (conf { start = readMaybe x }) xs
getOpt conf ("--lines":x:xs)    = getOpt (conf { lineSize = readMaybe x }) xs
getOpt conf ("--window":x:xs)   = getOpt (conf { window = (readMaybe x) }) xs
getOpt conf ("--move":x:xs)     = getOpt (conf { move = readMaybe x }) xs
getOpt _ _                      = Nothing


data Gen = Gen {
    l :: String,
    mid :: Char,
    r :: String
}
defaultGen :: Gen
defaultGen = Gen {
    l = repeat ' ',
    mid = '*',
    r = repeat ' '
}


