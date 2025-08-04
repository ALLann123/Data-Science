-- Functions
# Is a stored program that we can pass parameters into to return a value.
# there are numerous functions out there go to https://www.w3schools.com/mysql/mysql_ref_functions.asp

SELECT COUNT(amount) AS count
FROM transactions;

select * from transactions;

#get maximum value
SELECT MAX(amount) AS maximum
FROM transactions;

#get the minimum value
SELECT MIN(amount) AS minimum
FROM transactions;

#do average
SELECT AVG(amount) AS average
FROM transactions;

#add a whole column
SELECT SUM(amount) AS sum
FROM transactions;

#concantenate names of our employees
use triple_a_agency;
select *from employees;

SELECT CONCAT(first_name, "  ",last_name) AS full_name
FROM employees;

-- WE HAVE MORE FUNCTIONS THAN THE ABOVE!!