--задача 2.4 (2)
f2 :: Double -> Double -> Double
f2 x y|x + y == 0 = error ""
      |otherwise = 5 * (x - y) / (x + y) 

test = f2 2 3 == (-1)