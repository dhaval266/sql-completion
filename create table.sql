-- Active: 1737960326287@@127.0.0.1@3306@collagedb
SELECT DATABASE();  -- This will show the current database in use   

CREATE TABLE IF NOT EXISTS Students (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age TINYINT NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    DateOfBirth DATE,
    EnrollmentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);                                                          -- This will create a table named Students with specified columns
