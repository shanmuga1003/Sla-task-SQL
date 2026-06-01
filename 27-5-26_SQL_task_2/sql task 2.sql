create database companyDB;

use companyDB;

create table employees (id int primary key,name varchar(20) not null,salary int default 30000, email varchar(30));

desc employees;

alter table employees modify column email varchar(30) unique;

insert into employees (id,name,salary,email) values (1,'shanmuga',40000,'shanmuga@gmail.com');
insert into employees (id,name,salary,email) values (2,'venkat',35000,'venkat@gmail.com');
insert into employees (id,name,salary,email) values (3,'sadham',0,'sadham@gmail.com');
insert into employees (id,name,email) values (4,'sherif','sherif@gmail.com'); -- accept default value
insert into employees (id,name,salary,email) values (5,'sathya',40000,'sherif@gmail.com'); -- error because doesn't accept duplicate value
insert into employees (id,name,salary,email) values (5,'sathya',40000,'sathya@gmail.com');

select * from employees;

drop table employees;

create table employees (id int primary key,name varchar(20) not null,salary int default 30000 check(salary>0), email varchar(30) unique);

select * from employees;

insert into employees (id,name,salary,email) values (1,'shanmuga',-40000,'shanmuga@gmail.com'); -- error because of check constraint