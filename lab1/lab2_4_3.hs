--задача 2.4 (3) ред.

{-
             x-y  
(3) f(x,y)= ?????;
            x-27y 
-}
f3 :: Double -> Double -> Double
f3 x y|x == y = error ""
      |otherwise = (x - y) / (x - 2 * y)

test = abs( f3 2 3 - 0.25 ) < 0.000001

