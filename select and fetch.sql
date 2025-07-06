-- Active: 1737960326287@@127.0.0.1@3306@collagedb
SELECT * FROM Customers;

SELECT Name, Address FROM Customers;

SELECT DISTINCT Address FROM Customers;

SELECT Name, Address FROM Customers WHERE Address = 'mumbai';

SELECT Name, Address FROM Customers WHERE Address LIKE '%de%';

SELECT * FROM Customers WHERE Address NOT LIKE '%de%';