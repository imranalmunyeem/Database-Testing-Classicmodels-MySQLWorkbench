delimiter //
CREATE PROCEDURE SelectAllCustomersByCity(IN mycity VARCHAR(50))
BEGIN
	SELECT *FROM customers WHERE city=mycity;
END //
delimiter ;
call SelectAllCustomersByCity('Singapore');