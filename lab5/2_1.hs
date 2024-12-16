-- задача 2.1
func lst n
    | null lst = error "Empty list"
    | n >= length lst = error "Index out of bounds"
    | otherwise = lst !! max 0 n

test = func [5, 2, 1] 0 == 5
    && func [1, 2] 1 == 2
    && func [7, 5, 1, 3, 1] 3 == 3

