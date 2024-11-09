--задача 2.3 (2)
f2 :: Integer -> Integer 
f2 x = if ((-35) <= x) && (x <= 35)
         then x^3
         else abs x

test = f2 2 == 8 && f2 36 == 36 && f2 (-36) == 36
