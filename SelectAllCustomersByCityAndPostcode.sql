delimiter //
CREATE PROCEDURE SelectAllCustomersByCityAndPin(IN mycity varchar(50), IN pcode varchar(15))
BEGIN
	SELECT *FROM customers where city=mycity and postalCode=pcode;
END //
delimiter ;
call SelectAllCustomersByCityAndPin('Singapore','038988');