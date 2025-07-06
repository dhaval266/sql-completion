-- Active: 1737960326287@@127.0.0.1@3306@collagedb
WITH products_above_avg AS (
    SELECT products.category, SUM(products.price) AS sum_price
    FROM products
    GROUP BY products.category
)
SELECT products_above_avg.category, products_above_avg.sum_price
FROM products_above_avg
WHERE sum_price > 1500; -- This query uses a Common Table Expression (CTE) to first calculate the total price of products in each category, and then filters the results to only include categories where the total price exceeds 1500.
-- This is useful for breaking down complex queries into manageable parts and improving readability.