-- ALTER COMMANDS DEMO

create table account1(
id int primary key,
name varchar(255) UNIQUE,
balance INT not null default 0
);

select * from account;

-- ADD new column 
ALTER TABLE account ADD interest FLOAT NOT NULL DEFAULT 0;

-- MODIFY 
alter table account MODIFY interest DOUBLE NOT NULL DEFAULT 0;

DESC account;

-- CHANGE column - RENAME the column 
alter table account CHANGE COLUMN interest saving_interest FLOAT NOT NULL DEFAULT 0;

select * from account;

-- DROP COLUMN
alter table account DROP COLUMN saving_interest;

-- RENAME THE TABLE
alter table account RENAME TO account_details;

select * from account_details;