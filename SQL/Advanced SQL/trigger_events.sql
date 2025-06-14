-- Triggers and Events
SELECT *
FROM parks_and_recreation.employee_salary
;

SELECT *
FROM parks_and_recreation.employee_demographics;
DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, new.first_name, new.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary(employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, 'John', 'Ndirangu', 'Dancing', 100000, NULL);


-- EVENTS
#Trigger happens when an event occurs while an Event is scheduled
#when importing data on a schedule, build reports on a schedule for automation
SELECT *
FROM parks_and_recreation.employee_demographics;

DELIMITER $$
CREATE EVENT delete_retireer
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE
    FROM employee_demography
    WHERE age> 60;
END $$
DELIMITER ;

SHOW VARIABLES LIKE 'event%';



