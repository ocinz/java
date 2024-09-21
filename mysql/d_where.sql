SELECT id, name, price, quantity FROM products
WHERE price =20000;

SELECT id, name, price, quantity FROM products
WHERE price >=20000;

SELECT id, name, price, quantity FROM products
WHERE price <20000;

SELECT id, name, price, quantity FROM products
WHERE id ="P0001";

-- case insensitive | this should retrieve the same data
SELECT id, name, price, quantity FROM products
WHERE name ="Mie Ayam Original";
SELECT id, name, price, quantity FROM products
WHERE name ="mie ayam original";

SELECT id, name, price, quantity FROM products
WHERE price > 15000
AND quantity > 90;

SELECT id, name, price, quantity FROM products
WHERE price < 25000
OR quantity > 90;

UPDATE products
SET quantity = 1000
WHERE id = 'P0001';

SELECT id, name, price, quantity FROM products
WHERE (price < 25000 AND quantity = 100)
OR quantity > 90;

SELECT id, name, price, quantity FROM products
WHERE quantity > 100  
AND (price < 25000 OR quantity = 100);

-- LIKE operator
SELECT id, name, price, quantity FROM products
WHERE name LIKE '%Bakso%';

SELECT id, name, price, quantity FROM products
WHERE name LIKE '%Bakso';
SELECT id, name, price, quantity FROM products
WHERE name LIKE 'Bakso%';

SELECT id, name, price, quantity FROM products
WHERE name NOT LIKE '%Bakso%';

-- NULL operator
SELECT id, name, price, quantity, description FROM products
WHERE description IS NULL;

SELECT id, name, price, quantity, description FROM products
WHERE description IS NOT NULL OR category IS NOT NULL;

-- Between operator
SELECT id, name, price, quantity FROM products
WHERE quantity >= 100 AND quantity <= 1000;

SELECT id, name, price, quantity FROM products
WHERE quantity BETWEEN 100 AND 1000;

-- IN OPERATOR
SELECT id, name, price, quantity, category FROM products
WHERE category IN ('Makanan');

-- ORDER BY
SELECT * 
FROM products
ORDER BY price ASC, id DESC;