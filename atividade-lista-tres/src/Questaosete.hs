module Questaosete where

--concat [[(1,3),(1,4)] [(2,3), (2,4)]]
concatenarfun :: [(Integer, Integer)]
concatenarfun = concat  [[(1,y) | y <- [3,4]], [(2,y) | y <- [3,4]]]

concatenarfun' :: [(Integer, Integer)]
concatenarfun' = ([(1,y) | y <- [3,4]]) ++ ([(2,y) | y <- [3,4]])