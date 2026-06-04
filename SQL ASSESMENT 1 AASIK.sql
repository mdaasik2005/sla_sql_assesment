-- Creating Database
CREATE DATABASE ECOMERCE_DB;
SHOW DATABASES;

-------------------------------------
-- Using the Specific Database
USE ECOMERCE_DB;

-------------------------------------------------
-- Creating Table

CREATE TABLE amazon (
product_ID INT PRIMARY KEY,
product_name VARCHAR(50),
price DECIMAL(10,2),
quantity int
);

SELECT * FROM amazon;

----------------------------------
-- Inserting Records

INSERT INTO amazon values
(1, 'Smart Watch', 2999.00, 4),
(2, 'Bluetooth Speaker', 1499.00, 8),
(3, 'Gaming Mouse', 899.00, 12),
(4, 'Water Bottle', 299.00, 20),
(5, 'Study Table', 4500.00, 2);

SELECT * FROM amazon;
