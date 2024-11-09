--задача 2.1
f0 :: Integer -> Integer
f0 x = if x == 0 
        then 0 
        else if x > 0 
                then 1 
                else -1

test = f0 0 == 0 && f0 1 == 1 && f0 (-1) == -1
