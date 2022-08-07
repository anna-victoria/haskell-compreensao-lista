module Questaooito where

buscar :: Eq a => a -> [(a,b)] -> [b]
buscar k xs = [v | (k', v) <- xs, k == k']


posicoes :: Eq a => a -> [a] -> [Int]
posicoes x xs = [i | (x', i) <- zip xs [0 ..], x == x']

-- *Questaooito> posicoes 3 [1,50,5,85,3,8,89]
-- [4]
-- *Questaooito> posicoes 3 [1,50,5,85,3,8,89,3,7,7,5,3]
-- [4,7,11]

-- zip xs [0 ..] retorna uma lista de tuplas (x', i) onde x' é o elemento de xs e i é o índice de xs
-- zip pega duas listas e combina-as em uma lista de tuplas
-- avaliação preguiçosa é o processamento incompleto de uma função, onde o haskell determina a parada
-- da função por indução do contexto. Indução do contexto é o ato do haskell ver a função por completo
-- e entender que uma parte da função se esgota antes da outra, seja por condicional ou por variaveis.

meuposicoes :: (Eq a, Num b, Enum b) => a -> [a] -> [b]
meuposicoes x xs = buscar x (zip xs [0 ..]) 
-- jeito mais simples de fazer o meuposicoes

meuposicoes' :: (Eq a, Num b, Enum b) => a -> [a] -> [b]
meuposicoes' x xs = buscar x [(a, b) | (a, b) <- zip xs [0 ..]]
-- outra forma usando compreensão de listas