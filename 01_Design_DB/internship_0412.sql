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
--- cau2
select *from nhanvien
where HoTen like "% H%" or HoTen like"% T%" or HoTen like"% K%";
--- cau3
select * from khachhang
where (year(curdate())-year(NgaySinh))<=50 and (year(curdate())-year(NgaySinh))>=18
and DiaChi in('Đà Nẵng','Quảng Trị');
--- cau4