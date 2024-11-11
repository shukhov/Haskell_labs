-- ======================2 РАЗДЕЛ======================

import Comparator (comparator) -- импорт самописной функции сравнения вещественных чисел

--Задание 4
--Напишите программу для вычесления функции:

---4.1
f1 x y | x+y == 0 = error ""
       | otherwise = (x*y)/(2*(x+y))

testF1 = comparator (f1 1 1) 0.25 2
    &&
        comparator (f1 0.5 0.7) 0.14 2

---4.2
f2 x y | x+y == 0 = error ""
       | otherwise = (5*(x-y))/(x+y)

testF2 = comparator (f2 1.0 1.0) 0.0 1
    && 
        comparator (f2 1.1 1.0) 0.2380952381 6

---4.10
f10 x | x+1 == 0 = error ""
      | otherwise = abs ((x-1)/(x+1))

testF10 = comparator (f10 2.0) 0.333 3
    &&
        comparator (f10 3.0) 0.5 1
    &&
        comparator (f10 (-4.4)) 1.588235294 5
    &&
        comparator (f10 0.0) 1.0 1