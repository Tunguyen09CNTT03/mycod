create proc sp_ThongKeDA
	@MaDa int, @DDiem_DA nvarchar(25)
as
begin
	select count (b.ma_nvien) as 'Số lượng'
		from DEAN a inner join  PHANCONG b on a.MADA = b.MADA
		where a.MADA = @MaDa and a.DDIEM_DA = @DDiem_DA;
end;
/* Xem TKDA */
exec  [dbo].[sp_ThongKeDA] 1, N'Phan Thiết';
/* Xem DDDA qua bảng DEAN để có thể biết các tỉnh có DA */
select *from DEAN;