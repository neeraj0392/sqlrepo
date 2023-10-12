use sampledb Create table Customers(
    CustomerId int,
    Name varchar(50),
    City varchar(50),
    Primary key(CustomerId)
)
select *
from customers
insert into customers
values(1, "Aman", "Mumbai"),
    (2, "Hari", "Pune") create table Orders(
        OrderId int,
        OrderNumber int,
        CustomerId int,
        Primary key (OrderId),
        Foreign key (CustomerId) references Customers(CustomerId) on delete cascade
    )
insert into orders
values(1, 211212, 1),
    (2, 2243261, 1),
(3, 1242351, 2)
insert into orders
values(4, 125912, 5) -- drop table orders
    -- drop table customers
select *
from customers
select *
from orders
delete from customers
where customerid = 1 -- delete from orders where customerid=1