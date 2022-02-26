delimiter //
CREATE PROCEDURE SelectDistinctCustomerName()
BEGIN
	SELECT distinct customerName from customers;  -- it will return unique customer name if available
END //
delimiter ;
call SelectDistinctCustomerName;