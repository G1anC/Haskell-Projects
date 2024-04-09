{- 
-- EPITECH PROJECT, 2023
-- imageCompressor
-- File description:
-- Point.hs
-}

module Struct.Point (readPoints, Point(..)) where

import Text.Read (readMaybe)
import Data.Maybe (isNothing)

data Point = Point {
    pos :: Maybe (Int, Int),
    color :: Maybe (Int, Int, Int)
} deriving (Eq)

createPoint :: String -> String -> Point
createPoint p c = Point {
    pos = readMaybe p :: Maybe (Int, Int),
    color = readMaybe c :: Maybe (Int, Int, Int)
}

readPoints :: [String] -> [Point]
readPoints [] = []
readPoints (x:y:xs) =
    let p = createPoint x y 
    in if isNothing (pos p) || isNothing (color p)
        then []
        else p : readPoints xs
readPoints _ = []
