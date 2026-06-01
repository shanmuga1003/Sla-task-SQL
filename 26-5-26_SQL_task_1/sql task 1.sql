Create database schoolDB;
use schoolDB;
create table students(id int primary key, name varchar(20) not null, age int, grade char(1));
insert into students(id,name,age,grade) values (1,'shanmuga',23,'A'),(2,'venkat',22,'A'),(3,'sadham',23,'S'),(4,'sathya',23,'S'),(5,'sherif',23,'B');
select * from students;
create database schoolDB2;
drop database schoolDB2;