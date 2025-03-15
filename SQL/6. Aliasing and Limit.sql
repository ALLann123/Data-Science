-- Limit and Aliasing

SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 3
;

SELECT *
FROM parks_and_recreation.employee_salary
ORDER BY salary DESC
LIMIT 1
;

-- Aliasing ---
SELECT gender, AVG(age) avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40
;