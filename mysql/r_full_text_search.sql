CREATE TABLE products (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price INT UNSIGNED NOT NULL DEFAULT 0,
    qty INT UNSIGNED NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FULLTEXT product_search (name, description)
) ENGINE = InnoDB;
SHOW CREATE TABLE products;
INSERT INTO products(name, description, price, qty)
VALUES  ('Mie Ayam Original', 'Mie Ayam Original', 15000, 150),
        ('Mie Ayam Bakso', 'Mie Ayam Original + Bakso', 15000, 150),
        ('Mie Yamin', 'Mie Yamin dengan topping Ayam', 15000, 150),
        ('Wonton Chili Oil', 'Wonton Chili Oil dengan isian Ayam', 15000, 150),
        ('Bakso Original', 'Bakso Original', 15000, 150),
        ('Bakso Komplit', 'Bakso dengan Ceker Ayam dan Gorengan', 15000, 150),
        ('Nasi Goreng Original', 'Nasi Goreng Original', 15000, 150),
        ('Nasi Goreng Gila', 'Nasi Goreng Original + Topping Gila', 15000, 150),
        ('Nasi Goreng Teri Medan', 'Nasi Goreng Teri Medan', 15000, 150),
        ('Nasi Goreng Rempah', 'Nasi Goreng Rempah', 15000, 150),
        ('Soto Original', 'Soto Original', 15000, 150),
        ('Soto Ayam Kampung', 'Soto Ayam Kampung', 15000, 150),
        ('Soto Ayam Spesial', 'Soto Ayam kampung + Telur', 15000, 150);
SELECT * FROM products
WHERE MATCH(name, description)
AGAINST ('ayam' IN NATURAL LANGUAGE MODE);
SELECT * FROM products
WHERE MATCH(name, description)
AGAINST ('+ayam -mie' IN BOOLEAN MODE);
SELECT * FROM products
WHERE MATCH(name, description)
AGAINST ('bakso' WITH QUERY EXPANSION);