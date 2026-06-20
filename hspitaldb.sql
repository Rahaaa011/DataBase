create database hospital;
create table  hospital.Patient
(
PatientID int primary key,
FirstName varchar(20),
age int,
gender varchar(21),
Address varchar(22),
disease varchar(22)
);
insert into hospital.Patient(PatientID,FirstName,age,gender,Address,disease) values(1,'rukhsaar',21,'female','gilgit','nausia');
insert into hospital.Patient(PatientID,FirstName,age,gender,Address,disease) values(2,'rabya',24,'female','skardu', 'fever');
select * from hospital.Patient;

create table hospital.Doctor
(
DoctorID int primary key,
FirstName varchar(12),
specialization varchar(12),
phone int,
experienceyears int
);
insert into hospital.Doctor(DoctorID,FirstName,specialization,phone,experienceyears) values(1,'Kalim','orthopadic',05432,7);
insert into hospital.Doctor(DoctoriD,FirstName,specialization,phone,experienceyears) values(1,'Ali','skin',012340,6);

create table hospital.Room (
RoomID int primary key,
Roomtype varchar(23),
 Chargeperday int(24)
 );
 insert into hospitl.Room(RoomID,Roomtype,chargeperday) values(1,'icu',25);
  insert into hospitl.Room(RoomID,Roomtype,chargeperday) values(2,'general',28);
  
  create table hospital.Reports
  ( 
  TestID Primary key,
  PatientID Foreign key,
  testname varchar(43),
  result varchar(45),
  );
  insert into hospital.Reports(TestID,PatientID,testname,result) values(1,011, 'screening','result');
  
  
  
  
  
  
  
