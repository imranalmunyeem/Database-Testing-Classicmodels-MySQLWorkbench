delimiter //
CREATE PROCEDURE SelectAllEmployees()
BEGIN
	SELECT *from employees;  -- it will return employees list
END //
delimiter ;
call SelectAllEmployees;