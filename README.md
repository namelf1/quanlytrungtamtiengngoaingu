# Work in process...
# CHƯƠNG TRÌNH QUẢN LÝ HỌC VIÊN CỦA TRUNG TÂM TIẾNG ANH
***
Hiện nay rất nhiều trung tâm Tiếng Anh được mở lên nhằm đào tạo, cải thiện kỹ năng Tiếng Anh của mọi người. Trong một trung tâm Tiếng Anh chúng ta cần giải quyết rất nhiều vấn đề đồng thời để giải quyết những vấn đề đó chúng ta cần rất nhiều bộ phận quản lý như nhân viên, giảng viên, …Đặc biệt vào những mùa hè lượng học viên tăng rất cao, số lượng học viên rất đông. Vì vậy yêu cầu đặt ra là : Phải làm sao để tiết kiệm được thời gian, nguồn nhân lực, bảo mật được hệ thống quản lý, đáp ứng đủ nhu cầu của học viên, giảng viên,…?

## Nghiệp vụ quản lý
1. Quản lý học viên: Nhân viên quản lý trung tâm có quyền tìm kiếm học viên, in danh sách học viên, thêm những học viên mới, sửa thông tin của học viên, xóa những học viên nghỉ học.
2. Quản lý khen thưởng: Mỗi giảng viên sẽ có mức khen thưởng khác nhau, nhân viên quản lý trung tâm có quyền bổ sung thêm những giảng viên được khen thưởng.
3. Quản lý lớp: Nhập mới thông tin lớp, sửa chữa thông tin, xóa bỏ những lớp đã học xong.
4. Quản lý điểm thi: Giảng viên có quyền cập nhật điểm thi của các học viên, tìm kiếm điểm thi theo học viên.
5. Quản lý học phí: Nhập mới các mức học phí tùy theo các cấp độ mà trung tâm có, sửa chữa thông tin.
6. Quản lý cấp độ: Các cấp độ mà trung tâm có dành cho các khóa học sẽ được lưu lại tại hệ thống. Đồng thời hệ thống sẽ quản lý dữ liệu của các cấp độ.
7. Quản lý khóa học: Bổ sung các khóa học thường xuyên. Các khóa học mà trung tâm có sẽ được lưu lại tại hệ thống. Đồng thời hệ thống sẽ quản lý dữ liệu.
8. Quản lý tài liệu: Cập nhật số lượng tài liệu thường xuyên và điều chỉnh nội dung phù hợp với cấp độ.

## Người sử dụng hệ thống
+ Nhân viên: Nhân viên quản lý học viên, quản lý khen thưởng và quản lý lớp. Nhân viên có quyền truy cập vào tất cả các chức năng của hệ thống đối với học viên, khen thưởng và lớp. Cập nhật, sửa đổi, bổ sung khi cần thiết.
+ Giảng viên: Giảng viên có quyền truy cấp các chức năng đối với điểm của học viên. Cập nhật điểm thi, sửa đổi và thống kê điểm của học viên.
+ Học viên: Học viên tương tác với phần mềm qua mã học viên, xem trực tiếp điểm của mình.

## Lên ý tưởng xây dựng các bảng 
1. Bảng KHOAHOC: KHOAHOC(#MaKH, @TenKH, @MotaKH)
2. Bảng HOCVIEN: HOCVIEN(#MaHV, @TenHV, @Ngaysinh, @Gioitinh, @SDTHocVien, @MaKH, @MaLop)
3. Bảng LOP: LOP(#MaLop, @TgianMo, @TgianKetthuc, @HVDK, @MaNV)
4. Bảng NHANVIEN: NHANVIEN(#MaNV,  @TenNV, @SobuoiQL, @NVQL)
5. Bảng HOCPHI: HOCPHI(#MaCD, @Tongtien)
6. Bảng CAPDOKH: CAPDOKH(#MaCD, @TenCD, @MaLop, @MaKH)
7. Bảng KHENTHUONG: KHENTHUONG(#MaKT, @MucdoKT, @MaGV)
8. Bảng GIANGVIEN: GIANGVIEN(#MaGV, @TenGV, @SdtGv, @SobuoiGD, @MaCD)
9. Bảng TAILIEU: TAILIEU(#MaTL, @TenTL, @MaCD)
10. Bảng GIANGDAY: GIANGDAY(#MaGV, @MaLop, @NgayGD)
11. Bảng THI: THI(#MaHV, @MaCD, @DiemCD)

Tạo các bảng như mô tả trong SQL Server:
1. Bảng KHOAHOC:
 ![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/ee699654-6bf1-4cd3-9a03-9c93f52de6c6)
2. Bảng HOCVIEN:
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/3bb6701d-82b7-43a3-bc85-211b3f09c0c9)
3. Bảng LOP:
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/68d20617-67d7-4611-add6-02e8a3f1a940)
4. Bảng NHANVIEN:
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/709e0cfc-fea3-44b1-b1e8-c071155b89a3)
5. Bảng HOCPHI:
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/a3316e95-203e-4164-a097-69e298dc947c)
6. Bảng CAPDOKH:
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/d171c93a-14f5-472c-8af2-ac91e8caef5a)
7. Bảng KHENTHUONG:
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/f1220833-0eab-4d95-8c65-3efa55ef0dc4)
8. Bảng GIANGVIEN:
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/885c5ece-4f4a-44da-8291-4ae2837fda13)
9. Bảng TAILIEU:
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/49d70bc4-b7c5-4ecf-b6f3-8ecd6941c163)
10. Bảng GIANGDAY:
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/b46346db-3eba-46cc-8be3-a20f0f059e0d)
11. Bảng THI:
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/42aa67ee-893c-4b42-a743-5bbb0618f198)

Sơ đồ thực thể
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/649555c8-ac72-4dbc-806d-fc4d5b5b6e11)

Thêm dữ liệu vào bảng
1. Dữ liệu thêm vào bảng NHANVIEN
```SQL
Insert into NHANVIEN
Values ('NV01',N'Đức Anh',5,'NVQL01'),
('NV02',N'Thanh Huyền' ,4,''),
('NV03',N'Diệu Châu',10,''),
('NV04',N'Bảo Trinh',8,'NVQL02'),
('NV05',N'Văn Lâm',6,'NVQL03');
```
2. Dữ liệu thêm vào bảng LOP
```SQL
Insert into LOP
Values ('L01','2020/06/14','2020/07/14',30,'NV01'),
('L02','2020/06/14','2020/07/14',35,'NV01'),
('L03','2020/12/5','2021/1/5',30,'NV02'),
('L04','2021/05/14','2021/06/14',40,'NV03'),
('L05','2021/08/11','2021/09/11',30,'NV04'),
('L06','2021/11/12','2021/12/12',35,'NV01');
```
3. Dữ liệu thêm vào bảng HOCVIEN
```SQL
Insert into HOCVIEN
Values ('HV01',N'Thuý Hằng','2010/10/10',N'Nữ',1234,'K01','L01'),
('HV02',N'Quốc Hiệp','2008/03/07',N'Nam',1235,'K02','L05'),
('HV03',N'Đức Hải ','2009/12/25',N'Nam',4234,'K03','L02'),
('HV04',N'Huy Hoàng' ,'2010/02/25',N'Nam',5634,'K04','L01'),
('HV05',N'Văn Thắng' ,'2007/11/15',N'Nam',1674,'K05','L02'),
('HV06',N'Mỹ Linh','2010/10/04',N'Nữ',1298,'K06','L03'),
('HV07',N'Nguyễn Thuý' ,'2008/12/05',N'Nữ',7334,'K07','L04'),
('HV08',N'Hoàng Dương','2009/02/24',N'Nam',1924,'K08','L05'),
('HV09',N'Nguyễn Cương','2010/11/17',N'Nam',1934,'K09','L04'),
('HV10',N'Xuân Chiến'  ,'2008/12/16',N'Nam',1904,'K10','L04');
```
4. Dữ liệu thêm vào bảng KHOAHOC
```SQL
Insert into KHOAHOC
Values ('K01','Ielts 7.5',N'Cam kết đầu ra'),
('K02','Toeic',N'Đảm bảo chất lượng'),
('K03','Communicate',N'Giao tiêp với người bản xứ'),
('K04','Listening',N'Học phí đi kèm sách vở'),
('K05','Ielts 6.0',N'Cam kết đầu ra'),
('K06','Speaking',''),
('K07','Ielts 8.0',N'Cam kết đầu ra'),
('K08','',N'Đảm bảo chất lượng'),
('K09','Writing',N'Giao tiếp với người bản xư'),
('K10','Ieltes 5.0',N'Học phí đi kèm sách vở');
```
5. Dữ liệu thêm vào bảng CAPDOKH
```SQL
Insert into CAPDOKH
Values ('Level 1','Start','L01','K01'),
('Level 2','Prepare','L01','K01'),('Level 3','Pepare','L02','K02'),
('Level 4','Finish','L02','K02'),('Level 5','Start','L03','K03'),
('Level 6','Prepare','L04','K03'),('Level 7','Start','L05','K04'),
('Level 8','Finish','L06','K04');
```
6. Dữ liệu thêm vào bảng HOCPHI
```SQL
Insert into HOCPHI
Values ('Level 1',4000000),('Level 2',4500000),('Level 3',4750000),
('Level 4',3500000),('Level 5',5000000),('Level 6',3750000),
('Level 7',4800000),('Level 8',3500000);
```
7. Dữ liệu thêm vào bảng GIANGVIEN
```SQL
Insert into GIANGVIEN
Values ('GV01','Jully',2345,20,'Level 1'),
('GV02',N'Văn Phương',2343,20,'Level 2'),
('GV03','Holly',2349,25,'Level 3'),
('GV04','Jone',2245,20,'Level 1'),
('GV05','Thomas',9345,25,'Level 4'),
('GV06',N'Diệp Linh',2347,20,'Level 5'),
('GV07',N'Ngọc Anh',1345,26,'Level 8'),
('GV08','Alice',2445,20,'Level 6');
```
8. Dữ liệu thêm vào bảng KHENTHUONG
```SQL
Insert into KHENTHUONG
Values ('KT01',1.5,'GV02'),('KT02',1.0,'GV04'),('KT03',1.6,'GV01'),
('KT04',2.0,'GV03'),('KT05',1.55,'GV06');
```
9. Dữ liệu thêm vào bảng TAILIEU
```SQL
Insert into TAILIEU
Values ('TL01',N'Tài liệu A1','Level 1'),('TL02',N'Tài liệu A2','Level 1'),
('TL03',N'Tài liệu B1','Level 2'),('TL04',N'Tài liệu B2','Level 2'),
('TL05',N'Tài liệu C','Level 3'),('TL06',N'Tài liệu D1','Level 4'),
('TL07',N'Tài liệu D2','Level 4'),('TL08',N'Tài liệu E','Level 5'),
('TL09',N'Tài liệu F1','Level 6'),('TL10',N'Tài liệu F2','Level 6');
```
10. Dữ liệu thêm vào bảng GIANGDAY
```SQL
Insert into GIANGDAY
Values ('GV01','L01','2020/06/15'),('GV02','L02','2020/08/14'),
('GV03','L03','2021/04/12'),('GV04','L04','2021/12/02'),
('GV05','L05','2021/12/24'),('GV06','L06','2021/11/11');
```
11. Dữ liệu thêm vào bảng THI
```SQL
Insert into THI
Values ('HV01','Level 1',9),('HV01','Level 2',8.5),
('HV02','Level 7',4),
('HV03','Level 3',8.75),('HV03','Level 4',3),
('HV04','Level 1',7.75),('HV04','Level 2',8),
('HV05','Level 3',6),('HV05','Level 4',3.75),
('HV06','Level 7',9.5),('HV06','Level 8',10),
('HV07','Level 5',9),
('HV08','Level 7',8.75),
('HV09','Level 6',8),
('HV10','Level 6',5);
```
## Xây dựng một số lệnh truy vấn
###  1. Thủ tục
1.1 Thủ tục cho biết danh sách học viên,tên học viên thi lại 1 cấp độ nào đó. Điểm <=5
```SQL
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
```
Thực nghiệm:
```SQL
exec HV_ThiLai 'Level 4'
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/fb8d41f0-4a47-418e-8fc5-579ee939b170)

```SQL
exec HV_ThiLai 'Level 15'
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/52d9f070-22a7-4250-a680-8655940161d1)

1.2 Đưa ra danh sách giảng viên có mức độ khen thưởng từ 1,5-2
```SQL
create proc KT_GV
as begin
select giangvien.magv,tengv,mucdokt
from giangvien,KHENTHUONG
where giangvien.magv=KHENTHUONG.magv and MucdoKT >=1.5 and
mucdokt <=2
end
```
Thực nghiệm:
```SQL
exec KT_GV
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/d2a11c8c-a8c8-4cc7-ba60-fdf1283b98a1)

1.3 Thủ tục đưa ra danh sách học viên của 1 lớp nào đó
```SQL
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
```
Thực nghiệm:
```SQL
exec DS_HV 'L01'
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/f0980652-1c48-4375-90dc-519f0cc43df3)

1.4 Viết một thủ tục đưa ra danh sách nhân viên với các thông tin MaNV, TenNV, SobuoiQL, MaLop.Danh sách đưa ra dưới dạng con trỏ OUTPUT của thủ tục
```SQL
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
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/b133f0ae-6a09-49c0-8672-6858abed7916)

### 2. Hàm
2.1 Viết 1 hàm trả về dtb của 1 học viên nào đó
```SQL
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
```
Thực nghiệm:
```SQL
select dbo.diemtrungbinh ('HV04')
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/e4def681-1e8e-4b3c-b662-5e31d9485bf3)

2.2 Viết một hàm trả về những học viên đạt loại giỏi của cấp độ bất kì (dtb>8)
```SQL
create function hv_gioi (@macd char(10))
returns table
as
return (select tthocvien.mahv, tenhv, tthocvien.macd, tencd, avg(diemcd) as dtb
from tthocvien,thi
where @macd = tthocvien.macd and tthocvien.mahv = thi.mahv and
tthocvien.macd = thi.macd
group by tthocvien.mahv, tenhv, tthocvien.macd, tencd
having avg(diemcd) >= 8)
```
Thực nghiệm:
```SQL
select * from hv_gioi ('level 2')
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/cec4fe25-1a21-4d7a-8106-44a0f2d83b2c)

2.3 Viết hàm trả về danh sách các cấp độ và số lượng tài liệu của cấp độ đó, đưa ra danh sach các cấp độ có số lượng tài liệu ít nhất
```SQL
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
```
Thực nghiệm:
```SQL
select macd, sotl
from soluongTL()
where sotl = (select min(sotl) from soluongTL())
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/b1c6ab0e-22c5-4540-9ef1-c557c5b3d08d)

2.4 Viết f_hocphi cua hv nào đó với f_hocphi bằng tổng số tổng tiền ứng với mỗi cấp độ mà hv đó đăng kí */
```SQL
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
```
### 3. Trigger và cursor
3.1 Trigger thêm 1 học viên ở bảng học viên thì cập nhật học viên dự kiến ở bảng lớp(mã lớp)
```SQL
create trigger insert_HV on HocVien For insert as
if(exists(select * from inserted))
begin
update lop
set HVDK =hvdk +1 where malop =(select malop from inserted)
end
```
Thực nghiệm:
```SQL
select * from lop
select * from hocvien
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/a7417cc0-c989-440c-b6cf-46f398facc42)

```SQL
Insert into KHOAHOC
Values ('K13','toeic 3',N'Cam kết đầu ra')
Insert into HOCVIEN
Values ('HV13',N'Hoàng','2011/12/20',N'Nam',2345,'K12','L05')
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/e8295564-3e08-4a54-aa3e-53b9b0fd4d72)

3.2 Trigger để không cho cập nhật mahv
```SQL
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
```
Thực nghiệm:
```
update hocvien
set mahv = 'HV14'
where tenhv like N'Thúy Lan'
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/83c0d74f-aed2-4cd2-b95c-e89b13a656f4)

3.3 Trigger tên cấp độ khoá học không được trùng nhau
```SQL
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
```
Thực nghiệm:
```SQL
UPDATE CAPDOKH SET TENCD = N'Start' WHERE MaCD = 'Level 1'
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/cea24615-e5ce-46fd-831a-3a24852b4402)
```SQL
UPDATE CAPDOKH SET TENCD = N'Begin' WHERE MaCD = 'Level 1'
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/6ac2699c-b1d9-446e-a0ed-a87d1a7b65b6)

3.4 cursor Hiển thị ra hv có điểm tb cao nhất
```SQL
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
```
![image](https://github.com/namelf1/quanlytrungtamtiengngoaingu/assets/124643678/ef4666c4-70f8-47d3-a825-00f0fe2dbac8)
