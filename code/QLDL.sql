create database QLDL
use QLDL
GO

	
CREATE SCHEMA hr;

create table hr.KhachHang
(
	MaKH int IDENTITY(1,1),
	Hoten nvarchar(50),
	DienThoai char(10),
	GioiTinh nvarchar(3),
	DiaChi nvarchar(100),
	Email varchar(80),
	Matkhau char(20),
	constraint pk_KhachHang primary key(MaKH)
)
INSERT INTO hr.KhachHang(Hoten,DienThoai, GioiTinh ,DiaChi,Email, Matkhau) VALUES ('Admin','0123456789','Nam','Go Vap','admin','12334')

create table DanhMuc
(
	MaDM char(6),
	TenDM nvarchar(50)
	constraint pk_DanhMuc primary key(MaDM)
)

create table SanPham--(TenSP,Gia,NhaSanXuat,MoTa,MaDM,Hinh)
(
	MaSP char(6),
	TenSP nvarchar(50),
	Gia int,
	NhaSanXuat nvarchar(100),
	MoTa nvarchar(500),
	MaDM char(6),
	Hinh nvarchar(200),
	constraint pk_SanPham primary key(MaSP),
	CONSTRAINT fk_SP_DanhMuc FOREIGN KEY (MaDM) REFERENCES DanhMuc (MaDM)
)

CREATE FUNCTION AUTO_MASP()
RETURNS VARCHAR(9)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaSP) FROM SanPham) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaSP, 2)) FROM SanPham
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'SP00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'SP0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END

CREATE TABLE LIENHE
(
	MaKH int,
	Hoten nvarchar(80),
	Email varchar(80),
	Thongtin nvarchar(500),
	CONSTRAINT fk_lienhe FOREIGN KEY (MaKH) REFERENCES hr.KhachHang (MaKH)
)

ALTER TABLE SanPham ADD CONSTRAINT df_MASP DEFAULT DBO.AUTO_MASP() FOR MASP;

insert into SanPham values ('sp01',N'Ghế sắt',100,'sda','chat lieu bang sat, nhe va gon, son trong ri','dm1','~/Hinhanh/HinhSP/1.png')
insert into SanPham values ('sp02',N'Bàn gỗ',400,'sda','chat lieu bang go thong, nhe va gon','dm2','~/Hinhanh/HinhSP/2.png')
insert into SanPham values ('sp03',N'Bàn làm việc',600,'sda','chat lieu bang sat va go, nhe va gon, tiep kiem khong gian','dm1','~/Hinhanh/HinhSP/3.png')
insert into SanPham values ('sp04',N'Ghế sofa',700,'sda','chat lieu bang go va vai, ben va dep, de ve sinh','dm1','~/Hinhanh/HinhSP/4.png')
insert into SanPham values ('sp05',N'Ghế sắt',600,'sda','chat lieu bang sat, nhe va gon, son trong ri','dm1','~/Hinhanh/HinhSP/5.png')
insert into SanPham values ('sp06',N'Ghế sắt',300,'sda','chat lieu bang sat, nhe va gon, son trong ri','dm2','~/Hinhanh/HinhSP/6.png')
insert into SanPham values ('sp07',N'Ghế sắt',200,'sda','chat lieu bang sat, nhe va gon, son trong ri','dm1','~/Hinhanh/HinhSP/7.png')
insert into SanPham values ('sp08',N'Ghế gỗ',200,'sda','chat lieu bang sat, nhe va gon, son trong ri','dm1','~/Hinhanh/HinhSP/1.png')
insert into SanPham values ('sp09',N'Bàn Khách',400,'sda','chat lieu bang sat, nhe va gon, son trong ri','dm2','~/Hinhanh/HinhSP/2.png')

delete from Tour
delete from DanhMuc

insert into DanhMuc values('dm1',N'Nội Thất Gia Đình')
insert into DanhMuc values('dm2',N'Nội Thất Văn Phòng')
insert into DanhMuc values('dm3',N'Trang Trí Nhà')
insert into DanhMuc values('dm4',N'Trang Trí Shop')

select * from hr.KhachHang
Select MaDM, TenDM from DanhMuc
select * from SanPham
select * from SanPham where TenSP like N'%G%'

delete from SanPham where MaSP = 'SP001'