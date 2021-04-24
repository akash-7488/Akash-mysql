create database bus;
use bus;

create table bus_details(B_number int, B_numberOfSeats int, B_sleeper varchar(15),B_fuel varchar(15));

desc bus_details;
alter table bus_details add B_price int;
alter table bus_details add B_timing time;

show columns from bus_details;

alter table bus_details modify B_number int primary key;
alter table bus_details modify B_sleeper boolean;

insert into bus_details values(6868, 60, 1, 'petrol',2000000,'08:00:00');
insert into bus_details values(6565, 58, 0, 'diesel',5000000,'09:00:00');
insert into bus_details values(7488, 80, 0, 'petrol',2000000,'10:30:00');
insert into bus_details values(3636, 90, 1, 'diesel',5000000,'11:20:00');
insert into bus_details values(2525, 60, 1, 'petrol',8000000,'01:15:00');

select distinct B_sleeper from bus_details;

update bus_details set B_fuel = 'diesel' where B_number = 2525;
update bus_details set B_fuel = 'petrol' where B_number = 3636;

select max(B_price) as max_price from bus_details;
select min(B_price) as min_price from bus_details;

select * from bus_details where B_price between 5000000 and 8000000 order by B_price desc;

select * from bus_details where B_fuel in ('petrol');
select * from bus_details where B_price in (2000000);

select * from bus_details where B_fuel like '%l';
select * from bus_details where B_number like '%5';
select * from bus_details where B_number like '2%';
select * from bus_details where B_number like '__3%6';

delete from bus_detalis where B_number=3636;

truncate bus_details;

drop table bus_details;

drop database bus;
