--  Temporary table

#create a table and name the columns as well as data types
CREATE TEMPORARY TABLE temp_table
(
first_name varchar(50),
hacker_name varchar(50),
skill varchar(100)
);

#now call the table we created
SELECT *
FROM temp_table;

#insert data to the table
INSERT INTO temp_table
VALUE('Allan', 'own_the_net', 'Python Scripting');

-- ANother method to create a temporary table
SELECT *
FROM parks_and_recreation.employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
(
select *
FROM parks_and_recreation.employee_salary
WHERE salary > 50000
)
;
SELECT *
FROM salary_over_50k;






SELECT *
FROM allandb.languages;
#this is how we insert our data into a table
INSERT INTO languages
VALUE('4','X86 assembly');