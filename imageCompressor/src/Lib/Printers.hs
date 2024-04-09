{- 
-- EPITECH PROJECT, 2023
-- compressor
-- File description:
-- Printers.hs
-}

module Lib.Printers (printClusters) where

import Struct.Cluster
import Struct.Point
import Lib.MaybeToType

printPoints :: [Point] -> IO ()
printPoints [] = return ()
printPoints (x:xs) =
    putStr (show (mTT (pos x))) 
    >> putChar ' '
    >> putStrLn (show (mTT (color x)))
    >> printPoints xs
    
printClusters :: [Cluster] -> IO ()
printClusters [] = return ()
printClusters (x:xs) =
    putStrLn "--"
    >> putStrLn (show (ref x))
    >> putStrLn "-"
    >> printPoints (points x)
    >> printClusters xs