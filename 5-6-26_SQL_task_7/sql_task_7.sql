use companydb;

create table customers (customer_id int primary key, customer_name varchar(50), city varchar(50));

insert into customers values(1, 'john', 'chennai'),(2, 'alice', 'mumbai'),(3, 'bob', 'delhi'),(4, 'david', 'bangalore'),(5, 'emma', 'hyderabad');

create table orders1 (order_id int primary key,customer_id int,product_name varchar(50),amount decimal(10,2),foreign key (customer_id) references customers(customer_id));

insert into orders1 values(101, 1, 'laptop', 50000),(102, 2, 'mobile', 25000),(103, 1, 'keyboard', 1500),(104, 3, 'mouse', 800),(105, 4, 'monitor', 12000);

select * from customers;

select * from orders1;

select c.customer_id,c.customer_name,o.order_id,o.product_name,o.amount from customers c join orders1 o on c.customer_id = o.customer_id;

select c.customer_id,c.customer_name,o.order_id,o.product_name,o.amount from customers c left join orders1 o on c.customer_id = o.customer_id;


create table students (student_id int primary key,student_name varchar(50));

insert into students values(1, 'shanmuga'),(2, 'priyan');

create table courses (course_id int primary key,course_name varchar(50));

insert into courses values(101, 'python'),(102, 'java');

create table student_courses (student_id int,course_id int,primary key (student_id, course_id));

insert into student_courses values(1, 101),(1, 102),(2, 101);

select * from students;

select * from courses;

select * from student_courses;


create table departments2 (dept_id int primary key,dept_name varchar(50));

insert into departments2 values(10, 'MCA'),(20, 'MSc');

create table students2 (student_id int primary key,student_name varchar(50),dept_id int,foreign key (dept_id) references departments2(dept_id));

insert into students2 values(1, 'shanmuga', 10),(2, 'priyan', 20);

select * from departments2;

select * from students2;