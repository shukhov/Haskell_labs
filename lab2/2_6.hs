--задача 2.6 ред.

{-через сколько лет вы сможете использовать снова календарь?-}

isLeapYear :: Int -> Bool
isLeapYear year = (year `mod` 4 == 0 && year `mod` 100 /= 0) || (year `mod` 400 == 0)

findNextReusableYear :: Int -> Int
findNextReusableYear year
    | isLeapYear year =  28
    | isPostLeap year =  6
    | isRegular year = 11
    | isPreLeap year = 11
    | otherwise = 11
  where
    isPostLeap y = isLeapYear (y - 1)
    isRegular y = not (isLeapYear y) && not (isLeapYear (y - 1))
    isPreLeap y = isLeapYear (y + 1)

-- Тесты
test1 = findNextReusableYear 1994 == 11 &&
        findNextReusableYear 2005 == 6 &&
        findNextReusableYear 2007 == 11 &&
        findNextReusableYear 2024 == 28 &&
        findNextReusableYear 2011 == 11

