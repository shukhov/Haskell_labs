--задача 2.4 (4)
f4 :: Double -> Double -> Double
f4 x y  | x==y = error ""
        | otherwise = (x + 10 * y) / (x - y)

test = f4 2 3 -32 <= 0.00000001