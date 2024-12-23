-- задача 1.4

{-
  4. Напишите функцию, определяющую наибольшее из всевозможных по-
  парных произведений элементов числового списка.
 
    Указание. Воспользуйтесь определителем списков.
-}
func lst
    | null lst        = 0
    | length lst == 1 = head lst
    | otherwise       = maxVal * maxWithoutMax
  where
    maxVal = maximum lst
    maxWithoutMax = maximum (take maxIndex lst ++ drop (maxIndex + 1) lst)
    maxIndex = findIndex lst maxVal 0
    findIndex (x:xs) val idx
        | x == val  = idx
        | otherwise = findIndex xs val (idx + 1)
    findIndex [] _ _ = -1 

test = func [5, 2] == 10 &&
       func [3, 1, 2, 7] == 21 &&
       func [2, 5, 5, 2] == 25 &&
       func [] == 0 &&
       func [5] == 5
