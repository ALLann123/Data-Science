-- Triggers
#when an event happens a trigger does something
#eg when an insert, update, delete happens we can use handle errors and audit table

SELECT * FROM employees;

-- Add a new column
ALTER TABLE employees
ADD COLUMN salary DECIMAL(10,2) AFTER hourly_wage
;

#now lets fill the column created above
UPDATE employees
SET salary= hourly_wage * 2080;

#now create a trigger for the above process
CREATE TRIGGER before_hourly_wage_update
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.salary=(NEW.hourly_wage*2080);

SHOW triggers;

#lets use the trigger by giving greedy allan a rise in money
UPDATE employees
SET hourly_wage=50
WHERE employee_id=1;

#increase all employee salary
UPDATE employees
set hourly_wage=hourly_wage+1;

DELETE FROM employees
WHERE employee_id=6;

#Create another trigger
CREATE TRIGGER before_hourly_pay_insert
BEFORE INSERT ON employees
FOR EACH ROW
SET NEW.salary=(new.hourly_wage*2080);

INSERT INTO employees
VALUES (6, "Chris", "Ronaldo", "roro@gmail.com", "Brand Ambassodor", 19, NULL, "marketing", "2025-05-02")
;