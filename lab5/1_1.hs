-- задача 1.1

{-
    1*. Напишите функцию, вычисляющую произведение элементов  число-
 вого списка.
-}
f lst | null lst = 0
         | otherwise = product lst

f2 lst | null lst = 0
          | otherwise = product' lst
            where product' lst | null lst = 1
                               | otherwise = head lst * product' (tail lst)

test = f [1,2,3] == f2 [1,2,3] || f2 [1,2,3] == product [1,2,3] &&
     f [5, 10] == f2 [5, 10] || f2 [1,2,3] == product [5, 10] &&
      f [] == f2 [] || f [] == 0
