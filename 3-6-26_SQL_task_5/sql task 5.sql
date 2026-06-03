use companydb;

select * from orders;

select count(*) from orders;

select sum(price) from orders;

select avg(price) from orders;

select product_name, sum(price) from orders group by product_name;

select max(price), min(price) from orders;

select product_name, sum(price) as total_sales from orders group by(product_name) order by total_sales desc;