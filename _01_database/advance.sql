create database quanlynhansu;
use quanlynhansu;
CREATE TABLE ViTri (
    IDViTri INT NOT NULL,
    TenViTri VARCHAR(45),
    PRIMARY KEY (IDViTri)
);
insert into vitri(IDViTri,TenViTri) values (1,'Lễ Tân');
insert into vitri(IDViTri,TenViTri) values (2,'Phục Vụ');
insert into vitri(IDViTri,TenViTri) values (3,'Chuyên Viên');
insert into vitri(IDViTri,TenViTri) values (4,'Giám Sát');
insert into vitri(IDViTri,TenViTri) values (5,'Quản Lý');
insert into vitri(IDViTri,TenViTri) values (6,'Giám Đốc');
CREATE TABLE TrinhDo (
    IDTrinhDo INT NOT NULL,
    TrinhDo VARCHAR(45) NULL,
    PRIMARY KEY (IDTrinhDo)
);
insert into trinhdo(IDTrinhDo,TrinhDo) values (01,'Trung Cấp');
insert into trinhdo(IDTrinhDo,TrinhDo) values (02,'Cao Đẳng');
insert into trinhdo(IDTrinhDo,TrinhDo) values (03,'Đại Học');
insert into trinhdo(IDTrinhDo,TrinhDo) values (04,'Sau Đại Học');
CREATE TABLE BoPhan (
    IDBoPhan INT NOT NULL,
    TenBoPhan VARCHAR(45) NULL,
    PRIMARY KEY (IDBoPhan)
);
insert into bophan(IDBoPhan,TenBoPhan) values (001,'Slae-Marketing');
insert into bophan(IDBoPhan,TenBoPhan) values (002,'Hành Chính');
insert into bophan(IDBoPhan,TenBoPhan) values (003,'Phục Vụ');
insert into bophan(IDBoPhan,TenBoPhan) values (004,'Quản Lý');
CREATE TABLE NhanVien (
    IDNhanVien INT NOT NULL,
    HoTen VARCHAR(45) NULL,
    IDViTri INT NULL,
    IDTrinhDo INT NULL,
    IDBoPhan INT NULL,
    NgaySinh DATE NULL,
    SoCMTND VARCHAR(45) NULL,
    Luong VARCHAR(45) NULL,
    SDT VARCHAR(45) NULL,
    Email VARCHAR(45) NULL,
    DiaChi VARCHAR(45) NULL,
    PRIMARY KEY (IDNhanVien),
    FOREIGN KEY (IDViTri)
        REFERENCES vitri (IDViTri),
    FOREIGN KEY (IDTrinhDo)
        REFERENCES trinhdo (IDTrinhDo),
    FOREIGN KEY (IDBoPhan)
        REFERENCES bophan (IDBoPhan)
);
insert into nhanvien(IDNhanVien,HoTen,IDViTri,IDTrinhDo,IDBoPhan,NgaySinh,SoCMTND,Luong,SDT,Email,DiaChi) values (0001,'Nguyễn Văn A',1,01,001,'1998-1-1',1234512,5000000,0123456789,'abc@gmail.com','Đà Nẵng');
insert into nhanvien(IDNhanVien,HoTen,IDViTri,IDTrinhDo,IDBoPhan,NgaySinh,SoCMTND,Luong,SDT,Email,DiaChi) values (0002,'Nguyễn Văn H',2,02,002,'1998-1-1',1234513,6000000,0123456799,'abcd@gmail.com','Đà Nẵng');
insert into nhanvien(IDNhanVien,HoTen,IDViTri,IDTrinhDo,IDBoPhan,NgaySinh,SoCMTND,Luong,SDT,Email,DiaChi) values (0003,'Nguyễn Văn T',3,03,003,'1998-1-1',1234514,7000000,0123456999,'abce@gmail.com','Quảng Trị');
insert into nhanvien(IDNhanVien,HoTen,IDViTri,IDTrinhDo,IDBoPhan,NgaySinh,SoCMTND,Luong,SDT,Email,DiaChi) values (0004,'Nguyễn Văn K',4,04,004,'1998-1-1',1234516,10000000,0123459999,'abcf@gmail.com','Quảng Trị');
CREATE TABLE HopDongChiTiet (
    IDHopDongChiTiet INT NOT NULL,
    IDHopDong INT NULL,
    IDDichVuDiKem INT NULL,
    SoLuong INT NULL,
    PRIMARY KEY (IDHopDongChiTiet),
    FOREIGN KEY (IDDichVuDiKem)
        REFERENCES dichvudikem (IDDichVuDiKem),
    FOREIGN KEY (IDHopDong)
        REFERENCES hopdong (IDHopDong)
);
insert into hopdongchitiet(IDHopDongChiTiet,IDHopDong,IDDichVuDiKem,SoLuong) values (11,20,50,11);
insert into hopdongchitiet(IDHopDongChiTiet,IDHopDong,IDDichVuDiKem,SoLuong) values (12,21,51,20);
insert into hopdongchitiet(IDHopDongChiTiet,IDHopDong,IDDichVuDiKem,SoLuong) values (13,22,52,1);
insert into hopdongchitiet(IDHopDongChiTiet,IDHopDong,IDDichVuDiKem,SoLuong) values (14,23,53,100);
CREATE TABLE DichVuDiKem (
    IDDichVuDiKem INT NOT NULL,
    TenDichVuDiKem VARCHAR(45) NULL,
    Gia INT NULL,
    DonVi VARCHAR(45) NULL,
    TrangThaiKhaDung VARCHAR(45) NULL,
    PRIMARY KEY (IDDichVuDiKem)
);
insert into dichvudikem(IDDichVuDiKem,TenDichVuDiKem,Gia,DonVi,TrangThaiKhaDung) values (50,'Massage',500000,'VND','Chưa Sử Dụng');
insert into dichvudikem(IDDichVuDiKem,TenDichVuDiKem,Gia,DonVi,TrangThaiKhaDung) values (51,'Karaoke',200000,'VND','Đang Sử Dụng');
insert into dichvudikem(IDDichVuDiKem,TenDichVuDiKem,Gia,DonVi,TrangThaiKhaDung) values (52,'Thức Ắn',20000,'VND','Đã Sử Dụng');
insert into dichvudikem(IDDichVuDiKem,TenDichVuDiKem,Gia,DonVi,TrangThaiKhaDung) values (53,'Nước Uống',10000,'VND','Đã Sử Dụng');
insert into dichvudikem(IDDichVuDiKem,TenDichVuDiKem,Gia,DonVi,TrangThaiKhaDung) values (54,'Thuê Xe',50000,'VND','Chưa Sử Dụng');
CREATE TABLE HopDong (
    IDHopDong INT NOT NULL,
    IDNhanVien INT NULL,
    IDKhachHang INT NULL,
    IDDichVu INT NULL,
    NgayGiaHanHopDong DATE NULL,
    NgayKetThuc DATE NULL,
    TienDatCoc INT NULL,
    TongTien INT NULL,
    PRIMARY KEY (IDHopDong),
    FOREIGN KEY (IDNhanVien)
        REFERENCES nhanvien (IDNhanVien),
    FOREIGN KEY (IDKhachHang)
        REFERENCES khachhang (IDKhachHang),
    FOREIGN KEY (IDDichVu)
        REFERENCES dichvu (IDDichVu)
);
insert into hopdong(IDHopDong,IDNhanVien,IDKhachHang,IDDichVu,NgayGiaHanHopDong,NgayKetThuc,TienDatCoc,TongTien) values (20,0001,40,70,'1998-1-1','2010-1-1',500000,1000000);
insert into hopdong(IDHopDong,IDNhanVien,IDKhachHang,IDDichVu,NgayGiaHanHopDong,NgayKetThuc,TienDatCoc,TongTien) values (21,0002,41,71,'1999-1-1','2020-1-1',600000,2000000);
insert into hopdong(IDHopDong,IDNhanVien,IDKhachHang,IDDichVu,NgayGiaHanHopDong,NgayKetThuc,TienDatCoc,TongTien) values (22,0003,42,72,'1990-1-1','2000-1-1',700000,3000000);
insert into hopdong(IDHopDong,IDNhanVien,IDKhachHang,IDDichVu,NgayGiaHanHopDong,NgayKetThuc,TienDatCoc,TongTien) values (23,0001,46,70,'1998-1-1','2010-1-1',500000,1000000);
insert into hopdong(IDHopDong,IDNhanVien,IDKhachHang,IDDichVu,NgayGiaHanHopDong,NgayKetThuc,TienDatCoc,TongTien) values (24,0001,46,70,'1998-1-1','2010-1-1',500000,1000000);
insert into hopdong(IDHopDong,IDNhanVien,IDKhachHang,IDDichVu,NgayGiaHanHopDong,NgayKetThuc,TienDatCoc,TongTien) values (25,0004,40,70,'2019-1-1','2020-1-1',500000,1000000);
insert into hopdong(IDHopDong,IDNhanVien,IDKhachHang,IDDichVu,NgayGiaHanHopDong,NgayKetThuc,TienDatCoc,TongTien) values (26,0004,40,70,'2018-1-1','2018-2-1',500000,1000000);
insert into hopdong(IDHopDong,IDNhanVien,IDKhachHang,IDDichVu,NgayGiaHanHopDong,NgayKetThuc,TienDatCoc,TongTien) values (27,0001,40,70,'2018-1-1','2019-1-1',500000,1000000);
insert into hopdong(IDHopDong,IDNhanVien,IDKhachHang,IDDichVu,NgayGiaHanHopDong,NgayKetThuc,TienDatCoc,TongTien) values (28,0001,40,70,'2018-1-1','2019-1-1',500000,1000000);
insert into hopdong(IDHopDong,IDNhanVien,IDKhachHang,IDDichVu,NgayGiaHanHopDong,NgayKetThuc,TienDatCoc,TongTien) values (29,0001,40,70,'2018-1-1','2019-1-1',500000,1000000);
CREATE TABLE KhachHang (
    IDKhachHang INT NOT NULL,
    IDLoaiKhach INT NULL,
    HoTen VARCHAR(45) NULL,
    NgaySinh DATE NULL,
    SoCMTND VARCHAR(45) NULL,
    SDT VARCHAR(45) NULL,
    Email VARCHAR(45) NULL,
    DiaChi VARCHAR(45) NULL,
    PRIMARY KEY (IDkhachHang),
    FOREIGN KEY (IDLoaiKhach)
        REFERENCES loaikhach (IDLoaiKhach)
);
insert into khachhang(IDKhachHang,IDLoaiKhach,HoTen,NgaySinh,SoCMTND,SDT,Email,DiaChi) values (40,90,'Nguyễn Văn Q','1998-1-1',987653684,081395748,'ejiww@gmail.com','Đà Nẵng');
insert into khachhang(IDKhachHang,IDLoaiKhach,HoTen,NgaySinh,SoCMTND,SDT,Email,DiaChi) values (41,91,'Nguyễn Văn G','1999-1-1',987653284,081395742,'ejisqww@gmail.com','Đà Nẵng');
insert into khachhang(IDKhachHang,IDLoaiKhach,HoTen,NgaySinh,SoCMTND,SDT,Email,DiaChi) values (42,92,'Nguyễn Văn K','2000-1-1',987243684,081392458,'ejifaaww@gmail.com','Quảng Trị');
insert into khachhang(IDKhachHang,IDLoaiKhach,HoTen,NgaySinh,SoCMTND,SDT,Email,DiaChi) values (43,93,'Nguyễn Văn P','2010-1-1',9871391684,081395242,'ejiwadw@gmail.com','Quảng Nam');
insert into khachhang(IDKhachHang,IDLoaiKhach,HoTen,NgaySinh,SoCMTND,SDT,Email,DiaChi) values (44,94,'Nguyễn Văn D','1990-1-1',987653289384,0811391748,'edajiww@gmail.com','Quảng Bình');
insert into khachhang(IDKhachHang,IDLoaiKhach,HoTen,NgaySinh,SoCMTND,SDT,Email,DiaChi) values (45,90,'Nguyễn Văn Q','1986-1-1',987653684,081395748,'ejiww@gmail.com','Đà Nẵng');
insert into khachhang(IDKhachHang,IDLoaiKhach,HoTen,NgaySinh,SoCMTND,SDT,Email,DiaChi) values (46,90,'Nguyễn Văn E','1998-1-1',987653684,081395748,'ejiww@gmail.com','Đà Nẵng');
insert into khachhang(IDKhachHang,IDLoaiKhach,HoTen,NgaySinh,SoCMTND,SDT,Email,DiaChi) values (47,90,'Nguyễn Văn E','1998-1-1',987653684,081395748,'ejiww@gmail.com','Đà Nẵng');
insert into khachhang(IDKhachHang,IDLoaiKhach,HoTen,NgaySinh,SoCMTND,SDT,Email,DiaChi) values (48,90,'Nguyễn Văn L','1998-1-1',987653684,081395748,'ejiww@gmail.com','Vinh');

CREATE TABLE DichVu (
    IDDichVU INT NOT NULL,
    TenDichVu VARCHAR(45) NULL,
    DienTich INT NULL,
    SoTang INT NULL,
    SoNguoiToiDa VARCHAR(45) NULL,
    ChiPhiThue VARCHAR(45) NULL,
    IDKieuThue INT NULL,
    IDLoaiDichVu INT NULL,
    TrangThai VARCHAR(45) NULL,
    PRIMARY KEY (IDDichVu),
    FOREIGN KEY (IDKieuThue)
        REFERENCES kieuthue (IDKieuThue),
    FOREIGN KEY (IDLoaiDichVu)
        REFERENCES loaidichvu (IDLoaiDichVu)
);
insert into dichvu(IDDichVu,TenDichVu,DienTich,SoTang,SoNguoiToiDa,ChiPhiThue,IDKieuThue,IDLoaiDichVu,TrangThai) values (70,'Thuê Villa',10,2,5,5000000,80,63,'Trống');
insert into dichvu(IDDichVu,TenDichVu,DienTich,SoTang,SoNguoiToiDa,ChiPhiThue,IDKieuThue,IDLoaiDichVu,TrangThai) values (71,'Thuê House',10,2,3,2000000,81,60,'Trống');
insert into dichvu(IDDichVu,TenDichVu,DienTich,SoTang,SoNguoiToiDa,ChiPhiThue,IDKieuThue,IDLoaiDichVu,TrangThai) values (72,'Thuê Room',5,1,2,500000,83,62,'Trống');
CREATE TABLE LoaiKhach (
    IDLoaiKhach INT NOT NULL,
    TenLoaiKhach VARCHAR(45) NULL,
    PRIMARY KEY (IDLoaiKhach)
);
insert into loaikhach(IDLoaiKhach,TenLoaiKhach) values (90,'Diamond');
insert into loaikhach(IDLoaiKhach,TenLoaiKhach) values (91,'Platinium');
insert into loaikhach(IDLoaiKhach,TenLoaiKhach) values (92,'Gold');
insert into loaikhach(IDLoaiKhach,TenLoaiKhach) values (93,'Silver');
insert into loaikhach(IDLoaiKhach,TenLoaiKhach) values (94,'Member');
CREATE TABLE KieuThue (
    IDKieuThue INT NOT NULL,
    TenKieuThue VARCHAR(45) NULL,
    Gia INT NULL,
    PRIMARY KEY (IDKieuThue)
);
insert into kieuthue(IDKieuThue,TenKieuThue,Gia) values (80,'Villa',1000000);
insert into kieuthue(IDKieuThue,TenKieuThue,Gia) values (81,'House',200000);
insert into kieuthue(IDKieuThue,TenKieuThue,Gia) values (83,'Room',50000);
CREATE TABLE LoaiDichVu (
    IDLoaiDichVu INT NOT NULL,
    TenLoaiDichVu VARCHAR(45) NULL,
    PRIMARY KEY (IDLoaiDichVu)
);
insert into loaidichvu(IDLoaiDichVU,TenLoaiDichVu) values (60,'Chơi');
insert into loaidichvu(IDLoaiDichVU,TenLoaiDichVu) values (61,'Tham Quan');
insert into loaidichvu(IDLoaiDichVU,TenLoaiDichVu) values (62,'Nghỉ Ngơi');
insert into loaidichvu(IDLoaiDichVU,TenLoaiDichVu) values (63,'Tổ Chức Tiệc');

-- cau2
select *from nhanvien
where HoTen like "% H%" or HoTen like"% T%" or HoTen like"% K%";

-- cau3

select * from khachhang
where (year(curdate())-year(NgaySinh))<=50 and (year(curdate())-year(NgaySinh))>=18
and DiaChi in('Đà Nẵng','Quảng Trị');

-- cau4

select a.IDKhachHang, a.HoTen, count(b.IDKhachHang) as SoLanDatPhong
from KhachHang a, HopDong b
where a.IDKhachHang=b.IDKhachHang and a.IDLoaiKhach=90
group by a.HoTen
order by SoLanDatPhong asc;

-- cau5

select kh.IDKhachHang, kh.HoTen, lk.TenLoaiKhach, hd.IDHopDong,
dv.TenDichVu, hd.NgayGiaHanHopDong, hd.NgayKetThuc, (dv.ChiPhiThue+hdct.SoLuong*dvdk.Gia) as TongTien
from KhacHhang as kh  
left join LoaiKhach as lk on lk.IDLoaiKhach=kh.IDLoaiKhach  
left join HopDong as hd on kh.IDKhachHang = hd.IDKhachHang  
left join DichVu as dv on dv.IDDichVu=hd.IDDichVu
left join HopDongChiTiet as hdct on hdct.IDHopDong=hd.IDHopDong  
left join DichVuDiKem as dvdk on dvdk.IDDichVuDiKem=hdct.IDDichVuDiKem;

-- cau7

select a.IDDichVu,TenDichVu,DienTich,SoNguoiToiDa,ChiPhiThue,b.TenLoaiDichVu
from DichVu a, LoaiDichVu b, HopDong c, KhachHang d
where a.IDLoaiDichVu=b.IDLoaiDichVu and
a.IDDichVu=c.IDDichVu and
c.IDKhachHang=d.IDKhachHang and
year(NgayGiaHanHopDong) =2018 and year(NgayGiaHanHopDong)<2019;

-- cau8

select distinct HoTen from KhachHang;
select *from KhachHang group by HoTen having count(HoTen)>=1;
SELECT HoTen FROM KhachHang UNION DISTINCT SELECT HoTen FROM KhachHang;

-- cau10

select hopdong.IDHopDong, hopdong.NgayGiaHanHopDong, hopdong.NgayKetThuc, hopdong.TienDatCoc, dichvudikem.IDDichVuDiKem
from ((hopdongchitiet
		inner join hopdong on hopdongchitiet.IDHopDong = hopdong.IDHopDong)
        inner join dichvudikem on hopdongchitiet.IDDichVuDiKem = dichvudikem.IDDichVuDiKem)
        having count(dichvudikem.IDDichVuDiKem);
        
-- cau11

select a.IDDichVuDiKem, a.TenDichVuDiKem, a.Gia, a.DonVi, a.TrangThaiKhaDung
from DichVuDiKem as a  
left join HopDongChiTiet as d on a.IDDichVuDiKem=d.IDDichVuDiKem  
left join HopDong as e on e.IDHopDong=d.IDHopDong  
left join KhachHang as c on c.IDKhachHang=e.IDKhachHang
left join LoaiKhach as b on b.IDLoaiKhach=c.IDLoaiKhach
where c.DiaChi like '%Vinh%' or c.DiaChi like '%Quảng Ngãi%';

-- cau13

select DISTINCT a.IDDichVuDiKem, a.TenDichVuDiKem
from HopDongChiTiet as b
left join DichVuDiKem as a on b.IDDichVuDiKem = a.IDDichVuDiKem
left join HopDong as c on c.IDHopDong = b.IDHopDong
where a.IDDichVuDiKem in (select IDDichVuDiKem from HopDongChiTiet where SoLuong = (select max(SoLuong) from HopDongChiTiet));

-- cau14

Select b.IDHopDong, a.IDDichVuDiKem, c.TenLoaiDichVu, d.TenDichVuDiKem, a.SoLuong as SoLanSuDung
From HopDongChiTiet a,HopDong b, LoaiDichVu c, DichVuDiKem d, DichVu e
where d.iddichvudikem=a.iddichvudikem and
a=b.idhopd.idhopdongong and 
e.iddichvu=b.iddichvu and
c.idloaidichvu= e.idloaidichvu 
group by b.idhopdong, c.tenloaidichvu, d.tendichvudikem,solansudung
having solansudung=1;

-- cau15

select c.IDNhanVien,HoTen,a.TrinhDo,b.TenBoPhan,SDT,DiaChi
from TrinhDo a,BoPhan b,NhanVien c, HopDong d
where a.IDTrinhDo=c.IDTrinhDo and
b.IDBoPhan=c.IDBoPhan  and
d.IDNhanVien = c.IDNhanVien and year(NgayGiaHanHopDong) between 2018 and 2019
group by IDNhanVien,HoTen,a.TrinhDo,b.TenBoPhan,SDT,DiaChi
having count(d.IDHopDong)>=3;

-- cau19

update DichVuDiKem
set Gia = Gia*2
where IDDichVuDiKem = (select a.IDDichVuDiKem from HopDongChiTiet a, HopDong b where SoLuong<=3 and year(b.NgayGiaHanHopDong) = 2019);

-- cau20

SELECT IDKhachHang as ID,HoTen,Email,SDT,NgaySinh,DiaChi FROM KhachHang
UNION 
SELECT IDNhanVien as ID,HoTen,Email,SDT,NgaySinh,DiaChi FROM NhanVien;

-- cau21

create or replace view V_NHANVIEN as select a.*
from NhanVien as a
join HopDong as b on a.IDNhanVien=b.IDNhanVien 
where
a.DiaChi like "%Hải Châu%" 
and b.NgayGiaHanHopDong = '2019-12-12';

-- cau22

update V_NHANVIEN
set DiaChi="Liên Chiểu";

-- cau23

create index IX_KHACHHANG on KhachHang(IDKhachHang);
-- đối với cơ sở dữ liệu nhỏ không nhìn thấy sự hiệu quả của index

-- cau24

EXPLAIN select * from khachhang
where DiaChi like "%Quảng Trị%" and SDT like "%065565%";

CREATE UNIQUE INDEX IX_SoDT_DiaChi
ON khachhang (DiaChi, SDT);

EXPLAIN select * from khachhang
where DiaChi like "%Quảng Trị%" and SDT like "%065565%";

-- cau25

DELIMITER //
CREATE PROCEDURE Sp_1(
IN id_kh INT,
OUT message VARCHAR(50)
)
IF id_kh in (Select IDKhachHang from KhachHang) THEN
BEGIN
	DELETE FROM KhachHang WHERE KhachHang.IDKhachHang = id_kh;
    SET message = "Đã xóa khách hàng" ;
END;
ELSE
BEGIN
SET message = "Khách hàng không tồn tại" ;
END;
END IF;
//  DELIMITER ;

CALL Sp_1(1001, @message);

SELECT @message;

-- cau26

 DELIMITER //
CREATE PROCEDURE Sp_2(in IDHopDong int, IDNhanVien int, IDKhachhang int, IDDichVu int , 
		NgayGiaHanHopDong date, NgayKetThuc date, TienDatCoc int, Tongtien int)

BEGIN 
INSERT INTO hopdong
VALUES ( IDHopDong, IDNhanVien, IDKhachhang , IDDichVu , NgayGiaHanHopDong , NgayKetThuc , TienDatCoc, Tongtien ) ;
END 
//  DELIMITER 

call Sp_2(2 ,2 , 2, 2, '2020-02-02', '2020-03-03', 700, 1000)

-- cau27

create table tonghopdong(
	total int not null
);

INSERT INTO tonghopdong(total)
SELECT count(id) 
FROM hopdong;
 -----
 
CREATE TRIGGER Tr_1
AFTER DELETE
ON hopdong FOR EACH ROW
UPDATE tonghopdong 
SET total=total-1;
    
alter table hopdongchitiet
add constraint fk_ho
FOREIGN KEY (IDHopDong) REFERENCES hopdong(IDHopDong)
ON DELETE CASCADE;

delete from hopdong
where id=2;
select * from tonghopdong;

-- cau29
DELIMITER //
CREATE FUNCTION func_1(
	tongtien int
) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE dem varchar(20);
    IF tongtien>2000000 Then 
    Set dem=1;
    ELSEIF tongtien < 200000 THEN
        SET dem = 0;
    End if;
    return (dem);
END//
DELIMITER ;
select tongtien,tendichvu ,func_1(tongtien)
from hopdong a, dichvu b,loaidichvu c
where a.iddichvu=b.iddichvu
and  b.idloaidichvu=c.idloaidichvu
and a.tongtien >2000000;

DELIMITER //
CREATE FUNCTION func_2(
	idkhachhang int
) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE songay VARCHAR(20);
    IF idkhachhang > 0 THEN
		SET songay = ngayketthuc - ngaygiahanhopdong;
    END IF;
	-- return the student level
	RETURN (songay);
END//
DELIMITER ;
select datediff(ngayketthuc,ngaygiahanhopdong) as songay
from hopdong
order by songay desc
limit 1;
