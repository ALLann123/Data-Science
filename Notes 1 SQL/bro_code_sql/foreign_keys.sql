-- Foreign Key
#is a primary key that can be found in another table

use techfirm;

select * from employees;
#create a customer table
CREATE TABLE customers(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name  VARCHAR(50)
);

SELECT * FROM customers;

#add data to the table
INSERT INTO customers(first_name,last_name)
VALUES	("Eliot", "Alder"),
		("Phillip", "Price"),
        ("Tyrel", "Wellick"),
        ("Own", "TheNet")
;


#lets create a transaction table and add our customer_id as our foreign key in bothe tables
CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(10,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

select * from transactions;

#lets insert dat
select * from customers;
ALTER TABLE transactions
AUTO_INCREMENT = 1000;

INSERT INTO transactions(amount, customer_id)
VALUES 	(1200,1),
		(1490,2),
        (300,4),
        (999,3)
;

-- N/B mysql will prevent us from deleting our links between the two tables
#EG
DELETE FROM customers
WHERE customer_id=2;