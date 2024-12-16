--задача 2.6 ред.

isLeapYear :: Int -> Bool
isLeapYear year = (year `mod` 4 == 0 && year `mod` 100 /= 0) || (year `mod` 400 == 0)

findNextReusableYear :: Int -> Int
findNextReusableYear year
    | isLeapYear year = year + 28
    | isPostLeap year = year + 6
    | isRegular year = year + 11
    | isPreLeap year = year + 11
    | otherwise = year + 11
  where
    isPostLeap y = isLeapYear (y - 1)
    isRegular y = not (isLeapYear y) && not (isLeapYear (y - 1))
    isPreLeap y = isLeapYear (y + 1)

-- Тесты
test1 = findNextReusableYear 1994 == 2005 &&
        findNextReusableYear 2005 == 2011 &&
        findNextReusableYear 2007 == 2018 &&
        findNextReusableYear 2024 == 2052 &&
        findNextReusableYear 2011 == 2022

