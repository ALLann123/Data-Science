-- Case
#able to add conditions to a statement

SELECT first_name, last_name,
CONCAT(first_name, '  ', last_name) AS Full_Name,
age, 
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 30 AND 50 THEN 'old'
    WHEN age >= 50 THEN 'Very very old'
END AS Category
FROM parks_and_recreation.employee_demographics;

-- PAY increase bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10%

SELECT CONCAT(first_name,'  ',last_name) AS Full_name, salary,
CASE
	WHEN salary < 50000 THEN salary+(salary*0.05)
    WHEN salary > 50000 THEN salary+(salary*0.07)
END AS gross_income,
CASE
	WHEN dept_id = 6 THEN salary+(salary*0.1)
END AS bonus
FROM parks_and_recreation.employee_salary;