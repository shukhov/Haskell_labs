-- задача 1.6
func lst1 lst2
    | null lst1 || null lst2 = -1
    | length lst1 /= length lst2 = -2
    | otherwise = countDiff lst1 lst2 0
  where
    countDiff [] [] acc = acc
    countDiff (x:xs) (y:ys) acc
        | x /= y    = countDiff xs ys (acc + 1)
        | otherwise = countDiff xs ys acc


test = func "12" "12" == 0 &&
       func "320" "220" == 1 &&
       func "1234" "4321" == 4 &&
       func "12" "123" == -2 &&
       func "" "1" == -1
