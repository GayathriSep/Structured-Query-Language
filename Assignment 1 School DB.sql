//create db school
CREATE DATABASE school;
USE school;

//create table for db school
CREATE TABLE student
(
StdID INT,
StdName VARCHAR(30) NOT NULL,
Sex VARCHAR(6),
Percentage INT,
SClass INT,
Sec VARCHAR(5),
Stream VARCHAR(10),
DOB DATE,
constraint check_Sex check(Sex= 'Male' or 'Female),
constraint check_Stream check(Stream= 'Science' or 'Commerce'),
PRIMARY KEY(StdID)
);

//display student table structure
SHOW TABLES;

//insert records in the student table
INSERT INTO student(StdID,StdName,Sex,Percentage,SClass,Sec,Stream,DOB)
values(100, 'Gayathri', 'Female', 99, 1, 'A', 'Science', '1996-09-20'),
(101, 'Prathiba', 'Female', 90, 2, 'B', 'Science', '1996-08-17'),
(102, 'Agila', 'Female', 80, 3, 'A', 'Commerce', '1997-05-11'),
(103, 'Sathish', 'Male', 79, 3, 'A', 'Science', '2001-07-10'),
(104, 'Pandya', 'Male', 60, 2, 'B', 'Commerce', '2001-03-25'),
(105, 'Praveen', 'Male', 55, 1, 'A', 'Science', '1996-09-15');

//describe table
DESC student;

//Display only name and dob from table
SELECT StdName,DOB FROM student;

//Display all records where percentage is greater or equal to 80 from table
SELECT * FROM student
WHERE Percentage>=80;

//Display student name, percentage and stream is greater than 80 from table
SELECT StdName,Percentage,Stream FROM student
WHERE Percentage>80;

//Display all records of science students where percentage is more than 75
SELECT * FROM student
WHERE Stream = 'Science' and Percentage>75;

//Display all names and percentage where percentage is between 60 and 80
SELECT StdName,Percentage FROM student
WHERE Percentage BETWEEN 60 AND 80;
