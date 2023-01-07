create table account(
id int primary key,
name varchar(255) UNIQUE,
balance INT,
CONSTRAINT acc_balance_chk CHECK(balance > 1000)
);

INSERT INTO account(id,name,balance)
values (1,'A',10000);

INSERT INTO account(id,name, balance)
values (2,'A', 100000);       -- Error Beacuse name should be unique

INSERT INTO account(id,name, balance)
values (2,'B', 100);         -- Error because balance eshould be greater thn 1000

INSERT INTO account(id,name, balance)
values (2,'B', 3000); 

select * from account;