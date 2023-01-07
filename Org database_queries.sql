SELECT FIRST_NAME,SALARY FROM Worker;

SELECT * FROM Worker;
-- EXAMPLES OF WHERE
SELECT * FROM Worker WHERE SALARY > 100000;
SELECT FIRST_NAME FROM WORKER WHERE SALARY > 100000;
SELECT * FROM WORKER WHERE DEPARTMENT = 'HR';

-- USE OF BETWEEN 
-- SELECT SALARY [80000,30000]
SELECT * FROM Worker WHERE SALARY BETWEEN 80000 AND 300000;

-- REDUCE OR statements
-- HR , ADMIN,ACCOUNT
SELECT * FROM Worker WHERE DEPARTMENT = 'ADMIN' OR DEPARTMENT = 'HR' OR DEPARTMENT = 'ACCOUNT';

-- better way : IN 
SELECT * FROM Worker WHERE DEPARTMENT IN ('HR','ADMIN','ACCOUNT'); 

-- NOT 
SELECT * FROM Worker WHERE DEPARTMENT NOT IN ('HR','ADMIN');

-- Pattern seraching / Wildcard
select * from worker where FIRST_NAME like '%i%';
select * from worker where FIRST_NAME like '_i%';

-- Sorting using ORDER BY
select * from Worker order by salary;
-- for decresing order
select * from Worker order by salary DESC ;

-- DISTINCT
select DISTINCT department from Worker;

-- Data Grouping by GROUP BY
select department from worker group by department;

-- Group by using aggregation function
-- Count 
select department, COUNT(department) from worker group by department;

-- Average salary per department
select department, AVG(salary) from worker group by department;

-- Min salry per dept.alter
select department, MIN(salary) from worker group by department;

-- MAx salary per dept
select department, MAX(salary) from worker group by department;

-- SUM 
select department, SUM(salary) from worker group by department;

-- GROUP BY HAVING
select department, COUNT(department) from worker group by department HAVING COUNT(department) > 1;
