/* Create oracle function for conversion */
create or replace function simple_maths(in_number1 in number, in_number2 in number)
	return NUMBER
	IS total_number number;

	begin
	select in_number1 + in_number2 into total_number from dual;

	return(total_number);

end simple_maths;
/

select simple_maths(9,1) from dual;