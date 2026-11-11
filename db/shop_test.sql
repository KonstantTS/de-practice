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
