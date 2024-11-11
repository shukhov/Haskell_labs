--задача 5.1
import Data.Ratio

-- Функция для вычисления выражения в зависимости от значения альфа
compute :: Double -> Maybe Double
compute alpha
    | alpha < 0 = Nothing
    | alpha == 0 = Just 0
    | otherwise = Just ((1 + sqrt (1 + 4 * alpha)) / 2)

-- Функция для получения "целых" результатов вычисления
isIntegerResult :: Double -> Bool
isIntegerResult alpha =
    case compute alpha of
        Just result -> denominator (toRational result) == 1
        Nothing -> False

-- Тестирование
main :: IO ()
main = do
    let testValues = [0, 2, 6, 8, 10, 12, 15, 18, 20, 42, 56, 72, 90, 
                    102, 120, 156, 210, 240, 306, 380, 462, 650, 792, 992]
    print $ filter isIntegerResult testValues



