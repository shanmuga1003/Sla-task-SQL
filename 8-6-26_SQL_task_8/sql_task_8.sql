use companydb;

create table employees (id int primary key,name varchar(20) not null,salary int default 30000 check(salary>0), email varchar(30) unique,department  varchar(50));

insert into employees (id,name,salary,email,department) values (1,'shanmuga',40000,'shanmuga@gmail.com','IT');
insert into employees (id,name,salary,email,department) values (2,'venkat',35000,'venkat@gmail.com','sales');
insert into employees (id,name,salary,email,department) values (3,'sadham',50000,'sadham@gmail.com','IT');
insert into employees (id,name,email,department) values (4,'sherif','sherif@gmail.com','finance');
insert into employees (id,name,salary,email,department) values (5,'sathya',40000,'sathya@gmail.com','sales');
insert into employees (id,name,email,department) values (6,'kumar','kumar@gmail.com','finance');

select * from employees;

select * from employees where salary > (select avg(salary) from employees);

create table orders1 (order_id int primary key,customer_id int,product_name varchar(50),amount decimal(10,2),foreign key (customer_id) references customers(customer_id));

insert into orders1 values(101, 1, 'laptop', 50000),(102, 2, 'mobile', 25000),(103, 1, 'keyboard', 1500),(104, 3, 'mouse', 800),(105, 4, 'monitor', 12000);

select * from orders1;

create table product1(product_id int,product_name varchar(100), price int);

insert into product1 values(1,'laptop', 50000),(2, 'mouse', 800),(3, 'monitor', 12000),(4,'keyboard', 1500),(5, 'mobile', 25000);

select * from product1;

select customer_id, count(order_id) from orders1 group by customer_id;

select * from product1 where price > (select min(amount) from orders1);


create table customers (customer_id int primary key, customer_name varchar(50), city varchar(50));

insert into customers values(1, 'john', 'chennai'),(2, 'alice', 'mumbai'),(3, 'bob', 'delhi'),(4, 'david', 'bangalore'),(5, 'emma', 'hyderabad');

select * from customers;

select * from customers where customer_id in (select customer_id from orders1);

select customer_name, (select  count(*)from orders1 where orders1.customer_id = customers.customer_id) as order_count from customers; 

select  distinct department , salary from employees e1 where salary = (select max(salary) from employees e2  where e2.department = e1.department);

select 'product exists' as exists_or_not where exists ( select * from product1 where product_name = 'mouse');