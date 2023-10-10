select distinct city from customers
select * from customers order by contactName desc
select * from customers order by City,contactName asc
select * from customers order by city limit 10
select * from customers limit 10 offset 20
select count(price) from products
select sum(price) from products
select sum(price) from products where categoryId=1
select avg(price) from products where categoryId=1
select max(price) from products
select categoryid,sum(price) from products group by categoryId
select count(customerId),Country from customers group by country
select count(*), customerid from orders group by customerid
select * from orders where customerid=4
select * from customers where contactname like '%ann%'
select * from customers where country like '_razil'
select * from customers where Contactname like '[A]%'
use agile
select * from customers where customerid in (1,2,3,78)
select * from customers where customerid between 12 and 16

