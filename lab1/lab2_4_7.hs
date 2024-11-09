--задача 2.4 (7)
f7 :: Double -> Double -> Double
f7 x y = if (2 + (x - y)) == 0
    then error "div by zero"
    else (x + y) / (2 + (x - y))

test = abs(f7 2 3 - 5) <= 0.0000001 && abs(f7 10 5 - 1) <= 00000.1
