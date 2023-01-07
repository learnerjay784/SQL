USE ORG;
-- SQL practise queries...

-- 1
select first_name as worker_name from worker;
-- 2 
select UPPER(first_name) from worker;
-- 3 
select distinct department from worker;
select department from worker group by department;
-- 4
select substring(first_name,1,3) from worker;
-- 5
select INSTR(first_name,'B') from worker where first_name = 'Amitabh';
-- 6 
select RTRIM(first_name) from worker; 
-- 7
select LTRIM(first_name) from worker;
-- 8
select distinct department, LENGTH(department) from worker;
-- 9 
select REPLACE(first_name,'a','A') from worker;
-- 10
select concat(first_name,' ',last_name) as COMPLETE_NAME from worker;
-- 11 
select * from worker order by first_name;
-- 12 
select * from worker order by first_name , department desc;
-- 13 
select * from worker where first_name = 'vipul'or first_name = 'satish';
select * from worker where first_name in ('vipul','satish');
-- 14 
select * from worker where first_name not in ('vipul','satish');
-- 15 
select * from worker where department = 'Admin'; 
-- 16 
select * from worker where first_name like '%a%';
-- 17 
select * from worker where first_name like '%a';
-- 18 
select * from worker where first_name like '_____h';
-- 19
select * from worker where salary between 100000 and 500000;
-- 20 
select * from worker where YEAR(joining_date) = 2014 and MONTH(joining_date) = 02;

