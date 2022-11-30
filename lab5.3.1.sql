﻿/* Chạy dòng này để Tạo sp_ThemPhongBanMoi */
create  proc sp_ThemPhongBanMoi
	@TENPHG varchar (15),
	@MAPHG int,
	@TRPHG nvarchar(9),
	@NG_NHANCHUC date
as
begin
	if exists (select *from PHONGBAN where MAPHG = @MAPHG)
	begin
		print N'Mã phòng ban đã tồn tại ';
		return;
	end;
	insert into  [dbo].[PHONGBAN]
			([TENPHG],
			[MAPHG],
			[TRPHG],
			[NG_NHANCHUC])
	values 
	(@TENPHG,@MAPHG,@TRPHG,@NG_NHANCHUC);
end;
/* chạy dòng này Chỉnh sửa khi tạo sai */
alter  proc sp_ThemPhongBanMoi
	@TENPHG varchar (15),
	@MAPHG int,
	@TRPHG nvarchar(9),
	@NG_NHANCHUC date
as
begin
	if exists (select *from PHONGBAN where MAPHG = @MAPHG)
	begin
		print N'Mã phòng ban đã tồn tại ';
		return;
	end;
	insert into  [dbo].[PHONGBAN]
			([TENPHG],
			[MAPHG],
			[TRPHG],
			[NG_NHANCHUC])
	values 
	(@TENPHG,@MAPHG,@TRPHG,@NG_NHANCHUC);
end;
/* Chạy để thêm phòng ban mới */
exec [dbo].[sp_ThemPhongBanMoi] 'CNTT',10,'005','12-12-2020'

