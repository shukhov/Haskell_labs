--задача 1.9 ред.
addComplex :: (Double, Double) -> (Double, Double) -> (Double, Double)
addComplex (a, b) (c, d) = (a + c, b + d)

multiplyComplex :: (Double, Double) -> (Double, Double) -> (Double, Double)
multiplyComplex (a, b) (c, d) = (a * c - b * d, a * d + b * c)

z1 = (3.0, 4.0) 
z2 = (1.0, 2.0)

test = addComplex z1 z2 == (4.0, 6.0) 
       && multiplyComplex z1 z2 == (-5.0, 10.0)