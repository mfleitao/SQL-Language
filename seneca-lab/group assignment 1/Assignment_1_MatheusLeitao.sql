-- ***********************
-- Name: Matheus Leitao
-- ID: 148 300 171
-- Date: 02/15/2019
-- Purpose: Assignment #1 DBS301
-- ***********************

-- Question 1
-- Display the employee number, full employee name, job and hire date of all employees hired in May or November of any year, 
-- with the most recently hired employees displayed first. 
-- .	Also, exclude people hired in 2014 and 2015
-- .	Full name should be in the form Lastname,  Firstname  with an alias called Full Name.
-- .	Hire date should point to the last day in May or November of that year (NOT to the exact day) and be in the form of 
--      [May 31<st,nd,rd,th> of 2016] with the heading Start Date. Do NOT use LIKE operator. 
-- .	<st,nd,rd,th> means days that end in a 1, should have “st”, days that end in a 2 should have “nd”, days that end in a 3 
--      should have “rd” and all others should have “th”
-- .	You should display ONE row per output line by limiting the width of the Full Name to 25 characters. The output lines 
--      should look like this line
--      174	Abel, Ellen	SA_REP	[May 31st of 2016]
SELECT  employee_id AS "Employee Number", 
        last_name||', '||first_name AS "Full Name", 
        job_id AS "Job Title", 
        to_char(hire_date, '"["fmMonth ddth "of" YYYY"]"') AS "Hire Date"
    FROM employees
    WHERE to_char(hire_date, 'MM') = '05' OR to_char(hire_date, 'MM') = '11'
    AND extract(year FROM hire_date) NOT BETWEEN 2014 AND 2015
    ORDER BY hire_date DESC;


-- Question 2
-- List the employee number, full name, job and the modified salary for all employees whose monthly earning 
-- (without this increase) is outside the range $5,000 – $10,000 and who are employed as Vice Presidents or Managers 
-- (President is not counted here).  
-- .	You should use Wild Card characters for this. 
-- .	VP’s will get 25% and managers 18% salary increase.  
-- .	Sort the output by the top salaries (before this increase) firstly.
-- .	Heading will be like Employees with increased Pay
-- .	The output lines should look like this sample line:
--      Emp# 124 named Kevin Mourgos who is ST_MAN will have a new salary of $6960
SELECT ('Emp# '||employee_id||' named '||first_name||' '||last_name||' who is '||job_id||' will have a new salary of '||
        (CASE
            WHEN upper(job_id) LIKE '%VP' 
                THEN to_char(salary + (salary * 0.25), 'fm$999999')
            WHEN upper(job_id) LIKE '%MGR' OR upper(job_id) LIKE '%MAN'
                THEN to_char(salary + (salary * 0.18), 'fm$999999')
        END)) AS "Modified Salary"
    FROM employees
    WHERE upper(job_id) LIKE '%VP' OR upper(job_id) LIKE '%MGR' OR upper(job_id) LIKE '%MAN'
    AND salary NOT BETWEEN 5000 AND 10000
    ORDER BY salary DESC;


-- Question 3
-- Display the employee last name, salary, job title and manager# of all employees 
-- not earning a commission OR if they work in the SALES department, 
-- but only if their total monthly salary with $1000 included bonus and commission (if earned) is  
-- greater than $15,000.  
-- .	Let’s assume that all employees receive this bonus.
-- .	If an employee does not have a manager, then display the word NONE instead
-- .	This column should have an alias Manager#.
-- .	Display the Total annual salary as well in the form of $135,600.00 with the 
-- .	heading Total Income. Sort the result so that best paid employees are shown first.
-- .	The output lines should look like this sample line:
--      De Haan	17000	AD_VP	100	$216,000.00
SELECT  last_name, salary, job_id, 
        nvl(to_char(manager_id), 'NONE') AS "Manager#", 
        to_char((salary + 1000) * 12, '$999,999.99') AS "Total Income"
    FROM employees
    WHERE commission_pct IS NULL OR department_id = 80
    AND ((salary + 1000) * commission_pct) > 15000
    ORDER BY "Total Income" DESC; 
    
    
-- Question 4
-- Display Department_id, Job_id and the Lowest salary for this combination under the alias Lowest Dept/Job Pay, 
-- but only if that Lowest Pay falls in the range $6000 - $18000. 
-- Exclude people who work as some kind of Representative job from this query and departments IT and SALES as well.
-- .	Sort the output according to the Department_id and then by Job_id.
-- .	You MUST NOT use the Subquery method.
SELECT department_id, job_id, min(salary) AS "Lowest Dept/Job Pay"
    FROM employees
    WHERE department_id NOT IN (60, 80) -- NOT "IT" AND "SALES" DEPT
    AND upper(job_id) NOT LIKE '%REP'
    GROUP BY department_id, job_id
    HAVING min(salary) BETWEEN 6000 AND 18000
    ORDER BY department_id, job_id;


-- Question 5
-- Display last_name, salary and job for all employees who earn more than all lowest paid employees per department outside the 
-- US locations.
-- .	Exclude President and Vice Presidents from this query.
-- .	Sort the output by job title ascending.
-- .	You need to use a Subquery and Joining.
SELECT last_name, salary, job_id
    FROM employees
    WHERE salary > ANY (
        SELECT salary
            FROM employees 
                JOIN departments USING (department_id)
                JOIN locations USING (location_id)
            WHERE (salary, department_id) IN (
                SELECT min(salary), department_id FROM employees GROUP BY department_id
            )
            AND upper(country_id) <> 'US'
            AND upper(job_id) NOT LIKE '%PRES' 
            AND upper(job_id) NOT LIKE '%VP'
    )
    ORDER BY job_id;


-- Question 6
-- Who are the employees (show last_name, salary and job) who work either in IT or MARKETING department and earn more than the 
-- worst paid person in the ACCOUNTING department. 
-- .	Sort the output by the last name alphabetically.
-- .	You need to use ONLY the Subquery method (NO joins allowed).
SELECT last_name, salary, job_id
    FROM employees
    WHERE department_id IN (20, 60)
    AND salary > (
        SELECT min(salary) FROM employees WHERE department_id = 110
    );


-- Question 7
-- Display alphabetically the full name, job, salary (formatted as a currency amount incl. thousand separator, but no decimals) 
-- and department number for each employee who earns less than the best paid unionized employee (i.e. not the president nor any 
-- manager nor any VP), and who work in either SALES or MARKETING department.  
-- .	Full name should be displayed as Firstname  Lastname and should have the heading Employee. 
-- .	Salary should be left-padded with the = symbol till the width of 15 characters. It should have an alias Salary.
-- .	You should display ONE row per output line by limiting the width of the Employee to 25 characters.
-- .	The output lines should look like this sample line:
--      Jonathon Taylor	SA_REP	=======  $8,600	80
SELECT  substr(first_name||' '||last_name, 0, 25) AS "Employee",
        job_id, 
        lpad(to_char(substr(salary, 0, 15), '$999,999'), 15, '=') AS "Salary",
        department_id
    FROM employees
    WHERE salary < ANY (
        SELECT max(salary) 
            FROM employees WHERE department_id IN (20, 80)
            AND upper(job_id) NOT LIKE '%MGR'
            AND upper(job_id) NOT LIKE '%PRES' 
            AND upper(job_id) NOT LIKE '%VP'
    ); 


-- Question 8
-- Display department name, city and number of different jobs in each department. If city is null, you should print 
-- Not Assigned Yet.
-- .	This column should have alias City.
-- .	Column that shows # of different jobs in a department should have the heading # of Jobs
-- .	You should display ONE row per output line by limiting the width of the City to 25 characters.
-- .	You need to show complete situation from the EMPLOYEE point of view, meaning include also employees who work for 
--      NO department (but do NOT display empty departments) and from the CITY point of view meaning you need to display all 
--      cities without departments as well.
SELECT  department_name, 
        substr(nvl(city, 'Not Assigned Yet'), 0, 25) AS "City",
        count(job_id) AS "# of Jobs"
    FROM employees
        FULL JOIN departments USING(department_id)
        LEFT JOIN locations USING(location_id)
    GROUP BY department_name, city;









