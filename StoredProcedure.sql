use agile
select *
from employees -- DELIMITER &&
    -- create procedure get_employee(in empid INT)
    -- begin
    --  select * from employees where employeeId=empid;
    -- end &&
    -- DELIMITER ;
    call get_employee(1) DELIMITER && create procedure get_employee_birthdate(in empid INT, out birth date) begin
select birthdate into birth
from employees
where employeeId = empid;
end && DELIMITER;
-- drop procedure get_employee_birthdate
call get_employee_birthdate(1, @birthdate);
select @birthdate;