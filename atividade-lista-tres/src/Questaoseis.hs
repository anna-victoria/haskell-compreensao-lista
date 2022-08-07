module Questaoseis where

fatores :: Int -> [Int]
fatores n = [x | x <- [1 .. n], mod n x == 0]

perfeitos :: Int -> [Int]
--perfeitos n = [x | x <- [] , guarda]
perfeitos n = [x | x <- [1 .. n] , x == sum (init (fatores x))] 
-- init pega a lista de todos os elementos menos o ultimo elemento