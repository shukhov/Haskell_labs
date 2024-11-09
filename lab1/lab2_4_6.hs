--задача 2.4 (6)
f6 :: Double -> Double -> Double
f6 x y | x == y = error ""
       |otherwise = (2 + x - y) / (x - y)

test = abs (f6 2 3  -1) <= 0.0000001
