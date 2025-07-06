-- Active: 1737960326287@@127.0.0.1@3306@collagedb
ALTER TABLE students
ADD COLUMN Address VARCHAR(255),
ADD COLUMN PhoneNumber VARCHAR(15);
-- This will add new columns Address and PhoneNumber to the Students table


ALTER TABLE students
MODIFY PhoneNumber VARCHAR(20);
-- This will modify the PhoneNumber column to allow for longer phone numbers

-- ALTER TABLE students
-- RENAME PhoneNumber TO MobileNumber;
-- -- This will rename the PhoneNumber column to MobileNumber
