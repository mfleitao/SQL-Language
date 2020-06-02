-- ***********************
-- Name: Matheus Leitao
-- ID: 148 300 171
-- Date: 01/31/2019
-- Purpose: Lab 4 DBS301
-- ***********************

-- Question 1
-- Display the difference between the Average pay and Lowest pay in the company.  Name this result Real Amount. Format the 
-- output as currency with 2 decimal places.
SELECT to_char(avg(salary) - min(salary), '$999,999.00') AS "Real Amount"
    FROM employees;
    
-- Question 2
-- Display the department number and Highest, Lowest and Average pay per each department. Name these results High, Low and Avg. 
-- Sort the output so that the department with highest average salary is shown first. Format the output as currency where 
-- appropriate.
SELECT  department_id,
        to_char(max(salary), '$999,999.00') AS "High",
        to_char(min(salary), '$999,999.00') AS "Low",
        to_char(avg(salary), '$999,999.00') AS "Avg"
    FROM employees
    GROUP BY department_id
    ORDER BY "Avg" DESC;
    
-- Question 3
-- Display how many people work the same job in the same department. Name these results Dept#, Job and How Many. Include only 
-- jobs that involve more than one person.  Sort the output so that jobs with the most people involved are shown first.
SELECT  department_id AS "Dept#", 
        job_id AS "Job", 
        count(job_id) AS "How Many"
    FROM employees
    GROUP BY job_id, department_id
    HAVING count(job_id) > 1
    ORDER BY "How Many" DESC;

-- Question 4
-- For each job title display the job title and total amount paid each month for this type of the job. Exclude titles AD_PRES 
-- and AD_VP and also include only jobs that require more than $11,000. Sort the output so that top paid jobs are shown first
SELECT  job_id AS "Job Title", 
        sum(salary) AS "Amount Paid"
    FROM employees 
    WHERE job_id NOT IN('AD_PRES', 'AD_VP')
    AND salary > 11000
    GROUP BY job_id, department_id
    ORDER BY "Amount Paid" DESC;

-- Question 5
-- For each manager number display how many persons he / she supervises. Exclude managers with numbers 100, 101 and 102 and 
-- also include only those managers that supervise more than 2 persons. Sort the output so that manager numbers with the 
-- most supervised persons are shown first.
SELECT  manager_id, 
        count(employee_id) AS "Number of People"
    FROM employees
    WHERE manager_id NOT IN(100, 101, 102)
    GROUP BY manager_id
    HAVING count(employee_id) > 2
    ORDER BY "Number of People" DESC;

-- Question 6
-- For each department show the latest and earliest hire date, BUT exclude departments 10 and 20 exclude those departments where 
-- the last person was hired in this decade. (it is okay to hard code dates in this question only) Sort the output so that the 
-- most recent, meaning latest hire dates, are shown first.
SELECT  max(hire_date) AS "Latest Hire Date", 
        min(hire_date) AS "Earliest Hire Date"
    FROM employees
    WHERE hire_date NOT BETWEEN to_date('2011-01-01', 'YYYY-MM-DD') AND to_date('2020-12-31', 'YYYY-MM-DD')
    AND department_id NOT IN(10, 20)
    ORDER BY hire_date DESC;
    
    
















