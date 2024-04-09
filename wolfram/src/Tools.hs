{- 
-- EPITECH PROJECT, 2023
-- wolfram
-- File description:
-- tools.hs
-}

module Tools where

import Config


-- Basic converters

mTC :: Maybe Conf -> Conf
mTC Nothing = defaultConf
mTC (Just x) = x

mTI :: Maybe Int -> Int
mTI Nothing  = 0
mTI (Just x) = x

-- Printers

printRule :: [Int] -> IO()
printRule [] = return ()
printRule (x:xs) = putStr (show x) >> printRule xs

printReverse :: Int -> String -> IO ()
printReverse n str = printReverse' n str ""
  where
    printReverse' :: Int -> String -> String -> IO ()
    printReverse' 0 _ acc = putStr acc
    printReverse' _ [] acc = putStr acc
    printReverse' n (x:xs) acc = printReverse' (n - 1) xs (x : acc)

printPartial :: Int -> String -> IO ()
printPartial _ [] = return ()
printPartial 0 _ = return ()
printPartial n (x:xs) = putChar x >> printPartial (n - 1) xs

printGen :: Int -> Int -> Int-> Gen -> IO ()
printGen _ _ _ (Gen [] _ []) = return ()
printGen 0 _ _ _ = return ()
printGen n evenWindow move g = 
    printReverse (n + move) (l g) >>
    putStr [mid g] >>
    if (evenWindow == 0)
        then printPartial (n - move - 1) (r g) >> putStrLn ""
        else printPartial (n - move) (r g) >> putStrLn ""