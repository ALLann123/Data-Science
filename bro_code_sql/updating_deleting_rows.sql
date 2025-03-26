-- Updating missing data in a column

#check our table
SELECT * FROM employees;

# now update Yohana hourly wage to 19.00

UPDATE employees
SET hourly_wage=19.00
WHERE employee_id=6
;

#update multiple columns
UPDATE employees
SET hourly_wage=19.00,
	hire_date="2025-04-02",
    speciality="marketing",
	email="yohan@agency.co.ke"
WHERE employee_id=6
;

# lets set a value to null
UPDATE employees
SET hourly_wage=null
WHERE employee_id=2
;

#delete row from the table
DELETE FROM employees
WHERE employee_id = 5
;

# this deletes all the table rows
DELETE FROM employees;
