use companydb;

create table orders(id int primary key auto_increment,
product_name varchar(30) not null,
quantity int,
price float);

insert into orders (product_name,quantity,price) value('mobile',2,800),
('monitar',3,600),
('air pods',2,150),
('mouse',4,300),
('apple iphone',1,400);

select * from orders;

select * from orders where quantity>2;

select * from orders where price between 100 and 500;

select * from orders where product_name like 'A%';

select * from orders order by quantity desc;