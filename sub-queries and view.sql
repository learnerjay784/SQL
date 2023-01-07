CREATE database company;
show databases;
USE company;

CREATE TABLE project(
id int primary key,
empID int,
name varchar(25),
startdate date,
clientID int
);

INSERT INTO project
VALUES (1,1,'A','2021-04-21',3),
       (2,2,'B','2021-03-12',1),
       (3,3,'C','2021-01-16',5),
       (4,4,'D','2021-04-27',2),
       (5,5,'E','2021-05-01',4);

CREATE TABLE employee(
Eid int ,
fname varchar(250),
lname varchar(250),
Age int,
emailID varchar(255),
phoneno int,
city char(25),
FOREIGN KEY (Eid) references project(id)
);

INSERT INTO employee
VALUES (1,'Aman','Pandit',32,'aman54@gmail.com',89489,'Delhi'),
	   (2,'Yagya','Narayan',44,'narayan94@gmail.com',2222,'Palam'),
       (3,'Rahul','BD',22,'rahul@gmail.com',33333,'Kolkata'),
       (4,'Jatin','Hermit',31,'jatin54@gmail.com',44444,'Raipur'),
       (5,'PK','Pandey',21,'pk@gmail.com',55555,'Jaipur');
       
CREATE TABLE client(
Cid int,
first_name char(25),
last_name char(25),
age int,
emailID varchar(100),
phoneno int,
city char(25),
empID int,
FOREIGN KEY (Cid) references project(id)
);

INSERT INTO client
VALUES (1,'Mac','Rogers',47,'mac@hotmail.com',323,'Kolkata',3),
	   (2,'Max','Pointer',27,'max@gmail.com',2222,'Kolkata',3),
       (3,'Peter','Jain',24,'peter@gmail.com',33333,'Delhi',1),
       (4,'Sushant','Agrawal',34,'sushant4@gmail.com',443533,'Hyderabad',5),
       (5,'Pratap','Singh',36,'pratap@gmail.com',77777,'Mumbai',2);

-- SUB QUERIES
-- WHERE clause same table
-- employee with age > 18
select * from employee where age in (select age from employee where age > 30);

-- WHERE Clause different table 
-- employee details working in more than 1 project
select * from employee where Eid in(
 select empID from project group by empID having count(empID) > 1
 );

-- single value subquery
-- emp details having age > avg(age)
select * from Employee where age > (select avg(age) from Employee);

-- FROM Clause 
-- select max age person whose first name contains 'a'
select max(age) from (select * from Employee where fname like '%a%') AS temp;

-- correlated subquery
-- find 3rd oldest employee
SELECT * from employee e1 WHERE 3 = (
select count(e2.age) FROM employee e2 where e2.age >= e1.age
);

-- VIEW 
SELECT * FROM Employee;

-- Creating a view 
CREATE VIEW custom_view AS SELECT fname,age FROM Employee;

-- Viewing FROm VIEW 
select * from custom_view;

-- Altering the view 
ALTER VIEW custom_view as SELECT fname,lname,age FROM employee;

-- Droping the view
DROP VIEW IF EXISTS custom_view;