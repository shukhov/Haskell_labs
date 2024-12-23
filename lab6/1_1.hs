import Data.Char (digitToInt)
import GHC.Base (ord)
-- задача 1.1

-- 1*. Определите назначение следующих функций:


-- 1
ddd :: [Int] -> [Int]
ddd lst = map (`mod` 2) lst

-- Возвращает список остатков от деления каждого числа на 2, заменяя их на 0 или 1.

testddd = ddd [1, 2, 3, 4, 5] == [1, 0, 1, 0, 1] &&
           ddd [6, 7, 8] == [0, 1, 0] &&
           ddd [] == []

---

-- 2
abc :: [Int] -> Bool
abc lst = not $ sum (map (`rem` 2) lst) > 0

--Проверяет, все ли числа в списке чётные.

testabc = abc [2, 4, 6] == True &&
          abc [2, 3, 4] == False &&
          abc [] == True  


-- 3
-- Преобразует строку цифр в список чисел.          
word2Int :: [Char] -> [Int]
word2Int wrd = map (\x -> ord x - ord '0') wrd

testWord2Int = word2Int "1235234345735745674567456742342342352342" 
                ==map digitToInt 
                "1235234345735745674567456742342342352342" &&
                word2Int "123" == [1, 2, 3] &&
                word2Int "4567" == [4, 5, 6, 7] && 
                word2Int "" == []



-- 4
-- Создаёт новый список из отрицательных чисел из lst1 и
-- неотрицательных чисел из lst2.                
f lst1 lst2 = filter (< 0) lst1 ++ filter (>= 0) lst2

testf = f [-1, 2, -3] [4, -5, 6] == [-1, -3, 4, 6] &&
        f [] [1, -2, 3] == [1, 3] &&
        f [-4, -5, -6] [] == [-4, -5, -6]

-- 5 
-- Считает количество подсписков, содержащих число x.        

xil:: Int -> [[Int]] -> Int
xil x lst = length $ filter (elem x) lst

testXil = xil 1 [[1, 2], [3, 4], [1, 5]] == 2 &&
          xil 3 [[1, 2], [3, 4], [5, 6]] == 1 &&
          xil 7 [[1, 2], [3, 4], [5, 6]] == 0


-- 6
--Создаёт список пар (x, x^2) для чисел от 1 до 100, 
-- таких что квадрат числа содержит цифру '3'.         
fmap = map (\y -> (y,y^2))
    (filter (\x -> '3' `elem` show (x^2)) [1..100])


------------

-- 7
-- 
flength lst = length (takeWhile (=='0')
        (reverse (show (product lst))))




binToInt s = sum $ zipWith (*)
                               (map (2^) [0..])
                               (map (\c -> if c=='0'
                                             then 0 else 1)
                                    $ reverse s)
f1:: Double -> Int -> Double
f1 x k = sum $ take k (tail $ iterate sin x)
-------------------------------------------
test1 = abs (f1 1 1 - sin 1)<0.000000000001
test2 = abs (f1 1 3 - sin 1-(sin.sin) 1-(sin.sin.sin) 1)
            <0.000001

log2 x = length (takeWhile (> 1) (iterate (/2) x))

abc1 x  = sum $ take 100 $ iterate (/2) x

gold :: Int ->  Double
gold n = last $ take n $ iterate (\x -> 1.0 / (1.0+x)) 1
     --------------------------------------------------------
test' n | abs (gold n - gold (n+1)) < 0.00001 = n
        | otherwise                                = test' (n+1)