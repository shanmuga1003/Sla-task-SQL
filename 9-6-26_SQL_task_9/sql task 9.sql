use companydb;

create table sales (id int primary key, product varchar(50), amount decimal(10,2));

insert into sales values(1, 'Laptop', 50000),(2, 'Mobile', 30000),(3, 'Keyboard', 5000),(4, 'Mouse', 5000),(5, 'Monitor', 20000),(6, 'Tablet', 30000);

select * from sales;

select product, amount, row_number() over(order by amount desc) as row_rank from sales;

select product, amount, rank() over(order by amount desc) as row_rank from sales;

select product, amount, dense_rank() over(order by amount desc) as row_rank from sales;

select id, product, amount, sum(amount) over (order by id) as running_total from sales;

with avg_sales as (select avg(amount) as avg_amount from sales)
select * from sales where amount > (select avg_amount from avg_sales);