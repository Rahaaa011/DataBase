 CREATE database collegeAKS;
use collegeAKS;
CREATE TABLE studentA (
rollno int PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

create table marks(
marks   INT primary KEY
);
INSERT INTO Marks (marks)
values
(30),
(65),
(70),
(85),
(95);

INSERT INTO studentA(rollno, name, marks, grade, city)
VALUES
 (101, "anil", 78, "C" , "pune"),
(102, "bhumika", 85, "A" , "mumbai"),
 (103, "chetan", 93, "B" , "mumbai"),
 (104, "dhruv", 96, "A" , "delhi"),
 (105, "emaneul", 12, "F" , "delhi"),
 (106, "farah", 82, "B" , "delhi");
 
 select *
from studentA
where marks+10>100;
select * 
from studentA
where marks>90 or city ="Mumbai";
select *
from studentA
where marks BETWEEN 80 and 90;
select *
from studentA
order by marks ASC;
select name  from studentA;
select  marks from studentA;
select grade from studentA;
 select* from studentA;
 
 select max(marks) from studentA;
 SELECT MIN (Marks) from studentA;
 SELECT avg(marks) from studentA;
 select avg(marks) from studentA;
 
 select city,count(name)
 from studentA Group by city;
 
select count (name), 
city from studentA group by city having max(marks)>90;
select count (name), city
 from studentA group by city having max (marks) >90;

 SELECT COUNT(name), city
FROM studentA
GROUP BY city;

delete from studentA 
where marks <33;

SET SQL_SAFE_UPDATES = 0;
update studentA set grade="0";

Delete from marks
where marks =95;
 select *from StudentA;
 show databases;
 TRUNCATE TABLE studentA;
DROP TABLE marks;
ALTER TABLE studentA
MODIFY marks BIGINT;
SELECT name, marks, rollno, grade,city FROM studentA;

SELECT name, marks, city FROM studentA;
