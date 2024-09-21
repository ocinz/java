-- add primary key
ALTER TABLE products
ADD PRIMARY KEY (id);

-- desc
SHOW CREATE TABLE products;

-- drop table
DROP TABLE products;

-- create new table with primary key
CREATE TABLE products (
    id          VARCHAR(10)     NOT NULL PRIMARY KEY,
    name        VARCHAR(100)    NOT NULL,
    description TEXT,
    price       INT UNSIGNED    NOT NULL DEFAULT 0,
    quantity    INT UNSIGNED    NOT NULL DEFAULT 0,
    created_at  TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- desc
SHOW CREATE TABLE products;

-- insert 1
INSERT INTO products(id, name, price, quantity)
VALUES ("P0001", "Mie Ayam Original", 15000, 100);

-- insert 2
INSERT INTO products(id, name, description, price, quantity)
VALUES ("P0002", "Mie Ayam Bakso", "Mie Ayam Original + Bakso Tahu", 20000, 100);

-- multiple insert 
INSERT INTO products(id, name, price, quantity)
VALUES  ("P0003", "Mie Ayam Ceker", 20000, 100),
        ("P0004", "Mie Ayam Spesial", 25000, 100),
        ("P0005", "Mie Ayam Yamin", 15000, 100);

-- multiple insert / this should be error, because primary key field cannot have same value/duplicate
INSERT INTO products(id, name, price, quantity)
VALUES  ("P0003", "Mie Ayam Ceker", 20000, 100),
        ("P0004", "Mie Ayam Spesial", 25000, 100),
        ("P0005", "Mie Ayam Yamin", 15000, 100);

-- select
SELECT * FROM products;