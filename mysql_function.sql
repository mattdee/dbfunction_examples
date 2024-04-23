/* MySQL simple function example */
drop function simple_maths;

DELIMITER $$
create function simple_maths(in_number1  int, in_number2  int)
	returns int
	DETERMINISTIC

	begin
	declare out_number int;
	set out_number=0;

		set out_number = in_number1 + in_number2 ;

		return out_number;

END$$
DELIMITER ;



select simple_maths(9,1);


