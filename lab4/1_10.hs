-- задача 1.10
pl l
    | length l == 5 && head l == 9 = "Organic product"
    | length l == 4 && (head l == 3 || head l == 4) = a
    | length l == 5 && head l == 8 = b
    where
        a = "Product grown with fertilizers"
        b = "Genetically modified product"

test = pl [3, 5, 6, 2] == "Product grown with fertilizers"
    && pl [8, 4, 6, 2, 7] == "Genetically modified product"
    && pl [9, 1, 4, 6, 3] == "Organic product"
