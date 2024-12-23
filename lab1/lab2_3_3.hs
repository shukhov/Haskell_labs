--задача 2.3 (3)

{-
         (?x+2?, если x,2;
(3) f(x)=*                
         9x3-1, если x>2; 
-}
f3 :: Integer -> Integer
f3 x = if x <= 2 
         then abs (x + 2)
         else x^3 - 1

test = f3 2 == 4 && f3 3 == 26
