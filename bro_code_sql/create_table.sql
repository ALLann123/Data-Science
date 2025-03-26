-- lets create a table
#create the database for my startup
CREATE DATABASE triple_A_agency;

#now lets use the database created
USE triple_A_agency;

#now create the table inside it, remember data types e.g INT, DECIMAL, VARCHAR and DATE

CREATE TABLE employees(
	employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
	speciality  VARCHAR(50),
    hourly_wage DECIMAL(5,2),
    hire_date DATE
);

#display our table
SELECT *
FROM triple_a_agency.employees;

#rename table
RENAME TABLE employees TO workers;
#change it back 
RENAME TABLE workers TO employees;

#remove or drop a table
DROP TABLE employees;

#if we need to alter a table to add a new column
ALTER TABLE employees
ADD phone_number VARCHAR(50);

#lets rename phone number to email
ALTER TABLE employees
RENAME COLUMN phone_number TO email;

#change the datatype of the altered column email
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);

#now lets change the positon of email to follow last name
ALTER TABLE employees
MODIFY email VARCHAR(100)
AFTER last_name;



