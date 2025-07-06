-- Active: 1737960326287@@127.0.0.1@3306@shopdb
SELECT customers.CustomerID, customers.name, ORDERS.order_id, ORDERS.total_amount
FROM customers
JOIN orders ON customers.CustomerID = ORDERS.customer_id;       -- inner join to get customer details with their orders


SELECT customers.CustomerID,customers.Name,orders.order_id, orders.total_amount
FROM customers
LEFT JOIN orders ON customers.CustomerID = orders.customer_id;       -- left join to get all customers with their orders, including those without orders


SELECT customers.CustomerID, customers.Name, orders.order_id, orders.total_amount
FROM customers
RIGHT JOIN orders ON customers.CustomerID = orders.customer_id;       -- right join to get all orders with their customer details, including those without customers




SELECT customers.CustomerID, customers.Name, orders.order_id, orders.total_amount
FROM customers
LEFT JOIN orders ON customers.CustomerID = orders.customer_id

UNION

SELECT customers.CustomerID, customers.Name, orders.order_id, orders.total_amount
FROM customers
RIGHT JOIN orders ON customers.CustomerID = orders.customer_id;       -- union to combine results from left and right joins, ensuring all customers and orders are included