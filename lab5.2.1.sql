create proc sp_TimNVtheoMA
	@MaNV nvarchar(15)
as 
begin
	select *from NHANVIEN where MANV = @MaNV;
end;
/* T�m M� NV, vd nv c� m� l� 006 */
exec sp_TimNVtheoMA '006'