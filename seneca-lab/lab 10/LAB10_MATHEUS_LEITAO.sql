-- ***********************
-- Name: Matheus Leitao
-- ID: 148 300 171
-- Date: 03/03/2019
-- Purpose: Lab 10 DBS301
-- ***********************

-- Question 1
-- Create table L10Cities from table LOCATIONS, but only for location numbers less than 2000 (do NOT create this table 
-- from scratch, i.e. create and insert in one statement).
-- .	You will have exactly 10 rows here.
-- .	When you describe L10Cities, the output is shown below:
CREATE TABLE L10Cities AS (
    SELECT * FROM locations WHERE location_id < 2000
);

SELECT * FROM L10Cities;

-- Question 2
-- Create table L10Towns from table LOCATIONS, but only for location numbers less than 1500 
-- (do NOT create this table from scratch). This table will have same structure as table L10Cities. 
-- .	You will have exactly 5 rows here.
CREATE TABLE L10Towns AS (
    SELECT * FROM locations WHERE location_id < 1500
);
SELECT * FROM L10Towns;

-- Question 3
-- Now you will empty your RECYCLE BIN with one powerful command. Then remove your table L10Towns, so that will remain in the 
-- recycle bin. Check that it is really there and what time was removed.  Hint: Show RecycleBin,   Purge,  Flashback
PURGE RecycleBin;
DROP TABLE L10Towns;
SHOW RecycleBin; -- table was removed at 21:39:19

-- Question 4
-- Restore your table L10Towns from recycle bin and describe it. Check what is in your recycle bin now.
FLASHBACK TABLE L10Towns TO BEFORE DROP;

-- Question 5
-- Now remove table L10Towns so that does NOT remain in the recycle bin. Check that is really NOT there and then try to 
-- restore it. Explain what happened?
DROP TABLE L10Towns;
SHOW RecycleBin;

-- Question 6
-- Create simple view called CAN_CITY_VU, based on table L10Cities so that will contain only columns Street_Address, 
-- Postal_Code, City and State_Province for locations only in CANADA. Then display all data from this view.
CREATE VIEW CAN_CITY_VU AS (
    SELECT street_address, postal_code, city, state_province 
    FROM L10Cities
    WHERE upper(country_id) = 'CA'
);

SELECT * FROM CAN_CITY_VU;

-- Question 7
-- Modify your simple view so that will have following aliases instead of original column names: Str_Adr, P_Code, City and Prov 
-- and also will include cities from ITALY as well. Then display all data from this view. 
CREATE OR REPLACE VIEW CAN_CITY_VU AS (
    SELECT street_address AS Str_Adr, postal_code AS P_Code, city, state_province As Prov 
    FROM L10Cities
    WHERE upper(country_id) IN ('CA', 'IT')
);

SELECT * FROM CAN_CITY_VU;

-- Question 8
-- Create complex view called vwCity_DName_VU, based on tables LOCATIONS and DEPARTMENTS, so that will contain only columns 
-- Department_Name, City and State_Province for locations in ITALY or CANADA. Include situations even when city does NOT have 
-- department established yet. Then display all data from this view.
CREATE VIEW vwCity_DName_VU AS (
    SELECT d.department_name, l.city, l.state_province 
    FROM departments d RIGHT JOIN locations l USING(location_id)
    WHERE upper(l.country_id) IN ('IT','CA')
);

SELECT * FROM vwCity_DName_VU;

-- Question 9
-- Modify your complex view so that will have following aliases instead of original column names: DName, City and Prov and also 
-- will include all cities outside United States 
-- Include situations even when city does NOT have department established yet. Then display all data from this view.
CREATE OR REPLACE VIEW vwCity_DName_VU AS (
    SELECT d.department_name AS DName, l.city, l.state_province AS Prov 
    FROM departments d RIGHT JOIN locations l USING(location_id)
    WHERE upper(l.country_id) <> 'US'
);

SELECT * FROM vwCity_DName_VU;

-- Question 10
-- Check in the Data Dictionary what Views (their names and definitions) are created so far in your account. Then drop your 
-- vwCity_DName_VU and check Data Dictionary again. What is different?
SELECT * FROM all_objects 
    WHERE object_type = 'VIEW' 
    AND owner = upper('dbs301_191a37');

DROP VIEW vwCity_DName_VU;
-- After dropping the View it doesn't appear anymore at the results of "all_objects" select

