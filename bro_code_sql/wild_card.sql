-- WILD CARDS  they are two % _
#They are used to substitute one or more characters in a string

select * from employees;

#displays the first name that starts with a v
SELECT * FROM employees
WHERE first_name LIKE "v%"
;

#at the end of the employees
SELECT * FROM employees
WHERE first_name LIKE "%n" AND speciality="CEO"
;
