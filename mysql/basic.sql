-- create db
CREATE DATABASE belajar_mysql
    DEFAULT CHARACTER SET = 'utf8mb4';

-- show databases
SHOW DATABASES;

-- drop database
DROP DATABASE sakila;

-- use database
USE belajar_mysql;

-- show tables
SHOW TABLES;

-- show engines
SHOW ENGINES;

-- create table
CREATE TABLE barang (
    kode INT,
    nama VARCHAR(100),
    harga INT,
    jumlah INT
) ENGINE = InnoDB;

-- drop table
DROP TABLE barang;

-- to look table detail
DESC barang;
DESCRIBE barang;
SHOW CREATE TABLE barang;

-- alter table
ALTER TABLE barang 
    ADD COLUMN nama_column TEXT,
    DROP COLUMN nama;
ALTER TABLE barang
    RENAME COLUMN nama_column TO nama;

ALTER TABLE barang
    MODIFY nama VARCHAR(100) AFTER jumlah;

ALTER TABLE barang
    MODIFY nama VARCHAR(100) FIRST;



