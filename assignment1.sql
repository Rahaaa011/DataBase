CREATE DATABASE ComsatsABBO1;

USE ComsatsABBO1;

CREATE TABLE Student (

    StudentID INT PRIMARY KEY,

    StudentName VARCHAR(100) NOT NULL,

    StudentAge INT NOT NULL,

    StudentEmail VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Student
(StudentID, StudentName, StudentAge, StudentEmail)

VALUES
(1,'Sara',20,'sara@gmail.com'),

(2,'Ali',30,'ali@gmail.com'),

(3,'Noorah',40,'noorah@gmail.com');

SELECT * FROM Student;

CREATE TABLE Course (

    CourseID VARCHAR(10) PRIMARY KEY,

    CourseTitle VARCHAR(100) NOT NULL,

    CourseCreditHours INT NOT NULL
);

INSERT INTO Course
(CourseID, CourseTitle, CourseCreditHours)

VALUES
('CS101','Database',2),

('SE102','Software',4),

('ENG103','English',2);

SELECT * FROM Course;

CREATE TABLE Department (

    DepartmentID INT PRIMARY KEY,

    DepartmentName VARCHAR(100) NOT NULL
);

INSERT INTO Department
(DepartmentID, DepartmentName)

VALUES
(1, 'Environmental Science'),

(2, 'Earth Science');

SELECT * FROM Department;

CREATE TABLE Instructor (

    InstructorID INT PRIMARY KEY,

    InstructorName VARCHAR(100) NOT NULL,

    InstructorEmail VARCHAR(100) NOT NULL,

    DepartmentID INT NOT NULL,

    FOREIGN KEY (DepartmentID)
    REFERENCES Department(DepartmentID)
);

INSERT INTO Instructor
(InstructorID, InstructorName, InstructorEmail, DepartmentID)

VALUES
(1,'Raha','raha@gmail.com',1),

(2,'Maha','maha@gmail.com',2),

(3,'Sayra','sayra@gmail.com',1);

SELECT * FROM Instructor;


CREATE TABLE Enroll (

    StudentID INT NOT NULL,

    CourseID VARCHAR(10) NOT NULL,

    Grade CHAR(1),

    PRIMARY KEY (StudentID, CourseID),

    CHECK (Grade IN ('A','B','C','D','F')),

    FOREIGN KEY (StudentID)
    REFERENCES Student(StudentID),

    FOREIGN KEY (CourseID)
    REFERENCES Course(CourseID)
);

INSERT INTO Enroll
(StudentID, CourseID, Grade)

VALUES
(1, 'CS101', 'A'),

(2, 'SE102', 'B'),

(3, 'ENG103', 'C');

SELECT * FROM Enroll;

SELECT * FROM Student;

SELECT * FROM Course;

SELECT * FROM Department;

SELECT * FROM Instructor;

SELECT * FROM Enroll;