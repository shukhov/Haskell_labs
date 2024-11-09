--задача 2.3 (1)
f1 :: Integer -> Integer
f1 x = if x <= 0 
         then (-x) - 10
         else x * x + x + 1

test = f1 2 == 7 && f1 (-2) == -8