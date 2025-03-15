#WHERE-Used to filter out columns

SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie'
;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'male'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date < '1985-01-01'
;

#comparison operators are =,>,<,<=,>=


-- AND OR NOT -- LOGICAL OPERATORS
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;

-- LIKE--
-- % and _ we can use % to specify whatever character comes after

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___%'
;

