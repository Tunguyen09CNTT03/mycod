create proc sp_Gcd
	@a int ,@b int
as
begin
	declare @temp int;
	if @a > @b
		begin
			select @temp= @a , @a = @b , @b = @temp; 
		end;
		while @b % @a !=0
		begin
			select @temp = @a ,@a = @b % @a ,@b = @temp;
		end;
		print N'Ước số chung lớn nhất ' + cast (@a as varchar )
end;
/* Chạy bên dưới để xem ước số chung lớn nhất */
exec sp_Gcd 25, 5