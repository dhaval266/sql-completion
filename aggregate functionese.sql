-- Active: 1737960326287@@127.0.0.1@3306@shopdb
SELECT COUNT(*) FROM customers;     -- Count the total number of customers

CREATE TABLE IF NOT EXISTS ORDERS(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL
);

INSERT INTO ORDERS(customer_id, order_date, total_amount)
VALUES (1, '2023-10-01', 100.00),
        (2, '2023-10-02', 150.50),
        (1, '2023-10-03', 200.75),
        (3, '2023-10-04', 300.00),
        (2, '2023-10-05', 250.25),
        (1, '2023-10-06', 175.00),
        (3, '2023-10-07', 400.00),
        (2, '2023-10-08', 125.50),
        (1, '2023-10-09', 225.00),
        (3, '2023-10-10', 350.75),
        (2, '2023-10-11', 275.50),
        (null,'2023-10-12', 300.00),
        (null,'2023-10-13', 450.25),
        (null,'2023-10-14', 500.00),
        (1, '2023-10-15', 600.50);
-- Count the total number of orders

TRUNCATE TABLE ORDERS;

SELECT SUM(total_amount) FROM ORDERS;       -- Calculate the total amount of all orders

SELECT AVG(total_amount) FROM ORDERS;       -- Calculate the average order amount

SELECT MAX(total_amount) FROM ORDERS;       -- Find the maximum order amount

SELECT MIN(total_amount) FROM ORDERS;       -- Find the minimum order amount

