-- retrieve all data
SELECT * FROM products;

-- retrieve few columns
SELECT id, name, price, quantity FROM products;

-- limit retrieve data
SELECT id, name, price, quantity FROM products
LIMIT 2;

-- limit with skip, first number is the skipped element, second number is number of element retrieved
SELECT id, name, price, quantity FROM products
LIMIT 2, 3;

