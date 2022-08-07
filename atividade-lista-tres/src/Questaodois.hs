module Questaodois where

grid :: Int -> Int -> [(Int,Int)]
grid m n = [(x,y) | x <- [0 .. m], y <- [0 .. n]]
