CREATE TABLE sellers (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    name VARCHAR(100),
    name2 VARCHAR(100),
    name3 VARCHAR(100),
    PRIMARY KEY (id),
    UNIQUE KEY email_check (email),
    INDEX name_index (name),
    INDEX name_index2 (name2),
    INDEX name_index3 (name3),
    INDEX index_all (name, name2, name3)
) ENGINE = InnoDB;

DROP TABLE sellers;
DESC sellers;
SHOW CREATE TABLE sellers;

SELECT * FROM sellers WHERE name = 'X';
SELECT * FROM sellers WHERE name = 'X' AND name2 = 'X';
SELECT * FROM sellers WHERE name = 'X' AND name2 = 'X' AND name3 = 'X';


ALTER TABLE sellers
    DROP INDEX index_all;

ALTER TABLE sellers
    ADD INDEX index_all (name, name2, name3);
