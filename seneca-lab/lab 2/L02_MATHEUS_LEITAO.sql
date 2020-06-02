-- ***********************
-- Name: Matheus Leitao
-- ID: 148 300 171
-- Date: 01/17/2019
-- Purpose: Lab 2 DBS301
-- ***********************

-- Question 1 
-- Display the employee_id, last name and salary of employees earning in the range of $8,000 to $12,000.  Sort the output by 
-- top salaries first and then by last name.
SELECT  employee_id, 
        last_name, 
        TO_CHAR(salary, '$999,999.99') AS "Salary"
    FROM employees
    WHERE salary BETWEEN 8000 AND 12000
    ORDER BY salary DESC, last_name;
    
-- Question 2
-- Modify previous query (#1) so that additional condition is to display only if they work as Programmers or Sales 
-- Representatives. Use same sorting as before.
SELECT  employee_id, 
        last_name, 
        TO_CHAR(salary, '$999,999.99') AS "Salary"
    FROM employees
    WHERE salary BETWEEN 8000 AND 12000
    AND job_id IN('IT_PROG', 'SA_REP')
    ORDER BY salary DESC, last_name;
    
-- Question 3
-- The Human Resources department wants to find high salary and low salary employees. Modify previous query (#2) so that it 
-- displays the same job titles but for people who earn outside the given salary range from question 1. Use same sorting as 
-- before.
SELECT  employee_id, 
        last_name, 
        TO_CHAR(salary, '$999,999.99') AS "Salary",
        job_id
    FROM employees
    WHERE salary NOT BETWEEN 8000 AND 12000
    AND job_id IN('IT_PROG', 'SA_REP')
    ORDER BY salary DESC, last_name;

-- Question 4
-- The company needs a list of long term employees, in order to give them a thank you dinner. Display the last name, job_id and 
-- salary of employees hired before 2018. List the most recently hired employees first.
SELECT  employee_id, 
        last_name, 
        job_id,
        TO_CHAR(salary, '$999,999.99') AS "Salary", hire_date
    FROM employees
    WHERE hire_date < TO_DATE('2018', 'YYYY')
    ORDER BY hire_date DESC;

-- Question 5
-- Modify previous query (#4) so that it displays only employees earning more than $12,000. List the output by job title 
-- alphabetically and then by highest paid employees.
SELECT  employee_id, 
        last_name, 
        job_id,
        TO_CHAR(salary, '$999,999.99') AS "Salary", hire_date
    FROM employees
    WHERE hire_date < TO_DATE('2018', 'YYYY')
    AND salary > 12000
    ORDER BY job_id, salary DESC;
    
-- Question 6
-- Display the job titles and full names of employees whose first name contains an ‘e’ or ‘E’ anywhere. The output should look 
-- like: (BONUS MARK FOR NOT using the OR keyword in the solution but obtaining the same results)
SELECT  job_id, 
        first_name || ' ' || last_name AS "Full Name"
    FROM employees
    WHERE UPPER(first_name) LIKE '%E%';
    
-- Question 7
-- Create a report to display last name, salary, and commission percent for all employees that earn a commission.
SELECT  last_name, 
        TO_CHAR(salary, '$999,999.99') AS "Salary",
        commission_pct
    FROM employees
    WHERE commission_pct IS NOT NULL;

-- Question 8
-- Do the same as question 7, but put the report in order of descending salaries.
SELECT  last_name, 
        TO_CHAR(salary, '$999,999.99') AS "Salary",
        commission_pct
    FROM employees
    WHERE commission_pct IS NOT NULL
    ORDER BY salary DESC;
    
-- Question 9
-- Do the same as 8, but use a numeric value instead of a column name to do the sorting.
SELECT  last_name, 
        TO_CHAR(salary, '$999,999.99') AS "Salary",
        commission_pct
    FROM employees
    WHERE commission_pct IS NOT NULL
    ORDER BY 2 DESC;
    