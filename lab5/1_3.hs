-- задача 1.3

{-
  3*. Напишите функцию, возвращающая произведение сумм положитель-
 ных и отрицательных элементов числового списка LST.
-}
func lst
    | null lst  = 0
    | otherwise = posSum lst * negSum lst
  where
    posSum xs = sum [x | x <- xs, x >= 0]
    negSum xs = sum [x | x <- xs, x < 0]

test = func [] == 0 &&
     func [5, 10] == 0 &&
     func [10, -5] == -50 &&
     func [3, 5, -2] == -16

