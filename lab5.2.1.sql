create proc sp_TimNVtheoMA
	@MaNV nvarchar(15)
as 
begin
	select *from NHANVIEN where MANV = @MaNV;
end;
/* Tìm Mã NV, vd nv có mã là 006 */
exec sp_TimNVtheoMA '006'