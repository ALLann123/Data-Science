-- UNIONS

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION ALL
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;
#have the same data

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;

#case identify people who are old, their gender and also find people who are highly paid
SELECT first_name, last_name, 'old man' AS Label
FROM parks_and_recreation.employee_demographics
WHERE age>40 AND gender='male'
UNION
SELECT first_name, last_name, 'old lady' AS Label
FROM parks_and_recreation.employee_demographics
WHERE age>40 AND gender='female'
UNION
SELECT first_name, last_name, 'Highly Paid' AS Remarks
FROM parks_and_recreation.employee_salary
WHERE salary>70000
ORDER BY first_name, last_name
;