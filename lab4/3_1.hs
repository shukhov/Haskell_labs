--задача 3.1
f lst1 lst2  = take a lst1 ++ drop b lst2
       where a = length lst1 `div` 2
             b = length lst2 `div` 2
            
test = f [1..4] [1,3,2,7,9] == [1,2,2,7,9]
        && f [1,3,5,6] [] == [1,3]  