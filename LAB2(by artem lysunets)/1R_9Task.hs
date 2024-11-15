------------------------------10.11.2024-------------------------
----------------------------ЛЫСУНЕЦ АРТЁМ------------------------

----------------------------1 РАЗДЕЛ-----------------------------
--Задание 9
--Напишите функции, моделирующие операции сложения и умножения над
--комплексными числами
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use otherwise" #-}

import Comparator (comparator)

addComplexNum (a, b) (c, d) = (a+c, b+d)

multiplyComplexNum (a, b) (c, d) = (a*c - b*d, a*d + b*c)

printComplexNum (a, b) | b < 0 = putStrLn (show a ++ show b ++ "i")
                       | True = putStrLn (show a ++ "+" ++show b ++ "i")

test9 = addComplexNum (5, 2) (5, 8) == (10, 10)
    &&  addComplexNum ((-5), 2) (15, 8) == (10, 10)
    &&  multiplyComplexNum (7, 3) (5, (-8)) == (59, (-41))
    &&  multiplyComplexNum (12, 0) (6, 2) == (72, 24)
    &&  multiplyComplexNum (5.5, 1.1) (10.45, -(7.2)) == (65.395, (-28.105))