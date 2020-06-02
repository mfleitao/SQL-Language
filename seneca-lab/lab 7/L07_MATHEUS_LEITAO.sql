-- ***********************
-- Name: Matheus Leitao
-- ID: 148 300 171
-- Date: 03/10/2019
-- Purpose: Lab 7 DBS301
-- ***********************

-- Question 1
-- The HR department needs a list of Department IDs for departments that do not conbtain the job ID of ST_CLERK> Use a 
-- set operator to create this report.
SELECT department_id 
    FROM (
        SELECT department_id FROM departments
            MINUS
        SELECT department_id FROM employees WHERE upper(job_id) = 'ST_CLERK'
    ) JOIN departments USING (department_id)
;

-- Question 2
-- Same department requests a list of countries that have no departments located in them. Display country ID and the country 
-- name. Use SET operators.
SELECT country_id, country_name
    FROM (
        SELECT country_id FROM countries
            MINUS
        SELECT DISTINCT country_id FROM locations
    ) JOIN countries USING (country_id)
;

-- Question 3
-- The Vice President needs very quickly a list of departments 10, 50, 20 in that order. job and department ID are to be 
-- displayed.
SELECT job_id, department_id
    FROM (
        SELECT department_id FROM departments WHERE department_id IN (10, 50, 20) 
            INTERSECT    
        SELECT department_id FROM employees
    ) JOIN (
        SELECT job_id, department_id FROM employees 
            UNION 
        SELECT job_id, department_id FROM employees
    ) USING (department_id)
    ORDER BY decode(department_id, 10, 1, 50, 2, 20, 3)
;

-- Question 4
-- Create a statement that lists the employeeIDs and JobIDs of those employees who currently have a job title that is the same 
-- as their job title when they were initially hired by the company (that is, they changed jobs but have now gone back to doing 
-- their original job).
SELECT employee_id, job_id
    FROM (
        SELECT employee_id FROM employees
            MINUS
        SELECT employee_id FROM job_history
    ) JOIN employees USING(employee_id)
    ORDER BY employee_id
;

-- Question 5
-- The HR department needs a SINGLE report with the following specifications:
-- a. Last name and department ID of all employees regardless of whether they belong to a department or not.
-- b. Department ID and department name of all departments regardless of whether they have employees in them or not.
-- Write a compound query to accomplish this.
SELECT last_name, department_id, department_name
    FROM (
        SELECT department_id FROM employees
            UNION
        SELECT department_id FROM departments
    ) 
    FULL JOIN employees USING (department_id)
    FULL JOIN departments USING (department_id)
;










