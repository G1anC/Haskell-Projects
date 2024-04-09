{- 
-- EPITECH PROJECT, 2023
-- wolfram
-- File description:
-- main.hs
-}

module Main where

import Config
import Rule
import Tools
import CalculateGen

import System.Environment (getArgs)
import System.Exit (exitWith, exitSuccess, ExitCode(ExitFailure))
import Data.Maybe (isNothing, fromJust)
import Control.Monad (when)

-- Core algorithm

coreLoop :: Conf -> String -> Int -> Int -> Int -> Gen -> IO ()
coreLoop _ _ _ 0 _ _ = exitSuccess
coreLoop conf ru wi li st gen =
    let moveValue = mTI (move conf)
        newGen = createNewGen gen ru
        half = wi `div` 2
    in if (st > 0)
        then coreLoop conf ru wi li (st - 1) newGen
        else printGen half (wi `mod` 2) moveValue gen >>
             coreLoop conf ru wi (li - 1) st newGen

core :: Conf -> String -> Int -> Int -> Int -> IO ()
core conf ru wi li st = coreLoop conf ru wi li st defaultGen

main :: IO ()
main = do
    args <- getArgs
    when (length args < 2) $ putStrLn "wtf" >> exitWith (ExitFailure 84)
    let conf = getOpt defaultConf args
        intRule = getWolframRule (args !! 1)
        ru = iTS (addZeros (toBinary (fromJust intRule)))
    case (conf, intRule) of
        (Just c, Just rule) ->
            let ru = iTS (addZeros (toBinary rule))
            in core c ru (mTI (window c)) (mTI (lineSize c)) (mTI (start c))
        _ -> exitWith (ExitFailure 84)
    exitSuccess
