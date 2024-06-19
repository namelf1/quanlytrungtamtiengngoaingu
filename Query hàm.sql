use QLTTTA1 

--1. Viết 1 hàm trả về dtb của 1 học viên nào đó
Create function diemtrungbinh (@mahv char(10))
returns real
as
begin
declare @dtb real;
select @dtb= avg(DiemCD)
From THI, hocvien, capdokh
where thi.mahv = hocvien.mahv and thi.macd=capdokh.macd and thi.mahv = @mahv
return @dtb
end
select dbo.diemtrungbinh ('HV04')

--2.Viết một hàm trả về những học viên đạt loại giỏi của cấp độ bất kì (dtb>8)
create function hv_gioi (@macd char(10))
returns table
as
return (select tthocvien.mahv, tenhv, tthocvien.macd, tencd, avg(diemcd) as dtb
from tthocvien,thi
where @macd = tthocvien.macd and tthocvien.mahv = thi.mahv and
tthocvien.macd = thi.macd
group by tthocvien.mahv, tenhv, tthocvien.macd, tencd
having avg(diemcd) >= 8)
select * from hv_gioi ('level 2')

--3.Viết hàm trả về danh sách các cấp độ và số lượng tài liệu của cấp độ đó, đưa ra danh sach các cấp độ có số lượng tài liệu ít nhất
create function soluongTL ()
returns @bang table (macd char(10), sotl int)
as
begin
insert into @bang
select tailieu.macd, count (matl)
from tailieu
group by tailieu.macd
return
end
select macd, sotl
from soluongTL()
where sotl = (select min(sotl) from soluongTL())

--4.Viết f_hocphi cua hv nào đó với f_hocphi bằng tổng số tổng tiền ứng với mỗi cấp độ mà hv đó đăng kí */
Create function f_hocphi (@mahv char(10))
returns real
as
begin
declare @hocphi real
select @hocphi = sum(tongtien)
from HOCPHI, TTHocVien
where mahv = @mahv and HOCPHI.MaCD=TTHocVien.macd
return @hocphi
end
select dbo.f_hocphi ('HV03')