
CREATE OR REPLACE FUNCTION simple_maths(
     IN in_number1 DOUBLE PRECISION, 
     IN in_number2 DOUBLE PRECISION)
RETURNS DOUBLE PRECISION
AS
$BODY$
DECLARE
    total_number DOUBLE PRECISION;
BEGIN
    SELECT
        in_number1 + in_number2
        INTO STRICT total_number;
    RETURN (total_number);
END;
$BODY$
LANGUAGE  plpgsql;



select simple_maths(9,1);