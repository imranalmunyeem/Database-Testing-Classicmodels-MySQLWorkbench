delimiter //
CREATE PROCEDURE SelectAllCustomers()
BEGIN
	SELECT *FROM customers;
END //
delimiter ;
call SelectAllCustomers;