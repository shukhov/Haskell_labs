--задача 2.3 (4)

{-
         (?3-x?, если x>3;
(4) f(x)=*                
         9x3+x2, если x,3;
-}
f4 :: Integer -> Integer
f4 x = if x > 3
         then abs (3 - x)
         else x^3 + x^2

test = f4 4 == 1 && f4 3 == 36