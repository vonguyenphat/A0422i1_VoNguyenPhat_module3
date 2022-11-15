create database final_module3_sach;
use final_module3_sach;

create table Sach (
maSach int primary key auto_increment,
tenSach varchar(250),
tacGia varchar(250),
soLuong int not null,
moTa varchar(255)
);

create table hocSinh (
maHocSinh int primary key auto_increment,
hoTen  varchar(250),
lop varchar(25)
);

select*from hocSinh;
insert into hocSinh(hoTen,lop) value ('Phát','A0422i1');
insert into hocSinh(hoTen,lop) value ('Sơn','A0422i1');
create table TheMuongSach (
maMuongSach int primary key auto_increment,
maSach int,
maHocSinh int,
trangThai boolean,
ngayMuong date,
ngayTra date,
foreign key(maSach) references Sach(maSach),
foreign key(maHocSinh) references Sach(maHocSinh)
);
select*from TheMuongSach;

insert into TheMuongSach(maSach,maHocSinh,trangThai,ngayMuong,ngayTra) value (1,1,true,'2020-10-1','2020-10-29');
insert into Sach(tenSach,tacGia,soLuong,moTa) value ('Số đỏ','Vũ Trọng Phụng',10,'Nhân vật chính là Xuân Tóc Đỏ và ..');
insert into Sach(tenSach,tacGia,soLuong,moTa) value ('Truyện Kiều','Vũ Trọng Phụng',15,'Nhân vật chính là Xuân Tóc Đỏ và ..');
select* from Sach;


