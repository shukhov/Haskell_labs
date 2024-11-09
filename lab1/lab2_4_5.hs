--задача 2.4 (5)
f5 :: Double -> Double -> Double
f5 x y = (x * y - 4) / (x + y)

test = f5 2 3 == 0.4
