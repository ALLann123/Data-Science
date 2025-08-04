SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age), MAX(age), MIN(age), count(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary
;

-- Order By
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name
;
#Now lets set it to descending order
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC
;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age DESC
;