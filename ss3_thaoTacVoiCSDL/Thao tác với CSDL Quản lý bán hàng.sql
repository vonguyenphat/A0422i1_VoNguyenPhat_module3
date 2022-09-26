create database ss3_bai2;
use  ss3_bai2;
drop database ss3_bai2;
create table Customer(
cID int auto_increment primary key,
cName varchar(50),
cAge tinyint
);

create table if not exists  `Order` (
oID int auto_increment primary key,
cID int not null,
oDate date,
oTotalPrice int ,
foreign key (cID) references Customer(cID)
);


create table if not exists Product(
pID int auto_increment primary key,
pName varchar(25),
pPrice int
);

create table if not exists OrderDetail(
oID int ,
pID int,
odQTY int, 
foreign key(oID) references  `Order`(oID),
foreign key(pID) references Product(pID)
);
drop  table Customer;




insert into Customer(cName,cAge)
value ('Minh Quan',10),('Ngoc Oanh',20),('Hong Ha',50);
insert into  `Order`(cID,oDate)
value (1,'2006-3-21');
insert into  `Order`(cID,oDate)
value (2,'2006-3-23'), (1,'2006-3-16');
insert into Product(pName,pPrice)
value 		('May Giat',3),
			('Tu Lanh',5),
            ('Dieu Hoa',7),
            ('Quat',1),
            ('Bep Dien',2);
INSERT INTO OrderDetail (oID, pID, odQTY) VALUE(1,1,3);
INSERT INTO OrderDetail (oID, pID, odQTY) VALUE(1,3,7);
INSERT INTO OrderDetail (oID, pID, odQTY) VALUE(1,4,2);
INSERT INTO OrderDetail (oID, pID, odQTY) VALUE(3,1,8);
INSERT INTO OrderDetail (oID, pID, odQTY) VALUE(2,5,4);
INSERT INTO OrderDetail (oID, pID, odQTY) VALUE(2,3,3);
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select*from `Order`;
-- Hiển thị danh sách các khách hàng đã mua hàng và danh sách sản phẩm được mua bởi các khách
select c.cName, p.pName  from Customer c
join  `Order`  o on c.cID = o.cID
join OrderDetail  od on o.oID = od.oID
join Product  p on od.pID=p.pID;
-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select c.cName from Customer c
where c.cID not in(select o.cid from `order` o);
-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
select o.oID as MaHoaDon, o.oDate NgayBan, sum(odQTY*pPrice) as GiaTien
from `Order` o
join OrderDetail od on o.oID = od.oID
join Product p on od.oID = p.pID 
group by o.oID;

select*from Customer;
select*from `Order`;
select*from Product;
select*from OrderDetail;





