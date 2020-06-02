-- ************************
-- DBS301 Midterm Test # 2
-- Winter 2019
-- <your name>
-- <student id>
-- <date>
-- ************************
--
-- This is a closed book test, no aids are permitted.
-- Top marks can only be achieved if all code conforms with the style guide used in class.  
--
-- Ensure consideration for case sensitivity, internationalization,
-- and time zones in all answer.
--
-- ***********************************************************************
-- Q1 
DROP TABLE t2tmpUSdepartments; -- this is here for convenience only, please leave it here 
-- Q1 SOLUTION


    
-- Q2 



-- Q3


    
-- Q4
    
		

-- Q5 

		-- Execute the following creation script prior to attempting this question
		-- beginning of script
		DROP TABLE t2BankAccounts;
		CREATE TABLE t2BankAccounts (
			account_number INT PRIMARY KEY,
			client_id INT NOT NULL,
			account_type varchar2(1) CHECK (account_type IN ('S', 'C')) NOT NULL,
			account_balance decimal(10,2) DEFAULT(0.0) NOT NULL CHECK (account_balance >= 0.0));
		INSERT INTO t2BankAccounts VALUES (1234, 12, 'S', 4567.89);
		INSERT INTO t2BankAccounts VALUES (4321, 12, 'C', 124.12);
		-- end of script --
-- Q5 solution below



-- Q6

    
   
   
-- Answer Q7 on the back of the test paper
-- end of file --
    