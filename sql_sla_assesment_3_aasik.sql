### create database

create database croma;
show databases;

### use database

use croma;


## create shopping table

create table shopping (
    product_id int primary key,
    product_name varchar(50),
    price decimal(10,2)
);

### insert records

insert into  Shopping value
(101, 'Refrigerator', 45000.00),
(102, 'Washing Machine', 32000.00),
(103, 'Microwave Oven', 12000.00),
(104, 'Air Conditioner', 55000.00),
(105, 'Electric Kettle', 2500.00),
(106, 'Mixer Grinder', 4500.00),
(107, 'Television', 38000.00);

## highest price product

select * from shopping
where price = (select max(price) from shopping);

## lowest price product

select * from shopping
where price = (select min(price) from shopping);