-- DML

CREATE database temp;
USE temp;

CREATE TABLE Customer (
id integer PRIMARY KEY,
ename varchar (225),
Address varchar(225),
Gender char(2),
City varchar(225),
Pincode integer
);
INSERT INTO Customer
VALUES (1251,'Ram Kumar','Dilbagh Nagar','M','Jalandhar',144002),
	    (1300,'Shyam Singh','Ludhiana H.O','M','Ludhiana',141001),
        (245,'Neelabh Shukla','Ashok Nagar','M','Jalandhar',144003),
        (210,'Barkha Singh','Dilbagh Nagar','F','Jalandhar',14402),
        (500,'Rohan Arora','Ludhiana H.O','M','Ludhiana',141001);

INSERT INTO customer(id,ename)
VALUES (121,'BOB');
	
-- UPDATE 
UPDATE Customer SET Address = 'Mumbai',Gender = 'M' WHERE id = 121;

select * from customer;

-- DELETE
DELETE FROM customer WHERE id = 121;

-- DElete on set null 
-- DELETE on cascade

-- REPLACE 
REPLACE INTO customer (id,city)
VALUES(1251,'Patna'); 
select * from customer;

REPLACE INTO customer SET id = 1300,ename = 'Mac',city = 'Dehradun';




