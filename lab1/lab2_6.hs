--задача 2.6
f :: (Real a) => a -> a -> String
f x y 
    | x == y && x^2 > 4 * x = "ploshad kvadrata bolshe"
    | x /= y && x * y > 2 * (x + y) = "ploshad pryamougolnika bolshe"
    | x == y && x^2 < 4 * x = "perimetr kvadrata bolshe"
    | x /= y && x * y < 2 * (x + y) = "perimetr pryamougolnika bolshe"

test = f 5 5 == "ploshad kvadrata bolshe" && f 5 6 == "ploshad pryamougolnika bolshe" &&
       f 3 3 == "perimetr kvadrata bolshe" && f 2 3 == "perimetr pryamougolnika bolshe"
