-- задача 3.1

{-
 1*. Напишите функцию, моделирующую функцию reverse.
-}
func lst
    | null lst = []
    | otherwise = func (tail lst) ++ [head lst]

test = func [5, 2] == [2, 5] &&
       func [1, 1, 2, 1, 1] == [1, 1, 2, 1, 1] &&
       null (func [])

