--задача 4.5
-- Функция для представления списка в точечной записи
listToDotNotation :: Show a => [a] -> String
listToDotNotation [] = "[]"
listToDotNotation (x:xs) = show x ++ " : " ++ listToDotNotation xs

-- Тесты с однородным типом элементов
test1 = listToDotNotation ([1, 2, 3] :: [Int]) == "1 : 2 : 3 : []"
test2 = listToDotNotation ([5] :: [Int]) == "5 : []"
test3 = listToDotNotation ([] :: [Int]) == "[]"
test4 = listToDotNotation ([[1], [2, 3]] :: [[Int]]) == "[1] : [2,3] : []"
test5 = listToDotNotation ([[1], [2, 3], [4]] :: [[Int]]) == "[1] : [2,3] : [4] : []"

-- Проверка всех тестов

test = test1 && test2 && test3 && test4 && test5



