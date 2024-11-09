--задача 1.9
-- Функция для сложения двух комплексных чисел
addComplex :: (Double, Double) -> (Double, Double) -> (Double, Double)
addComplex (a, b) (c, d) = (a + c, b + d)

-- Функция для умножения двух комплексных чисел
multiplyComplex :: (Double, Double) -> (Double, Double) -> (Double, Double)
multiplyComplex (a, b) (c, d) = (a * c - b * d, a * d + b * c)

z1 = (3, 4) 
z2 = (1, 2)

test = addComplex z1 z2 == (4.0, 6.0) && multiplyComplex z1 z2 == (-5.0, 10.0)