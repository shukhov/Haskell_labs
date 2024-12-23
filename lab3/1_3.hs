--задача 1.3 ред

{-
    Определите прагматику функции и реализуйте её на Haskell:
 
 
                 (1, если m=0;
                 2   ?                ?
    Rem(n,m,b) + *Rem?n2 MOD b, m/2, b?, если m ? чётное;
                 2   ? ?              ?     ?
                 9n7Rem?n2 MOD b, (m-1)/2, b? в противном случае.
                       ?                    ?
 
 
    Указание. Функция Rem(n,m,b) для целых чисел  n,m,b>0  вычисляет
 остаток от деления nm на b.
-}

remMod :: Integer -> Integer -> Integer -> Integer
remMod n 0 b = 1
remMod n m b
    | even m    = remMod ((n * n) `mod` b) (m `div` 2) b
    | otherwise = (n * remMod ((n * n) `mod` b) ((m - 1) `div` 2) b) `mod` b
    
    
test = remMod 3 13 7 == 3 &&    
    remMod 2 10 5 == 4 &&            
    remMod 5 0 7 == 1 &&             
    remMod 0 5 10 == 0 &&              
    remMod 3 3 5 == 2 &&                
    remMod 4 7 6 == 4
