create proc sp_KtrNVthuocPhong
	@MaNV nvarchar (9), @MaPB int
as
begin
	declare @Dem int;
	select @Dem = count (manv)  from NHANVIEN where MANV = MaNV and PHG = @MaPB;
	return @Dem;
end;
	declare @result int;
	exec @result = [dbo].[sp_KtrNVthuocPhong] '005',5;
	select @result;