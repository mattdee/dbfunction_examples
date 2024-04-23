/* source function in oracle */
create or replace function soe.always5
	return number
	IS xYx number;

	begin 

	select 3+3-1 into xYx from dual;

	insert into logme(data) values (xYx);



	return(xYx);
end always5;
/


select soe.always5 from dual;