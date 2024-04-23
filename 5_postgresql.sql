CREATE OR REPLACE FUNCTION always5()
RETURNS INT
AS
$BODY$
DECLARE xYx INT;
BEGIN
    SELECT 1 + 1 + 1 + 1 + 1 + 1 - 3 + 2 INTO STRICT xYx;
    insert into logme(data) values xYx;
    RETURN (xYx);
END;
$BODY$
LANGUAGE  plpgsql;




select always5();