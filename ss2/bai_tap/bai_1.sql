create database ss2_bai1;
use  ss2_bai1;
drop database ss2_bai1;
create table if not exists PhieuXuat(
SoPX int primary key,
NgayXuat date
);
create table if not exists VatTu(
MaVTU int primary key,
TenVTU varchar(50)
);
create table if not exists ChiTietPhieuXuat(
DGXuat double,
SLXuat int,
SoPX_PhieuXuat int,
MaVTU_VatTu int,
primary key(SoPX_PhieuXuat,MaVTU_VatTu),
foreign key(SoPX_PhieuXuat) references PhieuXuat(SoPX),
foreign key(MaVTU_VatTu) references VatTu(MaVTU)
);

create table if not exists PhieuNhap(
SoPN int primary key,
NgayNhap date
);

create table if not exists ChiTietPhieuNhap(
DGNhap double,
SLNhap int,
MaVTU_VatTu int,
SoPN_PhieuNhap int,
primary key(MaVTU_VatTu,SoPN_PhieuNhap),
foreign key(MaVTU_VatTu) references VatTu(MaVTU),
foreign key(SoPN_PhieuNhap) references PhieuNhap(SoPN)
);

create table if not exists NCC(
MaNCC int primary key,
TenNCC varchar(50),
DiaChi varchar(50),
SDT varchar(50) ,
foreign key(SDT) references SDT(SDT)
);
drop table NCC;

create table if not exists DONDH(
SoDH int primary key,
NgayDH date,
MaNCC_NCC int,
foreign key(MaNCC_NCC) references NCC(MaNCC)
);
drop table DONDH;

create table if not exists ChiTietDonDatHang(
MaVTU_ChiTietDonDatHang int,
SoDH_ChiTietDonDatHang int,
primary key(MaVTU_ChiTietDonDatHang,SoDH_ChiTietDonDatHang),
foreign key(MaVTU_ChiTietDonDatHang) references VatTu(MaVTU),
foreign key(SoDH_ChiTietDonDatHang) references DONDH(SoDH)
);

CREATE TABLE  SDT(
SDT varchar(50) primary key
);
drop table SDT;






