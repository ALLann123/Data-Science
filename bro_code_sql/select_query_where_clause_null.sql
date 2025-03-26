-- Selectt statements gets us the data from the column

SELECT *
FROM employees;

#now lets get the first name and last name of employees
SELECT first_name, last_name
FROM employees;

#filter using the WHERE to find specific data 
SELECT *
FROM employees
WHERE employee_id=3
;

#we can filter by name e.g firstname=allan
SELECT *
FROM  employees
WHERE first_name="allan"
;

#filter by employees with hourly rate greater than 20
SELECT *
FROM employees
WHERE hourly_wage >= 20
;

#now filter below 20
SELECT *
FROM employees
WHERE hourly_wage <= 20
;

#we can filter by date
SELECT *
FROM employees
WHERE hire_date > "2025-02-20"
;

# get employee ID  not equal (!=)
SELECT *
FROM employees
WHERE employee_id != 1
;

#now lets select null, i.e employee without value or missing them
SELECT *
FROM employees
WHERE hire_date IS NULL
;

# not null values
SELECT *
FROM employees
WHERE hire_date IS NOT NULL
;
