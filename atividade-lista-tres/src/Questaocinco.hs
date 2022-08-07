module Questaocinco where

pitag :: Int -> [(Int, Int, Int)] 
--pitag n = [(x,y,z) | _ <- [1 .. n], x * x + y * y == (z * z)]
pitag n = [(x,y,z) | x <- [3 .. n], y <- [3 .. n], z <- [3 .. n], (x * x) + (y * y) == (z * z)]