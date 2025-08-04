-- Views 
#virtual tables, not real.they have fields from one or more real tables.

SELECT * FROM employees;

#lets create a view
CREATE VIEW employee_attendance AS
SELECT first_name, last_name
FROM employees;

SELECT *
FROM employee_attendance;

#to delete
DROP VIEW employee_attendance;

CREATE VIEW employee_email AS
SELECT email
FROM employees;

select * from employee_email;

UPDATE employees
SET email = "kamaayoh@gmail.com"
WHERE employee_id = 6;

DELETE FROM employees
WHERE employee_id IS NULL AND email = "kamaayoh@gmail.com"
;

select * from employee_email;