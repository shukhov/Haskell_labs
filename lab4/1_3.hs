--задача 1.3
import Data.List

f lst = elemIndices a lst
      where a = head lst + last lst

test = f [1,2,4,3] == [2]
    && f [2,5,3,7,9,3,1,1]   == [2,5]
    && f [5,9,2,3,1,9,8,9,4] == [1,5,7]