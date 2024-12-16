--задача 1.4
computePi :: Double
computePi = 2 * asin 1

test = abs(computePi - pi) < 0.000001