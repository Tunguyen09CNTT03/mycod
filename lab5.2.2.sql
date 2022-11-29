create proc sp_TongNVthamgiaDA
	@MaDA int
as
begin
	select count (ma_nvien) as 'Số lượng' from PHANCONG where MADA = @MaDA
end;
/* Xem tổng nv tham gia Dề Án 1*/
exec [dbo].[sp_TongNVthamgiaDA] 1;