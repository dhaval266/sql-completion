-- Active: 1737960326287@@127.0.0.1@3306@collagedb

CREATE TABLE IF NOT EXISTS products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(50) NOT NULL
);

INSERT INTO products (product_name, price, category) VALUES
('Laptop', 999.99, 'Electronics'),
('Smartphone', 499.99, 'Electronics'),
('Tablet', 299.99, 'Electronics'),
('Desk Chair', 89.99, 'Furniture'),
('Dining Table', 399.99, 'Furniture'),
('Sofa', 799.99, 'Furniture'),
('Blender', 49.99, 'Appliances'),
('Microwave', 199.99, 'Appliances'),
('Refrigerator', 899.99, 'Appliances'),
('Washing Machine', 499.99, 'Appliances');


SELECT category, SUM(price) AS total_price
FROM products
GROUP BY category;      -- Calculate the total price of products in each category

SELECT category, SUM(price) AS total_price
FROM products
GROUP BY category
HAVING total_price > 1500;  -- Filter categories with total price greater than 1500

