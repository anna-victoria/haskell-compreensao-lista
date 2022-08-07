module Questaotres where

grid :: Int -> Int -> [(Int,Int)]
grid m n = [(x,y) | x <- [0 .. m], y <- [0 .. n]]

quadrado :: Int -> [(Int,Int)]
quadrado n = [ (x,y) | (x,y) <- grid n n, x /= y]