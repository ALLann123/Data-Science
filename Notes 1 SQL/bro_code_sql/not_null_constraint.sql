-- NOT NULL
# the value should not be null in a column when creating a table

CREATE TABLE customers(
	customer_id INT,
    customer_name VARCHAR(50),
    product_received VARCHAR(50),
    amount_paid DECIMAL(10,2) NOT NULL
);

select *
FROM customers;

INSERT INTO customers
VALUES	(1, "Juja Floral Shop", "Chatbot", 1000.30),
		(2, "Cake Bakers", "Voice Agent", NULL),
		(3, "West Dental Clinic", "AI Agent", 5500.50)
;

#lets modify an exisiting table and add NULL to the column
ALTER TABLE products
MODIFY price DECIMAL(10,2) NOT NULL;

#Lets try and insert the data
SELECT *
FROM products;

INSERT INTO products
VALUES(5, IOT, NULL)
;


