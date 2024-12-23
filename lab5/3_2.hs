-- задача 3.2

{-
 2*. Напишите функцию, моделирующую операцию (++).
-}

func lst1 lst2
    | null lst1 = lst2
    | otherwise = head lst1 : func (tail lst1) lst2

test = func [1] [2] == [1, 2] &&
       func [] [5] == [5] &&
       func [5] [] == [5]

