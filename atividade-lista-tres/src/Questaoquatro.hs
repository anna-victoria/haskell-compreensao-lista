module Questaoquatro where

meureplicate :: Int -> a -> [a]
meureplicate n p = [p | _ <- [1..n]]
