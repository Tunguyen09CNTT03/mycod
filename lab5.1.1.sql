/* đây là create proc sp_hello */

create proc sp_hello
	@Ten nvarchar (25)
as
begin
print 'Hello' + @Ten;
end;
/* Đây là khi muốn thay đổi sp_hello */


/*
alter proc sp_hello
	@Ten nvarchar (25)
as
begin
print 'Hello' + @Ten;
end; 

*/


/* chạy dòng dưới, đây là ví dụ */
exec  sp_hello N' Đạt ';
