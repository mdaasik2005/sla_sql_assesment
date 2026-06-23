use sample;

create table shopping
(
product_name varchar(20),
product_id int primary key,
price decimal(10,2)
);


create table orders
(
product_id int primary key,
order_status varchar(20),
shipping_details varchar(20)
);


insert into shopping values
('LENOVA loq laptop',1,75000),
('SAMSUNG S26 ULTRA',2,140000),
('IPHONE 17 PRO MAX',3,150000.00),
('NIKON DSLR camera',4,80000.00),
('ASUS TUF gaming f15',5,80000.00),
('PS 5',6,55000.00);

select * from shopping;

insert into orders values
(1,"delivered","chennai"),
(5,"processing","Covai"),
(6,"delivered","Trichy");

select * from orders;

###---innner join

select
s.product_id,
s.product_name,
s.price,
o.order_status

from shopping s
join orders o on s.product_id = o.product_id;

##---left join

select
s.product_id,
s.price,
o.order_status,
o.shipping_details

from shopping s
left join orders o on s.product_id = o.product_id;

###---right join

select
s.product_id,
s.product_name,
s.price,
o.order_status

from shopping s
right join orders o on s.product_id = o.product_id;

###---outer join

select
s.product_id,
s.product_name,
s.price,
o.order_status,
o.shipping_details

from shopping s
left join orders o on s.product_id = o.product_id

union

select
s.product_id,
s.product_name,
s.price,
o.order_status,
o.shipping_details

from shopping s
right join orders o on s.product_id = o.product_id;