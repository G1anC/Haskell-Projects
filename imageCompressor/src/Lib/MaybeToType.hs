{- 
-- EPITECH PROJECT, 2023
-- compressor
-- File description:
-- mTT.hs
-}

module Lib.MaybeToType (mTT) where


mTT :: Maybe a -> a
mTT Nothing = error "Nothing\n\n"
mTT (Just c) = c
