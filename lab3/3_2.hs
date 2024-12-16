--задача 3.2 ред
f:: Integer->Integer
f n | n > 202 = n - 3
    | otherwise = f (f (n+4))

f1 n | n > 202 = n - 3
     | otherwise = 200

test = f 203 == f1 203 && f 201 == f1 201