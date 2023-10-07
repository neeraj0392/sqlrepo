-- create database sampleDB
-- use sampledb
show tables -- create table customers (
-- Id int,
-- Name varchar(50),
-- Age tinyint,
-- City varchar(50)
-- )
select *
from customers
insert into customers(id, name, age, city)
values(1, "Ravindra", 21, "Delhi"),
    (2, "Deepika", 22, "Ujjain"),
    (3, "Puja", 21, "Mumbai"),
    (4, "Devesh", 23, "Pune") -- insert into customers values("asda","asd","asdasd","asdsa")
    -- where cluase
    -- select name,age from customers where name="Devesh" or name ="Deepika"
    -- update data. Make sure you always have where condition
    -- update customers	
    -- set age=83 where name="Devesh"
    -- delete
delete from customers
where id = 4 -- drop table customers
    -- truncate table customers -- remove all data from table