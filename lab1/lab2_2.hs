--задача 2.2

-- 2*. Напишите функцию, возвращающую модуль целого числа.

abs' :: Integer -> Integer
abs' x = if x < 0 
               then -x
               else x

test = abs' 1 == 1 && abs' (-1) == 1 && abs' 0 == 0