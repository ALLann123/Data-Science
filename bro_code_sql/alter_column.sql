-- Alter column is used in manipulating the table schema

CREATE DATABASE mydb;
USE mydb;

#lets create a new table
CREATE TABLE students
(
	stud_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    fee_balance DECIMAL(8,3),
    date_admitted DATE
);

#display the table created
select * FROM students;

#now add a new column to the table above
ALTER TABLE students
ADD phone_number VARCHAR(20);

#good, but I dont think the column is necessary. Change it an email column instead
ALTER TABLE students
RENAME COLUMN phone_number TO email;

#good job!! but i realized the data type has not been modified
ALTER TABLE students
MODIFY email VARCHAR(50)
AFTER last_name;

# nice work on modifying the email datatype and pushing it to a better position

#drop the date admited does not seem significant
ALTER TABLE students
DROP COLUMN date_admitted;

#readd it
ALTER TABLE students
ADD date_admitted DATE;