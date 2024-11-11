--задача 2.1

factorial :: Integer -> Integer
factorial 0 = 1  
factorial n = n * factorial (n-1) 

test = factorial 3 == 6 && factorial 0 == 1