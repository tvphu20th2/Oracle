
CREATE USER DTH195338_BanGD IDENTIFIED BY DTH195338_BanGD
DEFAULT TABLESPACE USERS QUOTA 5M ON USERS;


CREATE USER DTH195338_KhachHang IDENTIFIED BY DTH195338_KhachHang
DEFAULT TABLESPACE USERS QUOTA 5M ON USERS;

CREATE USER DTH195338_QLKHO IDENTIFIED BY DTH195338_QLKHO
DEFAULT TABLESPACE USERS QUOTA 5M ON USERS;
GRANT CREATE SESSION,CREATE TABLE TO DTH195338_QLKHO;

--user Ban GD
CREATE USER DTH195338_BanGD IDENTIFIED BY DTH195338_BanGD
DEFAULT TABLESPACE USERS QUOTA 2M ON USERS;
GRANT CREATE SESSION TO DTH195338_BanGD;

--User Khachhang
CREATE USER DTH195338_KhachHang IDENTIFIED BY DTH195338_KhachHang
DEFAULT TABLESPACE USERS QUOTA 2M ON USERS;
GRANT CREATE SESSION TO DTH195338_KhachHang;
GRANT SELECT ON DTH195338_QLKHO.KHACHHANG TO DTH195338_KhachHang;

--User KeToan
CREATE USER DTH195338_KeToan IDENTIFIED BY UserKeToan
DEFAULT TABLESPACE USERS QUOTA 2M ON USERS;
GRANT CREATE SESSION TO DTH195338_KeToan;
GRANT SELECT,INSERT,UPDATE ON DTH195338_QLKHO.KHACHHANG TO DTH195338_KeToan;
GRANT SELECT,INSERT,UPDATE ON DTH195338_QLKHO.KHO TO DTH195338_KeToan;
GRANT SELECT,INSERT,UPDATE ON DTH195338_QLKHO.HOADON TO DTH195338_KeToan;
--User Quan Tri
CREATE USER DTH195338_QuanTri IDENTIFIED BY DTH195338_QuanTri
DEFAULT TABLESPACE USERS QUOTA 2M ON USERS;
GRANT CREATE SESSION TO DTH195338_QuanTri;


--tao role
CREATE ROLE r_All;
GRANT r_all TO DTH195338_BanGD, DTH195338_QuanTri;

GRANT SELECT,INSERT,UPDATE,DELETE ON DTH195338_QLKHO.KHACHHANG TO r_All;
GRANT SELECT,INSERT,UPDATE,DELETE ON DTH195338_QLKHO.KHO TO r_All;
GRANT SELECT,INSERT,UPDATE,DELETE ON DTH195338_QLKHO.HOADON TO r_All;




--dong1
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

--dong2
update DTH195338_QLKHO.HOADON
SET thue = 0.1 WHERE sohd = '001';

--dong5
COMMIT; rollback;

--dong7
select * from hoadon;

--dong9
select * from hoadon;



--dong3
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


--dong4
update DTH195338_QLKHO.HOADON 
set thue = 0.15 where sohd='001';

--dong6
update DTH195338_QLKHO.HOADON 
set thue = 0.15 where sohd='001';


--dong8
COMMIT; rollback;



