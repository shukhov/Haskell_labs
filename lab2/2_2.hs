-- задача 2.2 ред
{-
Определите день недели для любого дня
-}
isLeapYear :: Int -> Bool
isLeapYear year =
    (year `mod` 4 == 0 && year `mod` 100 /= 0) || (year `mod` 400 == 0)

dayOfWeek :: Int -> Int -> Int -> String
dayOfWeek day month year
    | month < 3 = let (y, m) = (year - 1, month + 12) in calculateDayOfWeek day m y
    | otherwise = calculateDayOfWeek day month year

calculateDayOfWeek :: Int -> Int -> Int -> String
calculateDayOfWeek day month year =
    let k = year `mod` 100
        j = year `div` 100
        f = day + (13 * (month + 1)) `div` 5 + k + (k `div` 4) + (j `div` 4) - (2 * j)
        s = f `mod` 7
        days = ["Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    in days !! s

test1 = dayOfWeek 11 11 2024 == "Monday" &&
       dayOfWeek 11 11 1970 == "Wednesday"
test2 = dayOfWeek 29 2 2020 == "Saturday" -- Високосный год
test3 = dayOfWeek 1 1 2000 == "Saturday" -- Новый год
test4 = dayOfWeek 31 12 1999 == "Friday" -- Конец года

test = test1 && test2 && test3 && test4


