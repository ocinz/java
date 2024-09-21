SELECT id,
    CASE category
        WHEN 'Makanan' THEN 'Enak'
        WHEN 'Minuman' THEN 'Segar'  
        ELSE 'Apa itu?'
    END AS 'Category'
FROM products;

-- IF(condition, True, False)
SELECT  id,
        price,
        IF(price<=15000, 'Murah',
            IF(price<=20000, 'Mahal', 'Mahal Banget')
        ) AS 'Mahal?'
FROM products;

SELECT id, name, IFNULL(description, 'Kosong')
FROM products;
