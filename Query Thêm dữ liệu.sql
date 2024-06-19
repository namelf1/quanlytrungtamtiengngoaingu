Use QLTTTA1

Select * From NHANVIEN
--Them du lieu bang NHANVIEN
Insert into NHANVIEN
Values ('NV01',N'Đức Anh',5,'NVQL01'),
('NV02',N'Thanh Huyền' ,4,''),
('NV03',N'Diệu Châu',10,''),
('NV04',N'Bảo Trinh',8,'NVQL02'),
('NV05',N'Văn Lâm',6,'NVQL03');

Select * From LOP
--Them du lieu bang LOP
Insert into LOP
Values ('L01','2020/06/14','2020/07/14',30,'NV01'),
('L02','2020/06/14','2020/07/14',35,'NV01'),
('L03','2020/12/5','2021/1/5',30,'NV02'),
('L04','2021/05/14','2021/06/14',40,'NV03'),
('L05','2021/08/11','2021/09/11',30,'NV04'),
('L06','2021/11/12','2021/12/12',35,'NV01');

Select * From HOCVIEN
--Them du lieu bang HOCVIEN
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

Select * From KHOAHOC
--Them du lieu bang KHOAHOC
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

Select * From CAPDOKH
--Them du lieu bang CAPDOKH
Insert into CAPDOKH
Values ('Level 1','Start','L01','K01'),
('Level 2','Prepare','L01','K01'),('Level 3','Pepare','L02','K02'),
('Level 4','Finish','L02','K02'),('Level 5','Start','L03','K03'),
('Level 6','Prepare','L04','K03'),('Level 7','Start','L05','K04'),
('Level 8','Finish','L06','K04');

Select * From HOCPHI
--Them du lieu bang HOCPHI
Insert into HOCPHI
Values ('Level 1',4000000),('Level 2',4500000),('Level 3',4750000),
('Level 4',3500000),('Level 5',5000000),('Level 6',3750000),
('Level 7',4800000),('Level 8',3500000);

Select * From GIANGVIEN
--Them du lieu bang GIANGVIEN
Insert into GIANGVIEN
Values ('GV01','Jully',2345,20,'Level 1'),
('GV02',N'Văn Phương',2343,20,'Level 2'),
('GV03','Holly',2349,25,'Level 3'),
('GV04','Jone',2245,20,'Level 1'),
('GV05','Thomas',9345,25,'Level 4'),
('GV06',N'Diệp Linh',2347,20,'Level 5'),
('GV07',N'Ngọc Anh',1345,26,'Level 8'),
('GV08','Alice',2445,20,'Level 6');

Select * From KHENTHUONG
--Them du lieu bang KHENTHUONG
Insert into KHENTHUONG
Values ('KT01',1.5,'GV02'),('KT02',1.0,'GV04'),('KT03',1.6,'GV01'),
('KT04',2.0,'GV03'),('KT05',1.55,'GV06');

Select * From TAILIEU
--Them du lieu bang TAILIEU
Insert into TAILIEU
Values ('TL01',N'Tài liệu A1','Level 1'),('TL02',N'Tài liệu A2','Level 1'),
('TL03',N'Tài liệu B1','Level 2'),('TL04',N'Tài liệu B2','Level 2'),
('TL05',N'Tài liệu C','Level 3'),('TL06',N'Tài liệu D1','Level 4'),
('TL07',N'Tài liệu D2','Level 4'),('TL08',N'Tài liệu E','Level 5'),
('TL09',N'Tài liệu F1','Level 6'),('TL10',N'Tài liệu F2','Level 6');

Select * From GIANGDAY
--Them du lieu bang GIANGDAY
Insert into GIANGDAY
Values ('GV01','L01','2020/06/15'),('GV02','L02','2020/08/14'),
('GV03','L03','2021/04/12'),('GV04','L04','2021/12/02'),
('GV05','L05','2021/12/24'),('GV06','L06','2021/11/11');

Select * From THI
--Them du lieu bang THI
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

