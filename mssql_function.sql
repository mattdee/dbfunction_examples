/* Function example MSSQL */
use matt;
GO

create function simple_maths(@in1 int, @in2 int)
	returns int
	as
	begin
		declare @in_total int
			select @in_total = (@in1 +@in2)
		return(@in_total)
	end
GO


use matt;
GO

SELECT dbo.simple_maths (9,1);
GO


