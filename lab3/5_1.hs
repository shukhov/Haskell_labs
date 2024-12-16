-- задача 5.1 ред.

import Data.Ratio

checkEquality :: Rational -> Rational
checkEquality a | a < 0     = 0
                 | a == 0    = 0
                 | otherwise  = (1 + toRational (sqrt (fromRational (1 + 4 * a)))) / 2

test' :: [(Int, Rational)]
test' = filter (\x -> denominator (snd x) == 1)
              (map (\x -> (x, checkEquality (toRational x)))
                   [2..1000])

numbers :: [Int]
numbers = [2, 6, 12, 20, 30, 42, 56, 72, 90, 110, 132,
           156, 182, 210, 240, 272, 306, 342, 380, 420, 462, 992]

compareResults :: [Int] -> [(Int, Rational)] -> Bool
compareResults nums testResults = all match pairs
  where
    pairs = zip nums (map (checkEquality . toRational) nums)
    match (num, result) = case lookup num testResults of
                            Just r -> result == r
                            Nothing -> False

test = compareResults numbers test'


