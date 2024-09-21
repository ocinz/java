CREATE TABLE customers (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    PRIMARY KEY (id),
    UNIQUE KEY email_unique (email)
) ENGINE = InnoDB;

DESCRIBE customers;

ALTER TABLE customers
    DROP CONSTRAINT email_unique;

ALTER TABLE customers
    ADD CONSTRAINT email_unique UNIQUE (email);

INSERT INTO customers(email, first_name, last_name) 
VALUES ('ahmad@gmail.com', 'ahmad', 'hafid');
INSERT INTO customers(email, first_name, last_name) 
VALUES ('ahmad', 'ahmad', 'hafid');

SELECT * FROM customers;

ALTER TABLE customers
    ADD CONSTRAINT check_first_name CHECK (LENGTH(first_name) > 4);

INSERT INTO customers(email, first_name, last_name) 
VALUES ('hafid@gmail.com', 'ahma', 'hafid');

UPDATE customers
SET first_name = 'sate'
WHERE id = 1;

INSERT INTO customers(email, first_name, last_name) 
VALUES ('hafid@gmail.com', 'ahmad', 'hafid');

ALTER TABLE customers
    DROP CONSTRAINT check_first_name;

INSERT INTO customers(email, first_name, last_name) 
VALUES ('hafid12@gmail.com', 'ahma', 'hafid');

