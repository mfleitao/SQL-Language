-- ***********************
-- Name: Matheus Leitao
-- ID: 148 300 171
-- Date: 02/09/2019
-- Purpose: Lab 5 DBS301
-- ***********************

-- Question 1
-- Display the department name, city, street address and postal code for departments sorted by city and department name.
SELECT  dep.department_name, 
        loc.city, 
        loc.street_address, 
        loc.postal_code
    FROM departments dep, locations loc
    WHERE dep.location_id = loc.location_id
    ORDER BY loc.city, dep.department_name;

-- Question 2
-- Display full name of employees as a single field using format of Last, First, their hire date, salary, department name and 
-- city, but only for departments with names starting with an A or S sorted by department name and employee name
SELECT  emp.last_name ||', '|| emp.first_name AS "Full Name",
        emp.hire_date,
        emp.salary,
        dep.department_name,
        loc.city
    FROM employees emp, departments dep, locations loc
    WHERE emp.department_id = dep.department_id
    AND dep.location_id = loc.location_id
    AND upper(substr(dep.department_name, 0, 1)) IN('A','S')
    ORDER BY dep.department_name, "Full Name";

-- Question 3
-- Display the full name of the manager of each department in states/provinces of Ontario, New Jersey and Washington along with 
-- the department name, city, postal code and province name. Sort the output by city and then by department name.
SELECT  emp.first_name ||' '|| emp.last_name AS "Manager Name",
        dep.department_name AS "Department Name",
        loc.city AS "City",
        loc.postal_code AS "Postal Code",
        loc.state_province AS "Province Name"
    FROM employees emp, departments dep, locations loc
    WHERE emp.employee_id = dep.manager_id
    AND dep.location_id = loc.location_id
    AND upper(loc.state_province) IN('ONTARIO', 'NEW JERSEY', 'WASHINGTON')
    ORDER BY loc.city, dep.department_name;

-- Question 4
-- Display employee’s last name and employee number along with their manager’s last name and manager number. Label the columns 
-- Employee, Emp#, Manager, and Mgr# respectively.
SELECT  emp.last_name AS "Employee", 
        emp.employee_id AS "Emp#", 
        mgr.last_name AS "Manager", 
        mgr.employee_id AS "Mgr#"
    FROM employees emp, employees mgr
    WHERE emp.manager_id = mgr.employee_id;
   
-- Question 5
-- Display the department name, city, street address, postal code and country name for all Departments. Use the JOIN and USING 
-- form of syntax.  Sort the output by department name descending
SELECT  dep.department_name, 
        loc.city, 
        loc.street_address, 
        loc.postal_code, 
        cnt.country_name
    FROM departments dep INNER JOIN locations loc
        USING (location_id)
    INNER JOIN countries cnt
        USING (country_id)
    ORDER BY dep.department_name DESC;

-- Question 6
-- Display full name of the employees, their hire date and salary together with their department name, but only for departments 
-- which names start with A or S.
-- a. Full name should be formatted:  First / Last. 
-- b. Use the JOIN and ON form of syntax.
-- c. Sort the output by department name and then by last name.
SELECT  emp.first_name ||' / '|| emp.last_name AS "Full Name",
        emp.hire_date, 
        emp.salary, 
        dep.department_name
    FROM employees emp INNER JOIN departments dep
        ON emp.department_id = dep.department_id
    WHERE upper(substr(dep.department_name, 0, 1)) IN('A','S')
    ORDER BY dep.department_name, emp.last_name; 
    
-- Question 7
-- Display full name of the manager of each department in provinces Ontario, New Jersey and Washington plus department name, 
-- city, postal code and province name. 
-- a. Full name should be formatted: Last, First.  
-- b. Use the JOIN and ON form of syntax.
-- c. Sort the output by city and then by department name. 
SELECT  emp.first_name ||', '|| emp.last_name AS "Manager",
        dep.department_name, 
        loc.city, 
        loc.postal_code, 
        loc.state_province 
    FROM employees emp INNER JOIN departments dep
        ON emp.department_id = dep.department_id
    INNER JOIN locations loc 
        ON dep.location_id = loc.location_id
    WHERE upper(loc.state_province) IN('ONTARIO', 'NEW JERSEY', 'WASHINGTON')
    ORDER BY loc.city, dep.department_name;

-- Question 8
-- Display the department name and Highest, Lowest and Average pay per each department. Name these results High, Low and Avg.
-- a. Use JOIN and ON form of the syntax.
-- b. Sort the output so that department with highest average salary are shown first.
SELECT  dep.department_name,
        to_char(max(emp.salary), '$999,999.00') AS "High",
        to_char(min(emp.salary), '$999,999.00') AS "Low",
        to_char(avg(emp.salary), '$999,999.00') AS "Avg"
    FROM departments dep INNER JOIN employees emp
        ON dep.department_id = emp.department_id
    GROUP BY dep.department_name
    ORDER BY "High" DESC;
    
-- Question 9
-- Display the employee last name and employee number along with their manager’s last name and manager number. Label the columns
-- Employee, 
-- a. Emp#, Manager, and Mgr#, respectively. 
-- b. Include also employees who do NOT have a manager and also employees who do NOT supervise anyone (or you could say managers 
-- without employees to supervise).
SELECT  emp.last_name AS "Employee", 
        emp.employee_id AS "Emp#", 
        mgr.last_name AS "Manager", 
        mgr.employee_id AS "Mgr#"
    FROM employees emp FULL JOIN employees mgr
        ON emp.manager_id = mgr.employee_id;

 






 