create proc sp_TimNVTheoTP
	@TrgPHG varchar(25)
as
begin
	select b.*from PHONGBAN a inner join NHANVIEN b on a.MAPHG = b.PHG
		where a.TRPHG = @TrgPHG and
		not exists (select *from THANNHAN where MANV = b.MANV )
end;
exec   [dbo].[sp_TimNVTheoTP] '005'