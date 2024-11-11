--2.10

toBinary :: Int -> [Int]
toBinary 0 = [0]
toBinary n
    | n > 0     = dropWhile (== 0) (toBinary (n `div` 2) ++ [n `mod` 2])
    | otherwise = error "value must ba netural"


toDecimal :: [Int] -> Int
toDecimal [] = 0
toDecimal (x:xs) = x * 2 ^ length xs + toDecimal xs


test1 = toBinary 13 == [1, 1, 0, 1]
test2 = toDecimal [1, 1, 0, 1] == 13
