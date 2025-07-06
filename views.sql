-- Active: 1737960326287@@127.0.0.1@3306@collagedb
CREATE VIEW Products_prices AS
SELECT category, SUM(price) AS total_price
FROM products
GROUP BY category;  -- This view aggregates the total price of products by category, allowing for easy retrieval of total prices per category without needing to write the aggregation query each time.

SELECT * FROM products_prices;  -- This query retrieves all records from the Products_prices view, showing the total price of products in each category.