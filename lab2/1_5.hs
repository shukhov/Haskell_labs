--задача 1.5 ред.

{-
Пусть f(a) - сумма цифр целого числа a.
Для заданного x вычислите:


f(f(x+2)+f(2x))7f(x2).


Например, если x=12, то результатом является 18.
-}
f a | x > 99999 = error "too large number"
    | otherwise = sumD x 0
    where x = abs a
          sumD 0 y = y
          sumD x y = sumD (x `div` 10) (y +  (x `mod` 10))


f1 x = f(f(x+2) + f (2*x)) * f x^2


test = f1 12 == 18 && f1 (-12) == 63