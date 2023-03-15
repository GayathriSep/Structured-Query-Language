create database company1;

use company1;

CREATE TABLE Worker11
(
Worker_ID INT NOT NULL,
first_name VARCHAR(30),
last_name VARCHAR(20),
salary INT NOT NULL,
joining_date DATETIME,
department varchar(10),
PRIMARY KEY(Worker_ID)
);

INSERT INTO Worker11(Worker_ID,first_name,last_name,salary,joining_date,department)
VALUES(001,'Monika','Arora',100000,'2014-02-20 09:00:00','HR'),
(002,'Niharika','Verma',80000,'2014-06-11 09:00:00','Admin'),
(003,'Vishal','Singhal',300000,'2014-02-20 09:00:00','HR'),
(004,'Amitabh','Singh',500000,'2014-02-20 09:00:00','Admin'),
(005,'Vivek','Bhati',500000,'2014-06-11 09:00:00','Admin'),
(006,'Vipul','Diwan',200000,'2014-06-11 09:00:00','Account'),
(007,'Satish','Kumar',75000,'2014-01-20 09:00:00','Account'),
(008,'Geetika','Chauhan',90000,'2014-04-11 09:00:00','Admin');

CREATE TABLE Bonus11
(
Worker_ref_id INT NOT NULL,
bonus_date DATETIME,
bonus_amount FLOAT,
FOREIGN KEY(Worker_ref_id) REFERENCES Worker11(Worker_ID)
);

INSERT INTO Bonus11(Worker_ref_id,bonus_date,bonus_amount)
VALUES(1,'2016-02-20 00:00:00',5000),
(2,'2016-06-11 00:00:00',3000),
(3,'2016-02-20 00:00:00',4000),
(1,'2016-02-20 00:00:00',4500),
(2,'2016-06-11 00:00:00',3500);

CREATE TABLE Title11
(
Worker_ref_id INT NOT NULL,
worker_title VARCHAR(10) ,
affected_from DATETIME,
FOREIGN KEY(Worker_ref_id) REFERENCES Worker11(Worker_ID)
);

ALTER TABLE Title11
MODIFY worker_title VARCHAR(20);

INSERT INTO Title11(Worker_ref_id,worker_title,affected_from)
VALUES(001,'Manager','2016-02-20 00:00:00');
INSERT INTO Title11(Worker_ref_id,worker_title,affected_from)
VALUES(002,'Manager','2016-06-11 00:00:00');
INSERT INTO Title11(Worker_ref_id,worker_title,affected_from)
VALUES(008,'Executive','2016-06-11 00:00:00');
INSERT INTO Title11(Worker_ref_id,worker_title,affected_from)
VALUES(005,'Manager','2016-06-11 00:00:00');
INSERT INTO Title11(Worker_ref_id,worker_title,affected_from)
VALUES(004,'Asst.Manager','2016-06-11 00:00:00');
INSERT INTO Title11(Worker_ref_id,worker_title,affected_from)
VALUES(007,'Executive','2016-06-11 00:00:00');
INSERT INTO Title11(Worker_ref_id,worker_title,affected_from)
VALUES(006,'Lead','2016-06-11 00:00:00');
INSERT INTO Title11(Worker_ref_id,worker_title,affected_from)
VALUES(003,'Lead','2016-06-11 00:00:00');

/ Write a query to fetch first_name from Worker tabe using the alias name as <Worker_name>
SELECT first_name FROM Worker11 AS Worker_name;

/ Write a query to fetch first_name from Worker tabe in upper case
SELECT UPPER(first_name) FROM Worker11 AS Worker_name;

/ Write a query to fetch unique values of department from Worker tabe
SELECT DISTINCT department FROM Worker11;

/ Write a query to print the first three characters of first_name from Worker table
SELECT SUBSTRING(first_name,1,3) FROM Worker11;

/ Write a query to find the position of the alphabet('a') in the first name column 'Amitabh' from Worker table
SELECT POSITION('a' IN first_name) FROM Worker11
WHERE first_name='Amitabh'


