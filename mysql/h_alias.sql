SELECT 
    id AS kode,
    name AS 'Nama Produk',
    price AS Harga,
    quantity AS Stok
FROM products;

-- actually
SELECT 
    products.id AS kode,
    products.name AS 'Nama Produk',
    products.price AS Harga,
    products.quantity AS Stok
FROM products;

-- with alias
SELECT 
    p.id AS kode,
    p.name AS 'Nama Produk',
    p.price AS Harga,
    p.quantity AS Stok
FROM products AS p;
