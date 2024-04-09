{- 
-- EPITECH PROJECT, 2023
-- imageCompressor
-- File description:
-- Cluster.hs
-}

module Struct.Cluster (Cluster(..), getClusters) where

import Struct.Point
import System.Random

data Cluster = Cluster {
    points :: [Point],
    index :: Int,
    ref :: (Int, Int, Int)
}

randomElem :: [Point] -> IO Point
randomElem xs = do
    i <- randomRIO (0, length xs - 1)
    return $ selectElem i xs
    where
        selectElem :: Int -> [Point] -> Point
        selectElem _ [] = error "Empty List"
        selectElem 0 (x:_) = x
        selectElem n (_:rest) = selectElem (n - 1) rest

getRandElem :: [Point] -> IO (Int, Int, Int)
getRandElem xs = do 
    p <- randomElem xs
    case color p of
        Nothing -> return (0, 0, 0)
        Just col -> return col

getClusters :: [Point] -> Int -> IO [Cluster]
getClusters _ 0 = return []
getClusters xs n = do
    newRef <- getRandElem xs
    restClusters <- getClusters xs (n - 1)
    return (Cluster {ref = newRef, index = n, points = []} : restClusters)
