-- SUB QUERIES
#is a query within another query

select * from employees;

#average calculation
SELECT AVG(hourly_wage) as average_pay
FROM employees;

#now lets write the sub query
SELECT first_name, last_name, hourly_wage, 
	(SELECT AVG(hourly_wage) FROM employees) AS average_pay
FROM employees;

-- Write a subquery of employees with higher average pay
SELECT first_name, last_name, hourly_wage
FROM employees
WHERE hourly_wage>(SELECT AVG(hourly_wage) FROM employees)
;

#example two
use techfirm;     #change the database
SELECT * FROM transactions;
#filter null
SELECT DISTINCT customer_id
FROM transactions
WHERE customer_id IS NOT NULL
;

#write the subquery
SELECT * from customers;

SELECT first_name,last_name
FROM customers
WHERE customer_id IN
(SELECT DISTINCT customer_id
FROM transactions
WHERE customer_id IS NOT NULL
);