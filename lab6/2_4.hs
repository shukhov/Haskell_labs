-- ������ 2.4

{-
   4. �������� ������� f:: [Int] -> [Int] -> [Int], ���������  ���-
������ �������� �������:


   test =   f [1,2,(-1)]    [(-3),5,6]       == [(-1),5,6]
         && f [1,(-2),(-1)] [3,5,6]          == [(-2),(-1),3,5,6]
         && f [1,2,1]       [(-3),(-5),(-6)] == []
-}
f:: [Int] -> [Int] -> [Int]
f lst1 lst2 = filter (<0) lst1 ++ filter (>0) lst2
test24 = f [1,2,(-1)][(-3),5,6] == [(-1),5,6] &&
         f [1,(-2),(-1)] [3,5,6] == [(-2),(-1),3,5,6] &&
         f [1,2,1] [(-3),(-5),(-6)] == [] && 
         f [] [] == [] &&
         f [] [1, 2, 3]== [1, 2, 3] &&
         f [-1, -2, -3] []== [-1, -2, -3]