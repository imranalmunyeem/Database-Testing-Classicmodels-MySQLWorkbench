-- Display all the unique job title in the descending order
delimiter //
CREATE PROCEDURE UniqueJobTitleByDsec()
BEGIN
	SELECT distinct jobTitle from employees order by jobTitle desc;  -- it will return employees list orderly by their office code
END //
delimiter ;
call UniqueJobTitleByDsec;