-- задача 3.3
func lst k | null lst = lst
           | otherwise = head lst*k : func (tail lst) k

test = func [] 1 == [] &&
       func [1] 10 == [10] &&
       func [1, 2, 3, 4, 5] 5 == [5, 10, 15, 20 ,25]
