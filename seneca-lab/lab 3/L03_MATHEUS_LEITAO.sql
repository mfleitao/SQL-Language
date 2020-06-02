-- ***********************
-- Name: Matheus Leitao
-- ID: 148 300 171
-- Date: 01/24/2019
-- Purpose: Lab 3 DBS301
-- ***********************

-- Question 1
-- Write a query to display the tomorrow’s date in the following format: January 10th of year 2019 
-- the result will depend on the day when you RUN/EXECUTE this query. Label the column “Tomorrow”.
SELECT to_char(sysdate + 1, 'fmMonth ddth "of year" yyyy') AS "Tomorrow" 
    FROM dual;

-- Question 2
-- For each employee in departments 20, 50 and 60 display last name, first name, salary, and salary increased by 4% and 
-- expressed as a whole number.  Label the column “Good Salary”. Also add a column that subtracts the old salary from the new 
-- salary and multiplies by 12. Label the column "Annual Pay Increase".
SELECT  last_name, 
        first_name,
        to_char(salary, '$999,999.99') AS "Salary",
        to_char(salary + (salary * 0.04), '$000,000.00') AS "Good Salary",
        to_char(salary * 12, '$000,000.00') AS "Annual Pay Increase"
    FROM employees
    WHERE department_id IN(20, 50, 60)
    ORDER BY "Good Salary" DESC;

-- Question 3
-- Write a query that displays the employee’s Full Name and Job Title in the following format:
--          DAVIES, CURTIS is ST_CLERK 
-- Only employees whose last name ends with S and first name starts with C or K.  Give this column an appropriate label like 
-- Person and Job.  Sort the result by the employees’ last names.
SELECT  upper(last_name) || ', ' || upper(first_name) || ' is ' || job_id AS "Person and Job"
    FROM employees
    WHERE upper(last_name) LIKE '%S'
    AND upper(first_name) LIKE 'C%' OR upper(first_name) LIKE 'K%'
    ORDER BY last_name;
        
-- Question 4
-- For each employee hired before 2012, display the employee’s last name, hire date and calculate the number of YEARS between 
-- TODAY and the date the employee was hired.
--   a.	Label the column Years worked. 
--   b.	Order your results by the number of years employed.  Round the number of years employed up to the closest whole number.
SELECT  last_name,
        hire_date,
        round(months_between(sysdate, hire_date) / 12) AS "Years worked"
    FROM employees
    WHERE hire_date < to_date('2012', 'YYYY')
    ORDER BY "Years worked";

-- Question 5
-- Create a query that displays the city names, country codes and state province names, but only for those 
-- cities that starts with S and has at least 8 characters in their name. 
-- If city does not have a province name assigned, then put Unknown Province. Be cautious of case sensitivity!
SELECT  city, 
        country_id,
        (CASE 
            WHEN state_province IS NULL
                THEN 'Unknown Province'
            ELSE
                state_province
        END) AS "PROVINCE"
    FROM locations
    WHERE upper(city) LIKE 'S%'
    AND length(city) >= 8;
    
-- Question 6
-- Display each employee’s last name, hire date, and salary review date, 
-- which is the first Thursday after a year of service, but only for those hired after 2017.  
-- a.	Label the column REVIEW DAY. 
-- b.	Format the dates to appear in the format like:
--          THURSDAY, August the Thirty-First of year 2018
-- c.	Sort by review date
SELECT  last_name, 
        to_char(hire_date, 'fmDAY, Month "the" Ddspth "of year" yyyy') AS "Hire Date", 
        to_char(salary, '$999,999.99') AS "Salary", 
        next_day(hire_date + 365, 'Thursday') AS "Review Date"
    FROM employees
    WHERE hire_date > to_date('2017', 'YYYY')
    ORDER BY "Review Date";





