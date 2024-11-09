--задача 2.6

-- Определяет, является ли год високосным
isLeapYear :: Int -> Bool
isLeapYear year = (year `mod` 4 == 0 && year `mod` 100 /= 0) || (year `mod` 400 == 0)

-- Определяет день недели для 1 января данного года (0 = воскресенье, 1 = понедельник, ..., 6 = суббота)
dayOfWeekJanuary1 :: Int -> Int
dayOfWeekJanuary1 year = (year + div (year - 1) 4 - div (year - 1) 100 + div (year - 1) 400) `mod` 7

-- Функция для поиска следующего года, когда календарь снова будет пригоден
findNextReusableYear :: Int -> Int
findNextReusableYear year =
    let 
        originalLeapStatus = isLeapYear year
        originalDayOfWeek = dayOfWeekJanuary1 year
    in head [y | y <- [year + 1 ..], isLeapYear y == originalLeapStatus, dayOfWeekJanuary1 y == originalDayOfWeek]

test = findNextReusableYear 2024