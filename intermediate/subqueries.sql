-- Subqueries

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE employee_id IN (
		SELECT employee_id
        FROM parks_and_recreation.employee_salary
        WHERE dept_id = 1)
;

SELECT first_name, salary, 
(SELECT AVG(salary)
FROM parks_and_recreation.employee_salary
) AS avg_salary
FROM parks_and_recreation.employee_salary;

SELECT gender, AVG(age), MAX(age),MIN(age), count(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;