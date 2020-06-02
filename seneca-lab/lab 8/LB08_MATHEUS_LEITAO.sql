-- ***********************
-- Name: Matheus Leitao
-- ID: 148 300 171
-- Date: 03/15/2019
-- Purpose: Lab 8 DBS301
-- ***********************

-- Question 1
-- Display the names of the employees whose salary is the same as the lowest salaried employee in any department.
SELECT first_name||' '||last_name AS "Employee Name"
    FROM employees
    WHERE salary IN (
        SELECT min(e.salary)
            FROM employees e JOIN departments d USING (department_id)
            GROUP BY d.department_name
    )
;

-- Question 2
-- Display the names of the employee(s) whose salary is the lowest in each department.
SELECT e.first_name||' '||e.last_name AS "Employee Name"
    FROM employees e JOIN (
        SELECT min(e.salary) AS salary, d.department_id
            FROM employees e JOIN departments d ON e.department_id = d.department_id
            GROUP BY d.department_id
        ) dpsals 
        ON e.salary = dpsals.salary 
        AND e.department_id = dpsals.department_id
;

-- Question 3
-- Give each of the employees in question 2 a $120 bonus.
SELECT  e.first_name||' '||e.last_name AS "Employee Name",
        e.salary + 120 AS "Salary Plus Bonus"
    FROM employees e JOIN (
        SELECT min(e.salary) AS salary, d.department_id
            FROM employees e JOIN departments d ON e.department_id = d.department_id
            GROUP BY d.department_id
        ) dpsals 
        ON e.salary = dpsals.salary 
        AND e.department_id = dpsals.department_id
;

-- Question 4
-- Create a view named vwAllEmps that consists of all employees includes: 
-- employee_id, last_name, salary, department_id, department_name, city and country (if applicable)
CREATE VIEW vwAllEmps AS (
    SELECT employee_id, last_name, salary, department_id, department_name, city, country_name
        FROM employees
            JOIN departments USING (department_id)
            JOIN locations USING (location_id)
            JOIN countries USING (country_id)
);

-- Question 5
-- Use the vwAllEmps view to:
-- a.	Display the employee_id, last_name, salary and city for all employees
SELECT employee_id, last_name, salary, city 
    FROM vwAllEmps;

-- b.	Display the total salary of all employees by city
SELECT sum(salary), city 
    FROM vwAllEmps
    GROUP BY city;

-- c.	Increase the salary of the lowest paid employee(s) in each department by 120
SELECT min(salary) + 120 AS salary, department_id 
    FROM vwAllEmps
    GROUP BY department_id;

-- d.	What happens if you try to insert an employee by providing values for all columns in this view?
-- INSERT INTO vwAllEmps VALUES(208, 'Zanardi', 5800, 80, 'Sales', 'Toronto', 'Canada');
-- Answer:
-- An SQL ORA-01776 Error which says that we cannot change more than on table through a join view
-- A Insert happens only to one table, not for more than one. Also, there are some fields missing in each table that we tried
-- to insert using the view. 

-- e.	Delete the employee named Vargas. Did it work? Show proof.
DELETE FROM vwAllEmps WHERE last_name = 'Vargas'; -- Yes, it worked
SELECT * FROM vwAllEmps WHERE last_name = 'Vargas'; -- Empty result

-- Question 6
-- Create a view named vwAllDepts that consists of all departments and includes: 
-- department_id, department_name, city and country (if applicable)
CREATE VIEW vwAllDepts AS (
    SELECT department_id, department_name, city, country_name
        FROM departments
            JOIN locations USING (location_id)
            JOIN countries USING (country_id)
);

-- Question 7
-- Use the vwAllDepts view to:
-- a.	For all departments display the department_id, name and city
SELECT department_id, department_name, city 
    FROM vwAllDepts;

-- b.	For each city that has departments located in it display the number of departments by city
SELECT count(department_id), city 
    FROM vwAllDepts
    GROUP BY city;
    
-- Question 8
-- Create a view called vwAllDeptSumm that consists of all departments and includes for each department: 
-- department_id, department_name, number of employees, number of salaried employees, total salary of all employees. 
-- Number of Salaried must be different from number of employees. The difference is some get commission.
CREATE VIEW vwAllDeptSumm AS (
    SELECT  department_id, department_name, 
            count(employee_id) AS number_employees,
            count(commission_pct) AS salaried_employees,
            sum(salary) AS total_salary
        FROM departments 
            JOIN employees USING (department_id)
        GROUP BY department_id, department_name
);

-- Question 9
-- Use the vwAllDeptSumm view to display department name and number of employees for departments that have more than the 
-- average number of employees 
SELECT department_name, number_employees 
    FROM vwAllDeptSumm
    WHERE number_employees > (
        SELECT round(avg(number_employees)) FROM vwAllDeptSumm
    )
;

-- Question 10
-- A) Use the GRANT statement to allow another student (Neptune account) to retrieve data for your employees table and to allow 
-- them to retrieve, insert and update data in your departments table. Show proof
GRANT SELECT ON employees TO DBS301_191A36;
GRANT SELECT, INSERT, UPDATE ON departments TO DBS301_191A36;

SELECT * FROM USER_TAB_PRIVS; --  to check those permissions

-- B) Use the REVOKE statement to remove permission for that student to insert and update data in your departments table
REVOKE INSERT, UPDATE ON departments FROM DBS301_191A36;

    
    



    
    