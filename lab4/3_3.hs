--задача 3.3
f l s t = a ++ b ++ c
       where a = [l !! max 0 ( length l `div` 2)]
             b = [s !! max 0 ( length s `div` 2)]
             c = [t !! max 0 ( length t `div` 2)]


test= f [1,3,4] [5,6,7] [4,7,8] == [3,6,7]
      && f [1..4] [2..5] [3,4,5,6] == [3,4,5]