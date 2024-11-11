--задача 2.1
f0 :: Integer -> Integer
f0 x
  | x == 0 = 0
  | x > 0 = 1
  | otherwise = -1

test = f0 0 == 0 && f0 1 == 1 && f0 (-1) == -1
