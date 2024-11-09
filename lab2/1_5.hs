--задача 1.5
f :: Integer -> Integer
f a = sum (map (\x -> read [x] :: Integer) (show (abs a)))


f1 x = f (f (x + 2)+ f (2 * x )) * f(x^2)
test = f 1