-- Total numbers of orders that were shipped, cancel, resolved, disputed
delimiter //
CREATE PROCEDURE GetOrderNumbersByStatus(IN custNo int, OUT shipped int, out canceled int, out resolved int, out disputed int, out inprocess int)
BEGIN
	SELECT count(*) into shipped from orders where customerNumber = custNo and status='Shipped';
    SELECT count(*) into canceled from orders where customerNumber = custNo and status='Canceled';
    SELECT count(*) into resolved from orders where customerNumber = custNo and status='Resolved';
    SELECT count(*) into disputed from orders where customerNumber = custNo and status='Disputed';
    SELECT count(*) into inprocess from orders where customerNumber = custNo and status='In Process';

delimiter ;

call GetOrderNumbersByStatus(382, @shipped, @canceled, @resolved, @disputed, @inprocess);
select @shipped, @canceled, @resolved, @disputed, @inprocess;