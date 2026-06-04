use companydb;
create table eventss(id int primary key auto_increment,event_name varchar(20),event_date date);
insert into eventss(event_name,event_date)
values ('team meeting','2026-06-04'),
('conference','2026-06-06'),
('client meeting','2026-06-14'),
('muharram celebration','2026-06-26'),
('company meeting','2026-07-01');
select * from eventss;
select now();
select event_date , date_format(event_date,'%d-%m-%y') as event_date_format from eventss;
select year(event_date) as event_year ,month(event_date) as event_month from eventss;
select concat(event_name,'-',event_date) from eventss;