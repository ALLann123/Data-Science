-- UNIQUE
#Ensures all values in a column are different
#we can add it when we create a table or after

SELECT *
FROM employees;

DROP TABLE products;
#lets create a table
CREATE TABLE products(
	product_id INT,
    product_name VARCHAR(50) UNIQUE,
    price DECIMAL(10,2)
);
#the above after the data type VARCHAR in product name add unique. alter
#adding unique to an already created table use ALTER
ALTER TABLE employees
ADD CONSTRAINT
UNIQUE (employee_id);

SELECT *
FROM products;

#add values
INSERT INTO products
VALUES(1, "Chatbots", 1000.45),
	(2, "Voice Agents", 2500.00),
    (3, "AI agents", 5500.50),
	(4, "Consultation", 725.66)
;

SELECT *
FROM products;
