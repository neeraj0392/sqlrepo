-- create database transactions
use transactions

-- create table employees(
-- empid int primary key,
-- name varchar(40),
-- age  int ,
-- city varchar(50),
-- income int
-- )

insert into employees values(1,"Deepika",23,"Bangalore",50000)

select* from employees

-- create table orders(
-- orderid int not null primary key,
-- productName varchar(100),
-- orderNumber int,
-- orderDate datetime
-- )

-- commit example
start transaction;
insert into orders values(1,"Laptop",1233,'2023-06-13');
select * from orders
commit;

-- rollback example
start transaction;
delete from employees;
select * from employees;
rollback;

select * from orders;
-- save point 
start transaction;
insert into orders values(2, 'Printer', 5654, '2020-01-10');
savepoint my_savepoint;
select * from orders;
INSERT INTO Orders VALUES (3, 'Ink', 5894, '2020-03-10'); 
select * from orders
rollback to savepoint my_savepoint;
select* from orders
-- release savepoint my_savepoint
commit;
