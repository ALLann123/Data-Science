-- String Functions

SELECT LENGTH('SkyFall');

SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name, LENGTH(first_name) AS len
FROM parks_and_recreation.employee_demographics;

-- UPPER
SELECT UPPER('allan');
#now use case
SELECT first_name, UPPER(first_name)
FROM parks_and_recreation.employee_demographics;

-- LOWER
SELECT LOWER('ALLAN');
SELECT first_name, LOWER(last_name)
FROM parks_and_recreation.employee_demographics;

-- Trim
SELECT TRIM('  Allan   ');

-- Selecting x-cters in a string
SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4)
FROM parks_and_recreation.employee_demographics;

-- SUBSTRING
SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date, 6, 2) AS Birth_Month,
SUBSTRING(birth_date, 1, 4) AS Birth_Year
FROM parks_and_recreation.employee_demographics;

-- Replace
SELECT first_name, REPLACE(first_name, 'a', 'z') AS replace_letter
FROM parks_and_recreation.employee_demographics;

-- LOCATE
SELECT LOCATE('n','Allan');

-- Concantation
#Joining strings together
# it is very usefull
SELECT first_name, last_name,
CONCAT(first_name,'   ', last_name) AS Full_Name
FROM parks_and_recreation.employee_demographics;