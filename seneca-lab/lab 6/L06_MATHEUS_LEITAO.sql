-- ***********************
-- Name: Matheus Leitao
-- ID: 148 300 171
-- Date: 02/15/2019
-- Purpose: Lab 6 DBS301
-- ***********************

-- Question 1
-- SET AUTOCOMMIT ON (do this each time you log on) so any updates, deletes and inserts are automatically committed before you 
-- exit from Oracle.
SET AUTOCOMMIT ON;

-- Question 2
-- Create an INSERT statement to do this.  Add yourself as an employee with a NULL salary, 0.21 commission_pct, 
-- in department 90, and Manager 100.  You started TODAY.  
INSERT INTO employees 
    VALUES(
        207, 
        'Matheus', 
        'Leitao', 
        'matheusmfl@gmail.com', 
        '437.345.2805', 
        sysdate,
        'IT_PROG',
        NULL,
        0.21,
        100,
        90
    );

-- Question 3
-- Create an Update statement to: Change the salary of the employees with a last name of Matos and Whalen to be 2500
UPDATE employees SET salary = 2500 WHERE last_name IN ('Matos', 'Whalen');

-- Question 4
-- Display the last names of all employees who are in the same department as the employee named Abel
SELECT last_name
    FROM employees 
    WHERE department_id = (
        SELECT department_id FROM employees WHERE last_name = 'Abel'
    );

-- Question 5
-- Display the last name of the lowest paid employee(s)
SELECT last_name
    FROM employees 
    WHERE salary = (
        SELECT min(salary) FROM employees
    );
    
-- Question 6
-- Display the city that the lowest paid employee(s) are located in
SELECT city 
    FROM locations 
    WHERE location_id IN (
        SELECT location_id FROM departments WHERE department_id IN (
            SELECT department_id FROM employees WHERE salary = (
                SELECT min(salary) FROM employees
            )
        )
    );

-- Question 7
-- Display the last name, department_id, and salary of the lowest paid employee(s) in each department.  
-- Sort by Department_ID. (HINT: careful with department 60)
SELECT last_name, department_id, salary 
    FROM employees
    WHERE (department_id, salary) IN (
        SELECT dep.department_id, min(emp.salary) 
            FROM employees emp 
            INNER JOIN departments dep 
                ON emp.department_id = dep.department_id 
            GROUP BY dep.department_id
    )
    ORDER BY department_id;

-- Question 8
-- Display the last name of the lowest paid employee(s) in each city
SELECT last_name, salary, city
    FROM employees 
        INNER JOIN departments USING (department_id)
        INNER JOIN locations USING (location_id)
    WHERE (salary, city) IN (
        SELECT min(salary), city 
            FROM employees 
            INNER JOIN departments USING (department_id) 
            INNER JOIN locations USING (location_id) 
            GROUP BY city
    );
    
-- Question 9
-- Display last name and salary for all employees who earn less than the lowest salary in ANY department.  
-- Sort the output by top salaries first and then by last name.
SELECT last_name, salary
    FROM employees
    WHERE salary < ANY (
        SELECT min(salary) FROM employees GROUP BY department_id
    )
    ORDER BY salary DESC, last_name;

-- Questin 10
-- Display last name, job title and salary for all employees whose salary matches any of the salaries from the IT Department. 
-- Do NOT use Join method.  Sort the output by salary ascending first and then by last_name

SELECT last_name, job_id, salary
    FROM employees
    WHERE salary = ANY (
        SELECT salary FROM employees WHERE department_id = (
            SELECT department_id FROM departments WHERE upper(department_name) = 'IT'
        )
    )
    ORDER BY salary, last_name;












