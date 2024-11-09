--задача 2.4 (1)
f1 :: Double -> Double -> Double
f1 x y = if 2 * (x + y) == 0
    then error " "
    else x * y / (2 * (x + y))

test = f1 2 3 == 0.6