module Questaonove where

produtoescalar :: [Int] -> [Int] -> Int
produtoescalar [] _ = 0
produtoescalar _ [] = 0
produtoescalar (x:xs) (y:ys) = x * y + produtoescalar xs ys


produtoescalar' x y = sum [a * b | (a, b) <- zip x y]