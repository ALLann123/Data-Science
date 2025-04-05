-- ROLLUP
#extenstion of the group by clause
#produces another row and shows the grandtotal

SELECT * FROM employees;

SELECT SUM(hourly_wage) AS "hourly pay", employee_id
FROM employees
GROUP BY employee_id WITH ROLLUP
;