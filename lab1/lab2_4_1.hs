--задача 2.4 (1) ред.

{-
               x7y    
 (1) f(x,y)= -------; 
             27(x+y)  
-}
f1 :: Double -> Double -> Double
f1 x y = if 2 * (x + y) == 0
    then error " "
    else x * y / (2 * (x + y))

test = abs(f1 2 3) - 0.6 <= 0.0000001