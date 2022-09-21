create database ss2_bai2;
use ss2_bai2;
create table if not exists Customer(
cID int auto_increment primary key,
cName varchar(50),
cAge int(150)
);

create table if not exists Product(
pID int auto_increment primary key,
pName varchar(50),
pPrice double
);

