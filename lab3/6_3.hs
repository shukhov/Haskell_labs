-- 6(3)
f kk | kk == 0 = 0
      | kk == 1 = sqrt 8
      | kk == 2 = sqrt (8 - sqrt 8)
      | otherwise   = sqrt (8 - sqrt (8 + sqrt (8 - f (kk - 3))))
f' = 1 + 2 * sqrt 3 * sin (20 * pi/180)

   --
test = round (f   12) == round f'
        && round (f 2387) == round f'