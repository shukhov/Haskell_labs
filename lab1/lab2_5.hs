--задача 2.5
max1:: (Real a) => a->a->a->a
max1 x y z = max (max x y) z


test = max1 1 2 3 == 3 && max1 1.1 2.2 3.3 - 3.3 <= 0.00000001