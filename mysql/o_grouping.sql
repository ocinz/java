SELECT  price
FROM products
GROUP BY price;

SELECT  price,
        COUNT(id) AS 'Total'
FROM products
GROUP BY price;

SELECT  price,
        COUNT(id) AS total
FROM products
GROUP BY price
HAVING total > 1;
