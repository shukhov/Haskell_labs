-- задача 6.3 ред.

f x | x == 0 = 0
    | x == 1 = sqrt 8
    | x == 2 = sqrt (8 - sqrt 8)
    | otherwise   = sqrt (8 - sqrt (8 + sqrt (8 - f (x - 3))))
f' = 1 + 2 * sqrt 3 * sin (20 * pi/180)


test = abs (f 12 - f') < 0.0000001
       && abs( f 2387 - f') < 0.00000001