-- задача 3.4
func :: [a] -> [a]
func lst
    | null lst = []
    | length lst == 1 = lst
    | otherwise = head (tail lst) : head lst : func (tail (tail lst))

test = func [5] == [5] &&
       func [5, 2] == [2, 5] &&
       func [4, 3, 2, 1] == [3, 4, 1, 2]

