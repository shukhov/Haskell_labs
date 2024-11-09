--задача 2.4 (8)
f :: (RealFrac a) => a -> a
f x | x == 4 = error ""
    |otherwise = abs (x - 9) / abs (x - 4)

test = abs(f 10 - 1/6) <= 0.0001 &&
    abs(f 5 - 0.6666666666666666) <= 0.0001
    && f 9 == 0