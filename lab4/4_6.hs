--задача 4.6

{-
    6. Сформулируйте правило перевода списочной записи списка в  то-
 чечную, выполнение которого показано на примерах:
 
 
    (1) [[[1]]]     ??> (((1:[]):[]):[]);
    (2) [[1,2],[3]] ??> ((1:(2:[]))):((3:[]):[]).
 
 
-}

listToDotNotation :: Show a => [[a]] -> String
listToDotNotation [] = "[]"
listToDotNotation (x:xs) = listToDotNotation' x ++ " : " ++ listToDotNotation xs
  where
    listToDotNotation' :: Show a => [a] -> String
    listToDotNotation' [] = "[]"
    listToDotNotation' (y:ys) = show y ++ " : " ++ listToDotNotation' ys


test1 = listToDotNotation [[[1]]] == "[1] : [] : []"
test2 = listToDotNotation [[1, 2], [3]] == "1 : 2 : [] : 3 : [] : []"
test3 = listToDotNotation [[1]] == "1 : [] : []"


test = test1 && test2 && test3


