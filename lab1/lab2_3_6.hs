--Задача 2.3 (6)

{-
         (1+?x?, если x<-8vx>8;
(6) f(x)=*
         9x3+x2, если -8,x,8;
-}
f6 :: Integer -> Integer
f6 x = if x < -8 || x > 8
         then 1 + abs x
         else x * x * x + x * x

test = f6 9 == 10 && f6 3 == 36