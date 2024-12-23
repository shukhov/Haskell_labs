--задача 2.3 (8)

{-
        (?x2+1?, x<-128;
8) f(x)=*
        9x5, если x.-128.
-}
f8 :: Integer -> Integer
f8 x = if x < -128
         then abs (x * x + 1)
         else x^5


test = f8 (-129) == 16642 && f8 2 == 32
