
SAVEPOINT pointName;
-- statments

ROLLBACK to pointName;

SHOW RecycleBin;
FLASHBACK TABLE tbName TO BEFORE DROP;

PURGE RecycleBin;
SHOW RecycleBin;


-- DATA DICTIONARY 
SELECT * FROM ALL_OBJECTS;
SELECT * FROM ALL_OBJECTS WHERE upper(owner) NOT IN ('PUBLIC', 'SYS');
SELECT * FROM ALL_OBJECTS WHERE upper(owner) = upper('dbs301_191a37');

-- Views cannot be restored from RecycleBin because they don't keep data, they're just text
-- Only Tables can be restored from RecycleBin 

GRANT SELECT, INSERT ON tableName TO userName;
REVOKE INSERT ON tableName FROM userName;

ALTER TABLE tableName MODIFY (fieldName varchar2(45));
ALTER TABLE tableName ADD status number;
ALTER TABLE tableName DROP COLUMN status;
