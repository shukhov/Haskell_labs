-- задача 2.4
func :: Int -> Int
func x
    | num < 10 = 1
    | otherwise = checkDifference (show num) (head (show num))
  where
    num = abs x
    digToInt c = fromEnum c - fromEnum '0'
    checkDifference :: String -> Char -> Int
    checkDifference digits last
        | null digits = 1
        | abs (digToInt (head digits) - digToInt last) > 1 = 2
        | otherwise = checkDifference (tail digits) (head digits)

test = func 123 == 1 &&
       func 5454 == 1 &&
       func 123457 == 2

