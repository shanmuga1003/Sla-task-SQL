use companyDB;

create table products(id int primary key auto_increment,name varchar(20) unique not null,price float not null);

alter table products add column stock int;

alter table products rename column price to unit_price;

insert into products (name,unit_price,stock) values ('joystic',400.25,20),('laptop',80000,8),('pendrive',500.50,17),('mouse',700.75,23),('monitor',20000,2);

update products set stock=5 where id=5;

delete from products where id=4;

select * from products;