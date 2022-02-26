delimiter //
CREATE PROCEDURE EmployeesOrderByOfficeCode()
BEGIN
	SELECT *from employees order by officeCode asc;  -- it will return employees list orderly by their office code
END //
delimiter ;
call EmployeesOrderByOfficeCode;