--задача 1.9 ред.
addComplex :: (Double, Double) -> (Double, Double) -> (Double, Double)
addComplex (a, b) (c, d) = (a + c, b + d)

multiplyComplex :: (Double, Double) -> (Double, Double) -> (Double, Double)
multiplyComplex (a, b) (c, d) = (a * c - b * d, a * d + b * c)

z1 = (3.0, 4.0) 
z2 = (1.0, 2.0)

test = abs(fst(addComplex z1 z2)-4.0) <= 0.0000001 && 
       abs(snd(addComplex z1 z2)-6.0) <= 0.0000001 &&
       abs(fst(multiplyComplex z1 z2)+5.0) <= 0.00000001 &&
       abs(snd(multiplyComplex z1 z2)-10.0) <= 0.0000001 