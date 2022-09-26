create database ss2_bai2;
use ss2_bai2;
create table if not exists Customer(
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