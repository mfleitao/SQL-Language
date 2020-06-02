-- ***********************
-- Name: Matheus Leitao
-- ID: 148 300 171
-- Date: 03/22/2019
-- Purpose: Lab 9 DBS301
-- ***********************

-- Question 1
-- Create table L09SalesRep and load it with data from table EMPLOYEES table. Use only the equivalent columns from EMPLOYEE as 
-- shown below and only for people in department 80.
CREATE TABLE L09SalesRep AS (
    SELECT employee_id RepId, first_name FName, last_name LName, phone_number Phone#, Salary, commission_pct Commission  
        FROM employees 
        WHERE department_id = 80
);


-- Question 2
-- Create L09Cust table
CREATE TABLE L09Cust (
   CUST#	  	NUMBER(6),
   CUSTNAME 	VARCHAR2(30),
   CITY 		VARCHAR2(20),
   RATING		CHAR(1),
   COMMENTS	    VARCHAR2(200),
   SALESREP#	NUMBER(7) 
);

INSERT INTO L09Cust (CUST#, CUSTNAME, CITY, RATING, SALESREP#) VALUES(501, 'ABC LTD.', 'Montreal', 'C', 201);
INSERT INTO L09Cust (CUST#, CUSTNAME, CITY, RATING, SALESREP#) VALUES(502, 'Black Giant', 'Ottawa', 'B', 202);
INSERT INTO L09Cust (CUST#, CUSTNAME, CITY, RATING, SALESREP#) VALUES(503, 'Mother Goose', 'London', 'B', 202);
INSERT INTO L09Cust (CUST#, CUSTNAME, CITY, RATING, SALESREP#) VALUES(701, 'BLUE SKY LTD', 'Vancouver', 'B', 102);
INSERT INTO L09Cust (CUST#, CUSTNAME, CITY, RATING, SALESREP#) VALUES(702, 'MIKE and SAM Inc.', 'Kingston', 'A', 107);
INSERT INTO L09Cust (CUST#, CUSTNAME, CITY, RATING, SALESREP#) VALUES(703, 'RED PLANET', 'Mississauga', 'C', 107);
INSERT INTO L09Cust (CUST#, CUSTNAME, CITY, RATING, SALESREP#) VALUES(717, 'BLUE SKY LTD', 'Regina', 'D', 102);


-- Question 3
-- Create table L09GoodCust by using following columns but only if their rating is A or B. 
CREATE TABLE L09GoodCust AS (
    SELECT cust# CustID, custname Name, city Location, salesrep# RepId
        FROM L09Cust 
        WHERE rating IN ('A', 'B')    
);
SELECT * FROM L09GoodCust;

-- Question 4
-- Now add new column to table L09SalesRep called JobCode that will be of variable character type with max length of 12. 
-- Do a DESCRIBE L09SalesRep to ensure it executed
ALTER TABLE L09SalesRep ADD JobCode varchar2(12);
DESCRIBE L09SalesRep;

-- Question 5
-- eclare column Salary in table L09SalesRep as mandatory one and Column Location in table L09GoodCust as optional one. 
-- You can see location is already optional.
ALTER TABLE L09SalesRep MODIFY (salary NOT NULL);
DESCRIBE L09SalesRep;

ALTER TABLE L09GoodCust MODIFY (location);
DESCRIBE L09GoodCust;

ALTER TABLE L09SalesRep MODIFY (fname varchar2(37));
DESCRIBE L09SalesRep;

-- Question 6
-- Now get rid of the column JobCode in table L09SalesRep in a way that will not affect daily performance. 
ALTER TABLE L09SalesRep DROP COLUMN jobcode;

-- Question 7
-- Declare PK constraints in both new tables ? RepId and CustId
ALTER TABLE L09SalesRep ADD CONSTRAINT SalesRep_PK PRIMARY KEY (RepId);
ALTER TABLE L09GoodCust ADD CONSTRAINT GoodCust_PK PRIMARY KEY (CustId);

-- Questin 8 
-- Declare UK constraints in both new tables ? Phone# and Name
ALTER TABLE L09SalesRep ADD CONSTRAINT Phone_UK UNIQUE (phone#);
ALTER TABLE L09GoodCust ADD CONSTRAINT Name_UK UNIQUE (name);

-- Question 9
-- Restrict amount of Salary column to be in the range [6000, 12000] and Commission to be not more than 50%.
ALTER TABLE L09SalesRep ADD CONSTRAINT Salary_CK CHECK (salary >= 6000 AND salary <= 12000);
ALTER TABLE L09SalesRep ADD CONSTRAINT Commission_CK CHECK (commission <= 0.50);

-- Question 10
-- Ensure that only valid RepId numbers from table L09SalesRep may be entered in the table L09GoodCust. 
-- Why this statement has failed?
INSERT INTO L09GoodCust SELECT RepId FROM L09SalesRep;
-- This failed because there's no enough values on table L09SalesRep (Error: ORA-00947)

-- Question 11
-- Firstly write down the values for RepId column in table L09GoodCust and then make all these values blank. Now redo the 
-- question 10. Was it successful? 
--
-- It got the same error as question 10

-- Question 12
-- Disable this FK constraint now and enter old values for RepId in table L09GoodCust and save them. Then try to enable your 
-- FK constraint. What happened? 
DESCRIBE L09GoodCust;

-- Question 13
-- Get rid of this FK constraint. Then modify your CK constraint from question 9 to allow Salary amounts from 5000 to 15000.
ALTER TABLE L09SalesRep DROP CONSTRAINT Salary_CK;
ALTER TABLE L09SalesRep ADD CONSTRAINT Salary_CK CHECK (salary >= 5000 AND salary <= 15000);
    
-- Question 14
-- Describe both new tables L09SalesRep and L09GoodCust and then show all constraints for these two tables by running the 
-- following query:
SELECT constraint_name, constraint_type, search_condition, table_name
    FROM user_constraints
    WHERE upper(table_name) IN (upper('L09SalesRep'), upper('L09GoodCust'))
    ORDER BY table_name;








