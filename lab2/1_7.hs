--задача 1.7
f :: Double -> Double
f n | n <= 1 = 1
    | otherwise = sqrt (1 + n * f (n - 1))

test = f 2005