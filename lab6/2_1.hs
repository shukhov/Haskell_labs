-- ������ 2.1

{-
     1*. �������� �������,  ������������ ����������� � ��������������
 ������ �� ���� �������� ����� �������, ��� �� ������� ������ �����-
 �� ������ ������������� �����, � �� ������� - ������ �������������.
-}


f lst1 lst2 = filter (<0) lst1 ++ filter (>0) lst2
test =  f [-1,-5,0,3,-2] [7,-3,5,0,-9] == [-1,-5,-2,7,5] &&
        f [0,-1,-2,-3] [0,1,2,3] == [-1,-2,-3,1,2,3] &&
        f [0,1,2,3] [0,-1,-2,-3] == [] && 
        f [] [] == []