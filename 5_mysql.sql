drop function always5;

DELIMITER $$
create function always5()
returns int
deterministic

begin
    declare out5 int;
    set out5=0;

    set out5 = (select 1 + 2 + 2 + 1 - 1);

return out5;

END$$
DELIMITER ;


