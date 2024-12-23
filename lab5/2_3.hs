-- задача 2.3

{-

    3. Напишите функцию трёх аргументов, включающую заданный элемент
 в заданный список на указанную позицию.-}
func x lst n
    | null lst = error "Empty list"
    | n < 0 = error "Negative index"
    | n > length lst = error "Index out of bounds"
    | otherwise = take n lst ++ [x] ++ drop n lst

test = func 5 [1, 1, 1] 0 == [5, 1, 1, 1]
    && func 10 [1, 5] 2 == [1, 5, 10]

