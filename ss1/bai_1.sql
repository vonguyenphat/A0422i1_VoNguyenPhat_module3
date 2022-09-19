CREATE DATABASE student;
USE student;
DROP TABLE class;
DROP TABLE teacher;


-- tạo bảng class
CREATE TABLE class(
-- id tự tăng 
id int auto_increment primary key,
`name` varchar(50)
);
-- tạo bảng teacher
CREATE TABLE teacher(
id int auto_increment primary key,
name varchar(50),
age int,
country varchar(50)
);
-- Thêm cột mới age vào bảng class
ALTER TABLE class
ADD age INT(100);
-- Thêm tên vào trong class
INSERT INTO class(name)
VALUES
('Phát'),('Võ');
INSERT INTO class(age)
VALUES (19),(20);
-- Thêm dữ liệu vào teacher
INSERT INTO teacher(name,age,country)
VALUES
('Nguyễn Văn ',28,'Đà Nẵng'),('Nguyễn Văn B',29,'Đà Nẵng');
-- xóa hàng class
DELETE FROM `class` WHERE (`id` = '1');
-- cặp nhật tuổi vào class id 2
UPDATE `class` SET `age` = '18' WHERE (`id` = '2');
UPDATE `class` SET `name` = 'P' WHERE (`id` = '3');
-- in bản class
SELECT * FROM `class`;
-- in bản teacher
SELECT * FROM `teacher`;


