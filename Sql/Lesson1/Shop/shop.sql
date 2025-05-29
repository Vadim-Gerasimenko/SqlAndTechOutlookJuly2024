DROP DATABASE shop;

CREATE DATABASE shop;

USE shop;

CREATE TABLE categories
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE products
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO categories(name)
VALUES ('Овощи'), ('Фрукты'), ('Сыры'), ('Мясо');

INSERT INTO products(name, price, category_id)
VALUES ('Огурцы', 129.99, 1), ('Бананы', 100.00, 2), 
	('Гауда', 160.50, 3), ('Говядина', 599.99, 4);

DELETE FROM products
WHERE price > 100;

UPDATE products
SET price = 89.99, name = 'Бананы Африка'
WHERE id = 2;