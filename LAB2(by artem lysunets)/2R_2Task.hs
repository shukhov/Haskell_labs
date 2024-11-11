------------------------------10.11.2024-------------------------
----------------------------ЛЫСУНЕЦ АРТЁМ------------------------

----------------------------2 РАЗДЕЛ-----------------------------
--Задание 2
--Напишите программу определения соответствующего дня нелеои по известным
--целым числам: J - число, M - месяц, A -год
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use otherwise" #-}
dayCalc :: Int -> Int -> Int -> String
dayCalc j m a = day !! ((s-1) `mod` 7)
        where 
            day = ["Wednesday", "Thursday", "Friday", "Saturday", "Sunday", "Monday", "Thesday"]
            s = c `mod` 7
            c = floor (365.25 * fromIntegral a2) + floor (30.56 * fromIntegral m) + j + n
            n | ((m == 1 || m == 2) && isLeapYear a) = 1
                | (m == 1 || m == 2) = 2
                | True = 0
            isLeapYear year | year `mod` 400 == 0 = True
                            | year `mod` 100 == 0 = False
                            | year `mod` 4 == 0 = True
                            | otherwise = False
            a2 = a `mod` 100

test2 = dayCalc 11 11 2024 == "Monday"
    &&  dayCalc 15 04 2025 == "Thesday"
    &&  dayCalc 15 04 2005 == "Friday"