use companydb;

select * from employees;

delimiter //
create procedure insert_employees(in id int, in name varchar(100),in salary int, in email varchar(100), in department varchar(50))
begin
	insert into employees values(id,name,salary,email,department);
end //
delimiter ;

call insert_employees(7,'velu',40000,'velu@gmail.com','sales');
call insert_employees(8,'suresh',35000,'suresh@gmail.com','finance');

delimiter //
create procedure update_salary(in emp_id int, in emp_salary int)
begin
	update employees set salary = emp_salary where id = emp_id;
end //
delimiter ;

call update_salary(7,70000);


select * from products;

select * from orders;

alter table orders add column product_id int;


delimiter //
create trigger update_stock
after insert
on orders
for each row
begin
	update products set stock = stock - new.quantity where id = new.product_id;
end //
delimiter ;


insert into orders values(6,'pendrive',2,500,3);


create table users (
    id int primary key,
    username varchar(50),
    role varchar(20)
);

insert into users values
(1,'john','admin'),
(2,'mary','admin'),
(3,'tom','user');

delimiter //
create trigger prevent_last_admin_delete
before delete
on users
for each row
begin
    if old.role = 'admin'
       and (
           select count(*)
           from users
           where role = 'admin'
       ) = 1
    then
        signal sqlstate '45000'
        set message_text = 'cannot delete the last admin';
    end if;
end //

delimiter ;

delete from users where id = 1;
delete from users where id = 2;


delimiter //
create procedure get_employees()
begin
	select * from employees;
end //
delimiter ;

call get_employees();

drop procedure get_employees;

drop trigger update_stock;