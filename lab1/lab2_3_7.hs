--задача 2.3 (7)

{-
         (-32000-x, если x.127;
(7) f(x)=*
         9?x3?, если x<127;
-}
f7 :: Integer -> Integer
f7 x = if x >= 127
         then -32000 - x
         else abs (x * x * x)

test = f7 130 == (-32130) && f7 3 == 27