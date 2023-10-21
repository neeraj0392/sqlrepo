create table factories(
id int auto_increment primary key,
name varchar(100) not null,
NoOfEmployees int not null
)

create table totalFactoryEmployee(
totalEmployeeNo int
)
delimiter $$
create trigger before_factories_insert
before insert
on factories for each row
begin
    declare rowcount int;
    select count(*) into rowcount from totalFactoryEmployee;
    
    if rowcount>0 then
    update totalFactoryEmployee
    set totalEmployeeNo= totalEmployeeNo+ new.NoOfEmployees;
    else
     insert into totalFactoryEmployee values(new.NoOfEmployees);
    end if;
end $$
delimiter ;

select * from factories
select * from totalFactoryEmployee
insert into factories(name,NoofEmployees) values ("First Factor",100);
insert into factories(name,NoofEmployees) values ("second Factor",300);

drop table users
CREATE TABLE users (
    id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    birthDate DATE,
    PRIMARY KEY (id)
);

CREATE TABLE reminders (
    id INT AUTO_INCREMENT primary key,
    userid INT,
    message VARCHAR(255) NOT NULL
);


DELIMITER $$
CREATE TRIGGER after_users_insert
AFTER INSERT
ON users FOR EACH ROW
BEGIN
    IF NEW.birthDate IS NULL THEN
        INSERT INTO reminders(userid, message)
        VALUES(new.id,CONCAT('Hi ', NEW.name, ', please update your date of birth.'));
    END IF;
END$$
DELIMITER ;

select * from users
select * from reminders
insert into users(name,email,birthdate) values("Tejas","Tejas@gmail.com",Curdate())
insert into users(name,email) values("Ankush","Ankush@gmail.com")


create table sales (
id int auto_increment,
product varchar(200) not null,
quantity int not null default 0,
check(quantity>= 0),
primary key(id)
)

insert into sales(product,quantity) values("Iphone",12),("samsung",100)
select * from sales

delimiter $$
create trigger before_sales_update
Before update
on Sales for each row
begin
	Declare errorMessage varchar(300);
    set errorMessage=concat('The new quantity', New.quantity,
    'cannot be 3 times greater than the current quantity ',
    OLD.quantity
    );
    if new.quantity>old.quantity*3 then
      signal sqlstate '45000'
         set MESSAGE_TEXT=errorMessage;
    End if;     
end $$
delimiter ;

select * from sales
update sales 
set quantity=100
where product ="Iphone"



