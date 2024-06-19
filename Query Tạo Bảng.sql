Create database QLTTTA1
Use QLTTTA1

--TAO BANG KHOAHOC
Create table KHOAHOC(
MaKH nvarchar (15) not null primary key,
TenKH Nvarchar (40),
MotaKH Nvarchar (100));

--TAO BANG HOCVIEN
Create table HOCVIEN(
MaHV nvarchar(15) not null primary key,
TenHV Nvarchar(40),
Ngaysinh date,
Gioitinh Nvarchar(10),
SDTHocVien varchar(20),
MaKH nvarchar(15),
MaLop nvarchar(15),
foreign key (MaKH) references KHOAHOC(MaKH),
foreign key (MaLop) references LOP(MaLop));

--TAO BANG LOP
Create table LOP(
MaLop nvarchar (15) not null primary key,
TgianMo date,
TgianKetthuc date,
HVDK float,
MaNV nvarchar(15),
foreign key (MaNV) references NHANVIEN(MaNV));

--TAO BANG NHANVIEN
Create table NHANVIEN(
MaNV nvarchar(15) not null primary key,
TenNV Nvarchar(40),
SobuoiQL float,
NVQL nvarchar(15));

--TAO BANG HOCPHI
Create table HOCPHI(
MaCD nvarchar(15),
Tongtien float,
foreign key (MaCD) references CAPDOKH(MaCD));

--TAO BANG CAPDOKH
Create table CAPDOKH(
MaCD nvarchar(15) not null primary key,
TenCD Nvarchar(40),
MaLop nvarchar(15),
MaKH nvarchar(15),
foreign key (MaLop) references LOP(MaLop),
foreign key (MaKH) references KHOAHOC(MaKH));

--TAO BANG KHENTHUONG
Create table KHENTHUONG(
MaKT nvarchar(15) not null primary key,
MucdoKT float,
MaGV nvarchar(15),
foreign key (MaGV) references GIANGVIEN(MaGV));

--TAO BANG GIANGVIEN
Create table GIANGVIEN(
MaGV nvarchar(15) not null primary key,
TenGV Nvarchar(40),
SdtGV varchar(40),
SobuoiGD float,
MaCD nvarchar(15),
foreign key (MaCD) references CAPDOKH(MaCD));

--TAO BANG TAILIEU
Create table TAILIEU(
MaTL nvarchar(15) not null primary key,
TenTL Nvarchar(40),
MaCD nvarchar(15),
foreign key (MaCD) references CAPDOKH(MaCD));

--TAO BANG GIANGDAY
Create table GIANGDAY(
MaGV nvarchar(15) not null,
MaLop nvarchar(15) not null,
NgayGD date,
primary key (MaGV, MaLop),
foreign key (MaGV) references GIANGVIEN(MaGV),
foreign key (MaLop) references LOP(MaLop));

--TAO BANG THI
Create table THI(
MaHV nvarchar(15),
MaCD nvarchar(15),
DiemCD float,
foreign key (MaHV) references HOCVIEN(MaHV),
foreign key (MaCD) references CAPDOKH(MaCD));

