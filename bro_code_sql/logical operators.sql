-- Logical operators
#these are key words that are used to combine more than one condition

ALTER TABLE employees
ADD COLUMN job VARCHAR(50) AFTER hourly_wage;

select * from employees;

UPDATE employees
SET job="Customer Service"
WHERE employee_id = 5
;

#example
SELECT *
FROM employees
WHERE speciality="Engineer" OR job="Manager"
;

SELECT *
FROM employees
WHERE NOT job="Manager" 
;