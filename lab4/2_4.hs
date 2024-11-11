--задача 2.4
f lst | null lst = []
      | otherwise = last (init lst) : lst

test = f [3,2,5,6,2,8] == [2,3,2,5,6,2,8]
      && f [2,3] == [2,2,3]