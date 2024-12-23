-- задача 1.2

{-    
 2*. Напишите функцию,  возвращающую список,  у  которого  первый
 элемент является суммой квадратов, а второй ? произведением квадра-
 тов элементов числового списка.-}
quadFunc :: [Int] -> [Int]
quadFunc xs
    | null xs   = [0, 0]
    | otherwise = [sumOfSquares xs, productOfSquares xs]
  where
    sumOfSquares = foldl (\acc x -> acc + x^2) 0
    productOfSquares = foldl (\acc x -> acc * x^2) 1

test = quadFunc [] == [0, 0]
    && quadFunc [5, 2] == [29, 100]

