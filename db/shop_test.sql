CREATE DATABASE test_shop
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE test_shop;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

INSERT INTO customers (full_name, email)
VALUES ('Иванова Анна', 'anna@example.com'),
       ('Петров Пётр', 'petr@example.com');

SELECT customer_id, full_name, email
FROM customers
WHERE full_name LIKE 'Иван%';

-- Задание: shop_test

CREATE DATABASE shop_test
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE shop_test;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2),
    quantity INT DEFAULT 0
);

INSERT INTO products (name, price, quantity) VALUES
('Кроссовки Азимут', 3490.00, 5),
('Туфли классические', 4200.00, 2),
('Сапоги зимние', 6800.00, 8),
('Тапочки домашние', 890.00, 3),
('Ботинки рабочие', 2750.00, 0);

-- 1. Все товары
SELECT * FROM products;

-- 2. Дешевле 1000, по возрастанию цены
SELECT * FROM products
WHERE price < 1000
ORDER BY price;

-- 3. Количество не больше 3
SELECT * FROM products
WHERE quantity <= 3;

-- 4. Общее количество товаров
SELECT COUNT(*) FROM products;

