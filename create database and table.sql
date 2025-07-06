-- Active: 1737960326287@@127.0.0.1@3306@collagedb
CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE IF NOT EXISTS Customers(
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Address VARCHAR(255),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

TRUNCATE TABLE Customers;

INSERT INTO Customers(Name, Email, Address)
VALUES  ('John Doe', 'john.doe@example.com', 'gujrat'),
        ('Jane Smith', 'jane.smith@example.com', 'mumbai'),
        ('Alice Johnson', 'alice.johnson@example.com', 'delhi'),
        ('Bob Brown', 'bob.brown@example.com', 'mumbai'),
        ('Charlie White', 'charlie.white@example.com', 'bangalore'),
        ('David Green', 'david.green@example.com', 'chennai'),
        ('Eve Black', 'eve.black@example.com', 'hyderabad');