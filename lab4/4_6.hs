--задача 4.6
-- Функция для перевода списочной записи в точечную запись
listToDotNotation :: Show a => [[a]] -> String
listToDotNotation [] = "[]"
listToDotNotation (x:xs) = listToDotNotation' x ++ " : " ++ listToDotNotation xs
  where
    -- Рекурсивная функция для преобразования каждого внутреннего списка в точечную запись
    listToDotNotation' :: Show a => [a] -> String
    listToDotNotation' [] = "[]"
    listToDotNotation' (y:ys) = show y ++ " : " ++ listToDotNotation' ys

-- Тесты
test1 = listToDotNotation [[[1]]] == "[1] : [] : []"
test2 = listToDotNotation [[1, 2], [3]] == "1 : 2 : [] : 3 : [] : []"
test3 = listToDotNotation [[1]] == "1 : [] : []"
test4 = listToDotNotation [[1, 2], [3]] == "1 : 2 : [] : 3 : [] : []"

-- Проверка всех тестов
allTests :: Bool
allTests = test1 && test2 && test3 && test4


