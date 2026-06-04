---creating database

CREATE DATABASE bank_data;
SHOW DATABASES;
----------------------------------
--using the specific database
USE bank_data;
--------------------------------------------
-- Creating a Table

CREATE TABLE Bank (
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    bank_balance DECIMAL(10,2),
    active_status VARCHAR(10)
);

select * from bank;
------------------------------------------------
--- inserting values into the table

INSERT INTO Bank VALUES
(1,'aasik', 100000.00, 'Active'),
(2, 'shahul', 50000.00, 'Active'),
(3, 'khaja', 250.00, 'Active'),
(4, 'siva',0, 'Active'),
(5, 'zainul', 150.00, 'Active');

select * from bank;
------------------------------------------------
---Update Active Status to Inactive, for Customers with Balance Below 500

SET SQL_SAFE_UPDATES = 0;

UPDATE Bank
SET active_status = 'Inactive'
WHERE bank_balance < 500;

select * from bank;
------------------------------------------------
---Delete Customers with Balance 0 and change Active Status Inactive

DELETE FROM Bank
WHERE bank_balance = 0
AND active_status = 'Inactive';

SELECT * FROM Bank