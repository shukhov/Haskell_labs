--задача 2.2

-- Проверка, является ли год високосным
isLeapYear :: Int -> Bool
isLeapYear year =
    let (a1, a2) = year `divMod` 100  -- Разделение года на A1 и A2
    in (a2 == 0 && a1 `mod` 4 == 0) || (a2 /= 0 && a2 `mod` 4 == 0)

-- Вычисление величины N
calculateN :: Int -> Int -> Int
calculateN month year
    | month == 1 || month == 2 = if isLeapYear year then 1 else 2
    | otherwise = 0

-- Вычисление кода дня C
calculateC :: Int -> Int -> Int -> Int
calculateC day month year =
    let (_, a2) = year `divMod` 100
        n = calculateN month year
        c = floor (365.257 * fromIntegral a2) +
         floor (30.567 * fromIntegral month) + day + n
    in c

-- Вычисление дня недели по остатку S
dayOfWeek :: Int -> Int -> Int -> String
dayOfWeek day month year =
    let c = calculateC day month year
        s = c `mod` 7
        days = ["Wednesday", "Thursday", "Friday", "Saturday",
         "Sunday", "Monday", "Tuesday"]
    in days !! (s-1)


-- Пример использования
test = dayOfWeek 11 11 2024
