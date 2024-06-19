use QLTTTA1 

--1.1 Trigger thêm 1 học viên ở bảng học viên thì cập nhật học viên dự kiến ở bảng lớp(mã lớp)
create trigger insert_HV on HocVien For insert as
if(exists(select * from inserted))
begin
update lop
set HVDK =hvdk +1 where malop =(select malop from inserted)
end

select * from lop
select * from hocvien

Insert into KHOAHOC
Values ('K13','toeic 3',N'Cam kết đầu ra')
Insert into HOCVIEN
Values ('HV13',N'Hoàng','2011/12/20',N'Nam',2345,'K12','L05')


--1.2 Trigger để không cho cập nhật mahv
create trigger NO_update on HOCVIEN for update
as
begin
if(update(mahv))
begin
print N'bạn không được phép cập nhật cột mahv'
rollback tran;
end
else
print N'bạn đã cập nhật thành công';
end

update hocvien
set mahv = 'HV14'
where tenhv like N'Thúy Lan'

--1.3 Trigger tên cấp độ khoá học không được trùng nhau
create trigger Update_CapdoKH on CAPDOKH for update
as
if (((select TenCD from inserted) != (select TenCD from deleted))
and (select count(*) from CAPDOKH where TenCD = (select TenCD
from inserted))<=1)
print N'Sửa thành công';
else begin
print N'Sửa không thành công, nhập tên khác';
rollback tran;
end

UPDATE CAPDOKH SET TENCD = N'Start' WHERE MaCD = 'Level 1'
UPDATE CAPDOKH SET TENCD = N'Begin' WHERE MaCD = 'Level 1'


--2.1 cursor Hiển thị ra hv có điểm tb cao nhất
declare max_dtb cursor
dynamic scroll
for
select hocvien.mahv, tenhv, dbo.diemtrungbinh(mahv) as maxdtb
from hocvien group by hocvien.mahv, tenhv
having dbo.diemtrungbinh(mahv) = (SELECT
max(dbo.diemtrungbinh(mahv)) AS maxdtb FROM hocvien)
open max_dtb;
declare @mahv char(5) , @tenhv nvarchar (30) , @avgdiemmax float
FETCH NEXT FROM max_dtb INTO @mahv,@tenhv,@avgdiemmax
PRINT N'Điểm trung bình cao nhất là
'+CONVERT(char(4),@avgdiemmax);
WHILE (@@FETCH_STATUS=0)
BEGIN
PRINT N'Những sinh viên sau có điểm cao nhất: ';
PRINT N'Sinh viên '+@tenhv +N' có điểm tb
'+CONVERT(char(4),@avgdiemmax);
FETCH NEXT FROM max_dtb INTO
@mahv,@tenhv,@avgdiemmax
END
CLOSE max_dtb;
DEALLOCATE max_dtb;

