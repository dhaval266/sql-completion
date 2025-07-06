-- Active: 1737960326287@@127.0.0.1@3306@shopdb
UPDATE Customers
SET Address = 'punjab'
WHERE Name LIKE '%jo%';

SELECT * FROM Customers WHERE Name LIKE '%jo%';  