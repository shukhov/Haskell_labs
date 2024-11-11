--задача 2.2
f lst | null lst = []
      | otherwise     = reverse (head lst : reverse (last lst :
                                init (tail lst)))

test = f [1..5] == [5,2,3,4,1]
        && f [34,6,26,8,15,9] == [9,6,26,8,15,34]
        && f [5,7] == [7,5]