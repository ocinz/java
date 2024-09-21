DESCRIBE products;

ALTER TABLE products
ADD COLUMN category ENUM("Makanan", "Minuman", "Lain-lain")
AFTER name;

-- update row value | be care full with where clause
UPDATE products
SET category = "Makanan"
WHERE id="P0001";


UPDATE products
SET   name="Mie Ayam Ceker Pedas",
      price = 27000,
      quantity = 150
WHERE id="P0003";

UPDATE products
SET   name="Mie Ayam Ceker Pedas",
      price = price - 2000,
      quantity = quantity - 15
WHERE id="P0003";

SELECT * FROM products;
