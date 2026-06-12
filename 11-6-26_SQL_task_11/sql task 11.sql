use companydb;

select * from employees;

insert into employees values(9,'ramesh',40000,'ramesh@gmail.com','manager');

insert into orders1 value(106,1,'mouse',400.00);
insert into orders1 value(107,3,'ram',1400);


insert into orders1 value(108,3,'monitor',2000.00);

select * from employees e1 where salary >= ( select avg(salary) from employees e2 where e2.department = e1.department);

select * from orders1 where customer_id in (select customer_id from orders1 group by customer_id having count(*) >2);

select * from products where unit_price = (select max(unit_price) from products);



select distinct customer_id, (select sum(amount) from orders1 o2 where o2.customer_id = o1.customer_id) as total_amount from orders1 o1;


create table employees2 (employee_id int primary key, name varchar(50), salary decimal(10,2),manager_id int);

insert into employees2 values(1,'john',80000,null),(2,'mary',50000,1),(3,'tom',90000,1),(4,'sam',45000,2);

select * from employees2 e1 where salary > (select salary from employees2 e2 where e2.employee_id = e1.manager_id);

select * from products;

select * from orders;

select * from products p where exists (select 1 from orders o where o.product_id = p.id);