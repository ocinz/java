-- create new table
CREATE TABLE products (
    id          VARCHAR(10)     NOT NULL,
    name        VARCHAR(100)    NOT NULL,
    description TEXT,
    price       INT UNSIGNED    NOT NULL DEFAULT 0,
    quantity    INT UNSIGNED    NOT NULL DEFAULT 0,
    created_at  TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

-- show tables
SHOW TABLES;

-- desc table
DESCRIBE products;

-- insert 1
INSERT INTO products(id, name, price, quantity)
VALUES ("P0001", "Mie Ayam Original", 15000, 100);

-- select
SELECT * FROM products;

-- insert 2
INSERT INTO products(id, name, description, price, quantity)
VALUES ("P0002", "Mie Ayam Bakso", "Mie Ayam Original + Bakso Tahu", 20000, 100);

-- select
SELECT * FROM products;

-- multiple insert 
INSERT INTO products(id, name, price, quantity)
VALUES  ("P0003", "Mie Ayam Ceker", 20000, 100),
        ("P0004", "Mie Ayam Spesial", 25000, 100),
        ("P0005", "Mie Ayam Yamin", 15000, 100);

-- multiple insert 
INSERT INTO products(id, name, price, quantity)
VALUES  ("P0003", "Bakso Komplit", 20000, 100),
        ("P0006", "Dimsum", 10000, 900),
        ("P0007", "Udang Keju", 10000, 900);

-- select
SELECT * FROM products;


-- auto increment
CREATE TABLE admin (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    PRIMARY KEY (id)
) ENGINE = InnoDB;

INSERT INTO admin(first_name, last_name) VALUES ('Ahmad', 'hafid');
INSERT INTO admin(first_name, last_name) VALUES ('Bagus', 'Widjianto');
INSERT INTO admin(first_name, last_name) VALUES ('Eko', 'Khannedy');

SELECT * FROM admin;

SELECT LAST_INSERT_ID();
