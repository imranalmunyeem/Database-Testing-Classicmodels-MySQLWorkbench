delimiter //
CREATE PROCEDURE AllOrders()
BEGIN
	SELECT *from orders;  -- it will return order list
END //
delimiter ;
call AllOrders;