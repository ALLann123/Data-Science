-- Stored Procedures

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;
# we want to save this complex code within a stored procedure
#create the stored procedure
CREATE PROCEDURE large_salaries()
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;

# now lets call the stored procedure above
CALL large_salaries();

# procedures to execute multiple functions
DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
    FROM employee_salary
    WHERE salary >= 50000;
    SELECT *
    FROM employee_salary
    WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries2();
    
    
-- Parameters are variables passed as input in stored procedures
DELIMITER $$
CREATE PROCEDURE large_salaries3(emp_id INT)
BEGIN
	SELECT salary
    FROM parks_and_recreation.employee_salary
    WHERE employee_id=emp_id;
END $$
DELIMITER ;

#now run the procedure passing in the variable
CALL large_salaries3(1)


