--������ 2.3 (1)

{-
  3*. �������� ��������� ��� ���������� �������� �������:


           (?x?-10, ���� x,0;               (?27x?, ���� x<-5vx>5;
  (1) f(x)=*                       (5) f(x)=*
           9x2+x+1, ���� x>0;               9x2-4, ���� -5,x,5;

           (x3, ���� -35,x,35;              (1+?x?, ���� x<-8vx>8;
  (2) f(x)=*                       (6) f(x)=*
           9?x?, ���� x<-35vx>35;           9x3+x2, ���� -8,x,8;

           (?x+2?, ���� x,2;                (-32000-x, ���� x.127;
  (3) f(x)=*                       (7) f(x)=*
           9x3-1, ���� x>2;                 9?x3?, ���� x<127;

           (?3-x?, ���� x>3;                (?x2+1?, x<-128;
  (4) f(x)=*                       (8) f(x)=*
           9x3+x2, ���� x,3;                9x5, ���� x.-128.

-}
f1 :: Integer -> Integer
f1 x = if x <= 0 
         then (-x) - 10
         else x * x + x + 1

test = f1 2 == 7 && f1 (-2) == -8