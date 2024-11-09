--Задача 2.3 (5)
f5 :: Integer -> Integer
f5 x = if x < -5 || x > 5
         then abs (2 + x)
         else x * x - 4

test = f5 6 == 8 && f5 2 == 0