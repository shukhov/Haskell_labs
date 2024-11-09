--задача 2.7
f:: Integer->Integer->String
f x y | x > 0 && y > 0 = "I"
      | x < 0 && y > 0 = "II"
      | x < 0 && y < 0 = "III"
      | x > 0 && y < 0 = "IV"
      | otherwise = "point on axys"

test = f 1 1 == "I" && f (-1) 1 == "II" && f (-1) (-1) == "III" &&
       f 1 (-1) == "IV" && f 0 0 == "point on axys"