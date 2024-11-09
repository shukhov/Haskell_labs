--задача 2.2
abs' :: Integer -> Integer
abs' x = if x < 0 
               then -x
               else x

test = abs' 1 == 1 && abs' (-1) == 1 && abs' 0 == 0