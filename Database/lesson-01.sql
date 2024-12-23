-- Hiển thị danh sách database
SHOW DATABASES;

-- Xóa database nếu tồn tại
DROP DATABASE IF EXISTS lesson_01;

-- Tạo database
CREATE DATABASE lesson_01;

-- Chọn database
USE lesson_01;

-- Kiểu dữ liệu
-- Số nguyên:
-- TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT
-- Số thực:
-- FLOAT, DOUBLE
-- Chuỗi ký tự:
-- CHAR, VARCHAR
-- Thời gian:
-- DATE, TIME, DATETIME
-- Logic:
-- BOOLEAN
-- Enum: Tập hợp hữu hạn các giá trị
-- ENUM("MALE", "FEMALE")

-- Hiển thị danh sách table
SHOW TABLES;

-- Xóa table nếu tồn tại
DROP TABLE IF EXISTS customer;

-- Tạo table
CREATE TABLE customer(
    id INT UNSIGNED,
    name VARCHAR(50),
    birthdate DATE,
    gender ENUM("MALE", "FEMALE"),
    active BOOLEAN
);

-- Mô tả table
DESCRIBE customer;

-- DDL table
SHOW CREATE TABLE customer;
