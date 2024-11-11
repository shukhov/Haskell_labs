--задача 2.2


factorial :: Integer -> Integer -> Integer
factorial 0 acc = acc
factorial n acc = factorial (n - 1) (n * acc)

factorial' :: Integer -> Integer
factorial' n = factorial n 1


test = factorial' 0 == 1 && factorial' 5 == 120
