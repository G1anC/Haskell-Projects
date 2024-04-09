{- 
-- EPITECH PROJECT, 2023
-- imageCompressor
-- File description:
-- Main.hs
-}

module Main (main) where

import System.Environment (getArgs)
import System.Exit (exitWith, ExitCode(ExitFailure))
import Struct.Point
import Struct.Config
import Struct.Cluster
import Lib.MaybeToType
import Lib.Errors
import Algo

core :: Conf -> IO ()
core conf = do
    c <- content conf
    case readPoints c of
        [] -> putStrLn "Invalid file" >> exitWith (ExitFailure 84)
        p -> do
            clu <- getClusters p nu :: IO [Cluster]
            checkErrors nu lim p
            kMeans nu lim p clu
    where nu = mTT (n conf)
          lim = mTT (limit conf)

main :: IO ()
main = do 
    args <- getArgs
    if (length args < 6)
        then putStrLn "Invalid Number of Args" >> exitWith (ExitFailure 84)
        else case getOpts createConf args of
            Nothing -> putStrLn "Bad args" >> exitWith (ExitFailure 84)
            Just c  -> core c




