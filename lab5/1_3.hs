-- задача 1.3
func lst
    | null lst  = 0
    | otherwise = posSum lst * negSum lst
  where
    posSum xs = sum [x | x <- xs, x >= 0]
    negSum xs = sum [x | x <- xs, x < 0]

test = func [] == 0 &&
     func [5, 10] == 0 &&
     func [10, -5] == -50 &&
     func [3, 5, -2] == -16

