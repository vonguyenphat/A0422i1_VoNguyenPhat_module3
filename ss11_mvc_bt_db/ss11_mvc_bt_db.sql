create database ss11_mvc_bt;
use  ss11_mvc_bt;


create table customer(
id int primary key auto_increment,
 `name` varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 address varchar(120)
);
select*from customer;
INSERT INTO `ss11_mvc_bt`.`customer` (`id`, `name`, `email`, `address`) VALUES ('1', 'phat', 'phat@gmail.com', 'dn');
INSERT INTO `ss11_mvc_bt`.`customer` (`id`, `name`, `email`, `address`) VALUES ('2', 'phat', 'p@gmail.com', 'qn');
 insert into customer(`name`,email,address) 
 value(
 ('phat','phat@gmail.com','dn'), ('phat','phat@gmail.com','dn')
 );
