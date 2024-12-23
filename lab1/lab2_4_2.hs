--задача 2.4 (2) ред.

{-
            57(x-y)
(2) f(x,y)= -------
              x+y  
-}
f2 :: Double -> Double -> Double
f2 x y|x + y == 0 = error ""
      |otherwise = 5 * (x - y) / (x + y) 

test = abs(f2 2 3 + 1) <= 0.00000001