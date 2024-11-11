
--задача 1.5
f lst = product lst == product [1..a]
        where a = length lst

test = f [1,2,3,4,5]
    && f [4,3,2,1]
        &&  (f [5,4,7,2,6,1]) == False