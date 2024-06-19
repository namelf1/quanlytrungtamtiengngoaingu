Use QLTTTA1

--1.Thủ tục cho biết danh sách học viên,tên học viên thi lại 1 cấp độ nào đó. Điểm <=5 (tham truyền mã cấp độ)
Create proc HV_ThiLai
@macd char(10)
as
begin
if (exists (select * from CAPDOKH where macd = @macd))
select TTHocVien.MaHV, TenHV, DiemCD
from TTHocVien,THI
where TTHocVien.MaCD = THI.MaCD and TTHocVien.MaHV =
Thi.MaHV and thi.MaCD = @macd and Thi.DiemCD<=5
else print N'Không có cấp độ này'
end
exec HV_ThiLai 'Level 4'
exec HV_ThiLai 'Level 15'

--2. Đưa ra danh sách giảng viên có mức độ khen thưởng từ 1,5-2
create proc KT_GV
as begin
select giangvien.magv,tengv,mucdokt
from giangvien,KHENTHUONG
where giangvien.magv=KHENTHUONG.magv and MucdoKT >=1.5 and
mucdokt <=2
end
exec KT_GV

--3.Thủ tục đưa ra danh sách học viên của 1 lớp nào đó
create proc DS_HV
@malop char(10)
as
begin
if(exists (Select * from LOP where malop=@malop))
select mahv, tenhv, gioitinh, lop.malop
from HOCVIEN, LOP
where lop.malop=@malop and hocvien.MaLop = lop.MaLop
else
print N'Lớp đó không tồn tại trong CSDL'
end
exec DS_HV 'L01'

--4.Viết một thủ tục đưa ra danh sách nhân viên với các thông tin MaNV, TenNV, SobuoiQL, MaLop.Danh sách đưa ra dưới dạng con trỏ OUTPUT của thủ tục
Create procedure TTNHANVIEN
@dsnv CURSOR VARYING OUTPUT
as
begin
set @dsnv = CURSOR
for
select NHANVIEN.MaNV, TenNV, SobuoiQL, LOP.MaLop
from NHANVIEN, LOP
where NHANVIEN.MaNV = LOP.MaNV
open @dsnv
end
declare @mycursor CURSOR
exec TTNHANVIEN @dsnv = @mycursor output
fetch next from @mycursor
while (@@FETCH_STATUS=0)
fetch next from @mycursor
close @mycursor
deallocate @mycursor

