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
    categoryId INT NOT NULL,
    FOREIGN KEY (categoryId) REFERENCES categories(id)
);

DELIMITER $$
CREATE PROCEDURE insertData()
BEGIN
	DECLARE i INT DEFAULT 1;
    
    WHILE i <= 100 DO
		INSERT INTO categories(name)
		VALUES (CONCAT('Категория ', i));
        
        SET i = i + 1;
	END WHILE;
    
    SET i = 1;
    
    WHILE i <= 5000 DO
		INSERT INTO products(name, price, categoryId)
        VALUES (CONCAT('Товар ', i), (10 + RAND() * 9990), FLOOR(1 + RAND() * 100));
        
        SET i = i + 1;
	END WHILE;
END$$
DELIMITER ;

CALL insertData;

SELECT * FROM categories;

SELECT * FROM products;