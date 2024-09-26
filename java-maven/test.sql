-- Active: 1727250200730@@ocinz.tech@3306@java_learn
CREATE TABLE customers (
    id      VARCHAR(100) NOT NULL,
    name    VARCHAR(255) NOT NULL,
    email   VARCHAR(255) NOT NULL,
    CONSTRAINT email_unique UNIQUE (email),
    PRIMARY KEY (id)
) Engine = InnoDB;

DESC customers;

SELECT * FROM customers;

CREATE TABLE admin (
    username VARCHAR(100) PRIMARY KEY NOT NULL,
    password VARCHAR(100)
);

INSERT INTO admin(username, password) VALUES ("admin", "admin");

CREATE TABLE comments (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    COMMENT TEXT
) Engine = InnoDB;

SELECT * FROM comments WHERE id>900;

DELETE FROM comments;