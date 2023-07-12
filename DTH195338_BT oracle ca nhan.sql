create table KhachHang(
  MaKH Nvarchar2(10) PRIMARY KEY,
  TenKH Nvarchar2(40),
  DiaChiKH Nvarchar2(30),
  DonViKH Nvarchar2(30)
);


create table Kho(
  MaKho Nvarchar2(5) check(regexp_like (MaKho, 'KH\d{3}')) PRIMARY KEY,
  TenKho Nvarchar2(40),
  DiaChiKho Nvarchar2(40)
);
create table HoaDon(
  SoHD Nvarchar2(5) check(regexp_like (SoHD, '\d{3}')) PRIMARY KEY,
  NgayHD Date,
  LoaiHD Nvarchar2(10),
  MaKH Nvarchar2(10) constraint MaKH_FK references KhachHang(MaKH),
  MaKho Nvarchar2(5)constraint MaKho_FK references Kho(MaKho),
  TriGia Float check(TriGia > 0),
  Thue Float,
  TriGiaTang Float,
  DienGiaiHD Nvarchar2(50)
);
--Bang KhachHang
insert into KhachHang values ('CTA00001','Nguyen Dong De','Thot Not - Can Tho','');
insert into KhachHang values ('CTA00002','Tran Thi Dieu','TP. Can Tho','');
insert into KhachHang values ('CTA00003','Huynh Anh Dung','Thanh Tri - Soc Trang','');
insert into KhachHang values ('CTA00004','Mac Hong Diem','Cau Ngang - Tra Vinh','');
insert into KhachHang values ('CTA00005','Nguyen Thanh','Binh Minh - Vinh Long','');

insert into KhachHang values ('CTB00006','La Hong Ngan','Chau Phu - An Giang','');
insert into KhachHang values ('CTB00007','Huynh Van Dam','Tan Chau - An Giang','');
insert into KhachHang values ('CTB00008','Tran Van Doan','Tam Binh - Vinh Long','');
insert into KhachHang values ('CTB00009','Bui Truc Linh','Thoai Son - An Giang','');
insert into KhachHang values ('CTB00010','Pham Tan Loi','Mo Cay - Ben Tre','');

--Bang Kho
insert into Kho values ('KH001','Kho hang 01','So 04 - Hung Vuong - An Giang');
insert into Kho values ('KH002','Kho hang 02','So 25 - Nguyen Van Cu - An Giang');
insert into Kho values ('KH003','Kho hang 03','So 120 - Tran Hung Dao - An Giang');
insert into Kho values ('KH004','Kho hang 04','So 45 - Ly Thai To - An Giang');
insert into Kho values ('KH005','Kho hang 05','So 85 - Dinh Tien Hoang - An Giang');
insert into Kho values ('KH006','Kho hang 06','So 95 - Bui Thi Xuan - An Giang');

--Bang HoaDon
insert into HoaDon values ('001',to_date('01/03/2013','dd/mm/yyyy'),'Nhap','CTA00001','KH004',20000,0.05,0,'');
insert into HoaDon values ('002',to_date('01/02/2013','dd/mm/yyyy'),'Xuat','CTA00002','KH001',30000,0.05,0,'');
insert into HoaDon values ('003',to_date('01/04/2013','dd/mm/yyyy'),'Nhap','CTA00003','KH002',15000,0.05,0,'');
insert into HoaDon values ('004',to_date('20/01/2013','dd/mm/yyyy'),'Nhap','CTA00004','KH005',16000,0.1,0,'');
insert into HoaDon values ('005',to_date('13/03/2013','dd/mm/yyyy'),'Xuat','CTB00006','KH002',34000,0.1,0,'');

insert into HoaDon values ('006',to_date('24/01/2013','dd/mm/yyyy'),'Xuat','CTB00007','KH001',32000,0.05,0,'');
insert into HoaDon values ('007',to_date('04/03/2013','dd/mm/yyyy'),'Nhap','CTB00008','KH002',24000,0.1,0,'');
insert into HoaDon values ('008',to_date('04/4/2013','dd/mm/yyyy'),'Xuat','CTB00009','KH003',35000,0.1,0,'');
insert into HoaDon values ('009',to_date('15/03/2013','dd/mm/yyyy'),'Nhap','CTA00001','KH004',39000,0.1,0,'');
insert into HoaDon values ('010',to_date('26/03/2013','dd/mm/yyyy'),'Nhap','CTA00002','KH001',37000,0.05,0,'');

insert into HoaDon values ('011',to_date('11/03/2013','dd/mm/yyyy'),'Xuat','CTA00003','KH002',23000,0.05,0,'');
insert into HoaDon values ('012',to_date('4/01/2013','dd/mm/yyyy'),'Xuat','CTB00006','KH003',36000,0.1,0,'');
insert into HoaDon values ('013',to_date('30/01/2013','dd/mm/yyyy'),'Nhap','CTB00007','KH002',78000,0.1,0,'');
insert into HoaDon values ('014',to_date('16/03/2013','dd/mm/yyyy'),'Nhap','CTB00008','KH001',25000,0.1,0,'');
insert into HoaDon values ('015',to_date('15/03/2013','dd/mm/yyyy'),'Xuat','CTB00006','KH005',56000,0.05,0,'');

commit;

alter session set NLS_DATE_FORMAT='dd/mm/yyyy';




--3c
update DTH195338_QLKHO.HOADON set TriGiaTang=TriGia*0.1 where loaihd like'Xuat' and makh like'CTA%';
commit;
select * from DTH195338_QLKHO.HOADON;

