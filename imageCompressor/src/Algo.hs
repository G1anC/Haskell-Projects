{- 
-- EPITECH PROJECT, 2023
-- imageCompressor
-- File description:
-- Main.hs
-}

module Algo (kMeans) where

import Lib.MaybeToType
import Lib.Printers
import Lib.AverageColor
import Lib.RemoveInstances
import Lib.RemoveDoublons
import Lib.AverageDiff
import Struct.Cluster (Cluster(..))
import Struct.Point
import System.Exit (exitSuccess)

minDistance :: [(Float, Int)] -> Int
minDistance [] = 0
minDistance [(_, i)] = i
minDistance ((v, i):(v', i'):xs)
    | v < v'    = minDistance ((v, i):xs)
    | otherwise = minDistance ((v', i'):xs)

getAllDistances :: Point -> [Cluster] -> [(Float, Int)]
getAllDistances _ [] = []
getAllDistances p (x:xs) = 
    (dist (mTT (color p)) (ref x), index x) : getAllDistances p xs
    where
        dist :: (Int, Int, Int) -> (Int, Int, Int) -> Float
        dist (r1, g1, b1) (r2, g2, b2) =
            let sq xo = fromIntegral (xo * xo)
            in sqrt (sq (r1 - r2) + sq (g1 - g2) + sq (b1 - b2))


getPforCluster :: [Point] -> [Point] -> [Cluster] -> [Point]
getPforCluster newP [] _ = newP
getPforCluster newP (x:xs) clu =
    case minDistance (getAllDistances x clu) of
        n | n == index (head clu) -> getPforCluster (x:newP) xs clu
          | otherwise             -> getPforCluster newP xs clu

createNewCluster :: Int -> Int -> [Point] -> [Cluster] -> [Cluster]
createNewCluster 0 _ _ _ = []
createNewCluster _ _ [] _ = []
createNewCluster _ _ _ [] = []
createNewCluster n i p (x:xs) =
    let newP = removeDoublons (getPforCluster [] p (x:xs))
    in Cluster { points = reverse newP, ref = averageColor newP, index = i }
        : createNewCluster (n - 1) (i + 1) (removeInstances p newP) xs

kMeans :: Int -> Float -> [Point] -> [Cluster] -> IO ()
kMeans num lim p clu
    | lim > average = printClusters newClu >> exitSuccess
    | otherwise = kMeans num lim p newClu
    where newClu = createNewCluster num 0 p clu
          average = getLimit newClu clu