create database universitylums;
use  universitylums;
create table student (
id INT PRIMARY KEY,
name varchar(50),
email varchar(90),
age INT,
marks INT
);
create table Departnment(
name varchar(50),
id INT PRIMARY KEY
);

create table teacher(
id INT PRIMARY KEY,
name varchar(70),
email varchar(50),
DepartmentiD Foreign key
);


CREATE TABLE course(
coursename  varchar(78),
courseiD INT PRIMARY KEY,
coursecredithours int);



INSERT INTO student(id, name, email, age, marks)
VALUES
(101, 'rukhsaar', 'raha@gmail.com', 21, 78),
(102, 'samu', 'samu@gmail.com', 24, 89),
(103, 'zoya', 'zoyashah@mail.com', 33, 43),
(104, 'inarah', 'inara@gmail.com', 19, 94);

select * from student where marks between 70 and 94;

select * from student where age > 43 or marks = 81;

select * from student order by marks asc;

select * from student order by marks desc;

select name from student;

select marks from student;

select max(marks) from student;

select avg(marks) from student; 
 

INSERT INTO student (id, name, email, age, marks)
VALUES
(101, 'rukhsaar', 'raha@gmail.com', 21, 78),
(102, 'samu', 'samu@gmail.com', 24, 89),
(103, 'zoya', 'zoyashah@mail.com', 33, 43),
(104, 'inarah', 'inara@gmail.com', 18, 94);






