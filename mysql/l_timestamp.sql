SELECT  id,
        EXTRACT(YEAR FROM created_at) AS 'Tahun',
        EXTRACT(MONTH FROM created_at) AS 'Bulan',
        MONTHNAME(created_at) AS 'Nama Bulan'
FROM products;

SELECT  id,
        YEAR(created_at) AS 'Tahun',
        MONTH(created_at) AS 'Bulan',
        MONTHNAME(created_at) AS 'Nama Bulan'
FROM products;