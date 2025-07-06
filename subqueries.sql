-- Active: 1737960326287@@127.0.0.1@3306@collagedb
SELECT products.product_name, products.price
FROM products
WHERE products.price > (
    SELECT AVG(products.price)
    FROM products
);  -- Select products with a price greater than the average price of all products this is a subquery that calculates the average price of all products and uses it to filter the results in the outer query.

