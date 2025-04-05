-- Indexes
#Data structure used to find values within a specific column more quickly
#applying an index to column selecting takes less time but updating takes more time.

SELECT * FROM employees;

#display indexes for the table
SHOW INDEXES FROM employees;

#lets apply the index to our table
CREATE INDEX last_name_idx 
ON employees(last_name);

#lets search an employee by last name
select * from employees
WHERE last_name="mbugua"
;

#create a multi column index to speed up searches. The order is important from the table
CREATE INDEX last_name_first_name_idx
ON employees(last_name, first_name);

#to drop an index
ALTER TABLE employees
DROP INDEX last_name_idx;

select * from employees
WHERE last_name="Kariuki" AND first_name="Allan";