SELECT *
FROM triple_a_agency.employees;

use triple_a_agency;

SELECT employee_id, speciality
FROM employees
WHERE hourly_wage <= 21;
