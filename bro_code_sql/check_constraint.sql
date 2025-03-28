-- Check
#used to limit what values can be added into a column

#Lets create a database
CREATE DATABASE techfirm;

#select the created database
use techfirm;
#lets now create a table as the company is located inthe US the hourly wage should not be less than $12 

CREATE TABLE employees(
	emp_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_wage DECIMAL(5,2),
    CONSTRAINT chk_hourly_wage CHECK(hourly_wage >= 12.00)
);

SELECT *
FROM employees;
INSERT INTO employees
VALUES	(1,"Allan","Karis", 15.57),
		(2, "John", "Kimotho", 13.45),
		(3, "Alvin", "Kamau", 10.00)
;

#alter an existing table with a check function
ALTER TABLE employees
ADD CONSTRAINT chk_hourly_wage_revised CHECK(hourly_wage >= 10.00);

