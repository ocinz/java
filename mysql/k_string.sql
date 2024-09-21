SELECT id, UPPER(name) AS 'Name'
FROM products;

SELECT id, LOWER(name) AS 'Name'
FROM products;

SELECT id, name, LENGTH(name) AS 'Panjang'
FROM products;