-- ======================2 РАЗДЕЛ======================

--Задание 6
--Напишите функцию, которая по заданным сторонам квадрата
--и прямоугольника определяет, какая из этих двух фигур
--(квадрат или прямоугольник) имеет большую площадь и периметр
rectOrSq x y a = 
    putStrLn $ "Площадь: " ++ compare rectS sqS ++ ", Периметр: " ++ compare rectP sqP
    where rectS = x*y
          sqS = a*a
          rectP = 2*(x+y)
          sqP = 4*a
          compare x1 x2 | x1 > x2 = "Больше у Прямоугольника"
                        | x2 > x1 = "Больше у Квадрата"
                        | otherwise = "Площади равны"

