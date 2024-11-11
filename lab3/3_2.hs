--задача 3.2
f:: Integer->Integer
f n | n > 202 = n - 3
    | otherwise = f (f (n+4))

test = f 203 == 200 && f 201 == 200