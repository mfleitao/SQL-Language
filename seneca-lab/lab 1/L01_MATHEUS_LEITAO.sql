-- ***********************
-- Name: Matheus Leitao
-- ID: 148 300 171
-- Date: 01/10/2019
-- Purpose: Lab 1 DBS301
-- ***********************

-- Question 1 -- 
-- The widest and longest table is 'employees' table

SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM job_history;


-- Question 2 --
-- The statement below does not work because it is missing the keyword "AS" before the new names for the columns and also the
-- column "Hire Date" is missing the underline (there is no column name with spaces).
/*
SELECT last_name “LName”, job_id “Job Title”, Hire Date “Job Start”
    FROM employees;
*/
SELECT last_name AS "LName", job_id AS "Job Title", hire_date AS "Job Start"
    FROM employees;
    

-- Question 3 --
-- The three erros below is: it's missing an underline at the column "last name"; it's missing the keyword "AS" for the alias
-- of "commission_pct"; and it's missing double quotes at the alias "Emp Comm"
/*
SELECT employee_id, last name, commission_pct Emp Comm,
    FROM employees;
*/
SELECT employee_id, last_name, commission_pct AS "Emp Comm"
    FROM employees;


-- Question 4 --
--
DESCRIBE locations;


-- Question 5 --
--
SELECT location_id AS "City#", city AS "City", 
    CASE WHEN state_province IS NULL THEN country_id 
    ELSE CONCAT(CONCAT(state_province, ' IN THE '), country_id) END AS "Province with Country Code" 
    FROM locations;







