CREATE TABLE wishlist (
    id          INT             NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_product  INT UNSIGNED    NOT NULL,
    description TEXT,
    CONSTRAINT fk_wishlist_product
        FOREIGN KEY (id_product) REFERENCES products (id)
) ENGINE = InnoDB;

ALTER TABLE wishlist DROP CONSTRAINT fk_wishlist_product;

ALTER TABLE wishlist ADD CONSTRAINT fk_wishlist_product Foreign Key (id_product) REFERENCES products (id);

SHOW CREATE TABLE wishlist;
DESC wishlist;
DESCRIBE wishlist;

INSERT INTO wishlist(id_product,description)
VALUES (2, 'Pengen beli');
SELECT * FROM wishlist;

INSERT INTO wishlist(id_product,description)
VALUES (20, 'Pengen beli');
DELETE FROM products
WHERE id=2;


-- foreign key behavior | RESTRICT (default), CASCADE (dihapus, diubah), NO ACTION (dibiarkan), SET NULL (diubah jadi null)
ALTER TABLE wishlist 
ADD CONSTRAINT fk_wishlist_product 
FOREIGN KEY (id_product) REFERENCES products (id)
ON DELETE CASCADE ON UPDATE CASCADE;

