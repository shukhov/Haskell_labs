-- задача 3.5
func lst1 lst2
    | null lst1 || null lst2 = []
    | otherwise = (head lst1 + head lst2) : func (tail lst1) (tail lst2)

test = func [] [] == [] &&
       func [1] [9] == [10] &&
       func [5, 4, 3, 2, 1] [5, 6, 7, 8, 9] == [10, 10, 10, 10, 10] &&
       func [1, 2, 3] [1, 2, 3, 4, 5] == [2, 4, 6]
