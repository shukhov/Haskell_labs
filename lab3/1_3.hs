--задача 1.3 ред

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
