--задача 1.3

-- Функция для вычисления Rem(n, m, b)
remMod :: Integer -> Integer -> Integer -> Integer
remMod n 0 b = 1
remMod n m b
    | even m    = remMod ((n * n) `mod` b) (m `div` 2) b
    | otherwise = (n * remMod ((n * n) `mod` b) ((m - 1) `div` 2) b) `mod` b

test = remMod 3 13 7 == 3
