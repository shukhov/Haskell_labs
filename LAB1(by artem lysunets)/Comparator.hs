
-- =============Этот файл подключается к другим файлам=======================

--Данная функция позволяет проводить сравнение вещественных чисел
--Функция принимает на вход два числа (frstDigit и scndDigit) и кол-во знаков
--после запятой (accuracy) для изменения точности
--Возвращает функция Bool
module Comparator where

comparator frstDigit scndDigit accuracy
    | abs (frstDigit - abs scndDigit) < 1 / (10 ** fromIntegral accuracy) = True
    | otherwise = False


--Тесты для проверки работы функции comparator

test = comparator 5.1 5.101 2 == True
        &&
         (comparator (-3.4) 3.4 2) == False
        &&
         comparator 6.0000066 6.00 5 ==True
        &&
         comparator 6.0000066 6.00 6 ==False
