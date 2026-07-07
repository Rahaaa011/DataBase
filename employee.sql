Create Database if not exists  Task1  ;
use Task1;
Create Table if not exists Emp1(
EID Int Primary KEy,
E_name varchar(20),
Dept Varchar(10),
Salary Int
);
Insert into Emp1 Values 
(1,'Ali','HR',1000),
(2,'sara','IT',2000),
(3,'rukhsar','se',3000),
(4,'zoya','cs',4000),
(5,'amna','bty',5000);

select max(Salary) from Emp1;
Select E_name from Emp1 where Salary= (select max(Salary) from Emp1);
Select max(Salary) from Emp1 where Salary<> (select max(Salary) from Emp1);
Select E_name from Emp1 where Salary= (Select max(Salary) from Emp1 where Salary<> (select max(Salary) from Emp1));