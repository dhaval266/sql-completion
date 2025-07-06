-- Active: 1737960326287@@127.0.0.1@3306@shopdb
SELECT orders.order_id, 
        orders.customer_id, 
        orders.total_amount, 
        ROW_NUMBER() OVER (PARTITION BY orders.customer_id ORDER BY orders.order_date DESC) AS order_rank
FROM orders;    -- This query retrieves all orders and assigns a rank to each order per customer based on the order date, with the most recent order ranked first. The ROW_NUMBER() function is used to assign a unique sequential integer to rows within a partition of a result set, ordered by the specified column(s).

-- This is useful for identifying the most recent orders for each customer, allowing for analysis of customer ordering patterns or trends.
--ROW_NUMBER() is a window function that assigns a unique number to each row within a partition of a result set, starting at 1 for the first row in each partition. The PARTITION BY clause divides the result set into partitions to which the ROW_NUMBER() function is applied, and the ORDER BY clause specifies the order in which the rows are numbered within each partition.
--OVER() is a clause that allows the use of window functions, which perform calculations across a set of table rows that are somehow related to the current row. It is used in conjunction with window functions like ROW_NUMBER(), RANK(), DENSE_RANK(), etc.

SELECT orders.order_id, 
        orders.customer_id, 
        orders.total_amount, 
        RANK() OVER (PARTITION BY orders.customer_id ORDER BY orders.order_date DESC) AS order_rank,
        DENSE_RANK() OVER (PARTITION BY orders.customer_id ORDER BY orders.order_date DESC) AS order_dense_rank
FROM orders;    -- This query retrieves all orders and assigns both a rank and a dense rank to each order per customer based on the order date, with the most recent order ranked first. The RANK() function assigns a unique rank to each row within a partition of a result set, while the DENSE_RANK() function assigns ranks without gaps in the ranking sequence.
-- RANK() assigns a unique rank to each row within a partition, with gaps in the ranking sequence if there are ties, while DENSE_RANK() assigns ranks without gaps, meaning that if two rows are tied for a rank, the next rank will be the next consecutive number.
--- This is useful for identifying the most recent orders for each customer, allowing for analysis of customer ordering patterns or trends, and understanding how many unique orders each customer has placed.
--- The PARTITION BY clause divides the result set into partitions to which the RANK() and DENSE_RANK() functions are applied, and the ORDER BY clause specifies the order in which the rows are ranked within each partition.
--DENSE_RANK() is similar to RANK(), but it does not leave gaps in the ranking sequence when there are ties. For example, if two rows are tied for rank 1, both will receive a rank of 1, and the next row will receive a rank of 2, rather than 3 as it would with RANK().
--- This is useful for identifying the most recent orders for each customer, allowing for analysis of customer ordering patterns or trends, and understanding how many unique orders each customer has placed.