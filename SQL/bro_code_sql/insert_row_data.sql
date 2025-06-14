SELECT *
FROM triple_a_agency.employees;

USE triple_a_agency;

#now lets insert data to a row
INSERT INTO employees
VALUES(1, "Allan", "Kariuki", "ak@gmail.com", "CEO", 25.50, "2025-01-27")
;

#lets add multiple data to rows
INSERT INTO employees
	VALUES	(2, "John", "Jaba", "john@gmail.com", "CTO", 22.50, "2025-01-29"), 
			(3, "Mark", "Gitosh", "gitosh@gmail.com", "CMO", 22.47, "2025-02-01"), 
            (4, "Alvin", "Mbugua", "mbuguzalvin@gmail.com", "Engineer", 20.50, "2025-02-10"), 
            (5, "Vele", "Betty", "vele@gmail.com", "Human Resource", 18.30, "2025-03-01")
;

#now lets insert for a selected columns
INSERT INTO employees(employee_id,first_name,last_name)
VALUES(6, "Yohana", "Kamaa")
;       #the rest of the empty columns will be replaced with nulls
