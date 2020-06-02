SELECT * 
    FROM countries 
    WHERE upper(country_name) LIKE 'C%';

-- using variable 'EnterLetter'
SELECT * 
    FROM countries 
    WHERE upper(country_name) LIKE upper('&EnterLetter%');

SELECT  country_name, 
        length(country_name) AS "Name Length"
    FROM countries
    ORDER BY "Name Length" DESC;
    
SELECT  country_name, 
        replace(country_name, 'a', 'o') AS "The New World Order"
    FROM countries
    ORDER BY country_name;
    
SELECT  last_name, 
        first_name,
        salary AS "Old Salary",
        salary + 200 AS "New Salary"
    FROM employees;
    
SELECT  last_name, 
        first_name,
        salary AS "Old Salary",
        salary * 1.2 AS "New Salary"
    FROM employees;

SELECT sysdate - 10 
    FROM dual;

SELECT * 
    FROM employees
    WHERE hire_date BETWEEN to_date('01011998', 'ddmmyyyy') AND to_date('01011999', 'ddmmyyyy');

SELECT * 
    FROM employees
    WHERE extract(year FROM hire_date) = 2015;
    
SELECT next_day(sysdate, 'Saturday') AS "Next Saturday"
    FROM dual;
    
SELECT next_day(sysdate + (2 * 7), 'Quinta-feira') AS "A Thursday"
    FROM dual;
    
SELECT next_day(sysdate + 365, 'Quinta-feira') AS "A Thursday"
    FROM dual;

SELECT to_char(next_day(sysdate + ((&NumWeeks - 1) * 7), 'Thursday'), 'dd-mm-yyyy') AS "A Thursday"
    FROM dual;
    
SELECT to_char(sysdate, 'mm dd, yyyy') 
    FROM dual;

SELECT to_char(sysdate, 'fmMonth" the "dd" of "yyyy')  
    FROM dual;

SELECT to_char(sysdate + 120, 'fmMonth" the "dd" of "yyyy') 
    FROM dual;

SELECT to_char(sysdate, 'fmMonth" the "Ddsp" of "yyyy') 
    FROM dual;


