-- 1(1)

{-
 1. ќпределите прагматику функций, приведЄнных ниже:
-}


-- (1) функци€ создает список, состо€щий из всех элементов начального списка
--     кроме первого, если изначальный список пустой, то выводитс€ он же.
cdr:: [Int] -> [Int]
cdr lst | null lst = lst
        | otherwise     = tail lst


testCdr = cdr [] == [] &&
          cdr [1] == [] &&
          cdr [1, 2, 3] == [2, 3]


-- (2) функци€ создает список, в котором первый элемент начального списка 
--     дублируетс€, если изначальный список пустой, то выводитс€ он же.
doub:: [Int] -> [Int]
doub lst | null lst = lst
         | otherwise     = head lst : lst


testDoub = doub [] == [] &&
           doub [1] == [1, 1] &&
           doub [1, 2, 3] == [1, 1, 2, 3]

-- (3) функци€ создает последний элемент списка, если список пустой выводит 
--     ошибку.
posl lst | null lst = error ""
         | otherwise     = (last) lst



testPosl = posl [1] == 1 && 
           posl [1, 2, 3] == 3 && 
           posl [10, 20, 30, 40]  == 40        


-- (4) функци€ создает True, если первый элемент списка встречаетс€ в 
--     остальном списке, и False, если первого элемента нет в списке, 
--     кроме как на первом месте.         
xinLst :: [Int] -> Bool
xinLst lst
    | null lst  = error ""
    | otherwise = head lst `elem` tail lst

testXinLst = (xinLst [1] == False) &&
             (xinLst [1, 2, 3, 1] == True) &&
             (xinLst [1, 2, 3, 4] == False)

-- (5) функци€ создает список, в котором первый и последний элемент 
--     начального списка мен€ютс€ местами.          
swap lst =
        reverse (head lst :
        reverse (head (reverse lst):
            init (tail lst)))

testSwap = swap [1, 2, 3] == [3, 2, 1] && 
           swap [1, 2, 3, 4] == [4, 2, 3, 1]


test = testCdr && testDoub && testPosl && testXinLst && testSwap

