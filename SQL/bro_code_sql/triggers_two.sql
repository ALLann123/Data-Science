-- Triggers part two
CREATE TABLE expenses(
	expense_id INT,
    expence_name VARCHAR(50),
    expense_total DECIMAL(10,2)
);


SELECT * FROM expenses;

INSERT INTO expenses
VALUES 	(1, "salaries", 0),
		(2, "supplies", 0),
        (3, "taxes", 0)
;

UPDATE expenses
set expense_total= (select sum(salary) from employees)
WHERE expence_name="salaries";


-- Create trigger
CREATE TRIGGER after_salary_delete
AFTER DELETE ON employees
for each row
UPDATE expenses
SET expense_total=expense_total-OLD.salary
WHERE expense_name="salaries";


DELETE FROM employees
WHERE employee_id=6;