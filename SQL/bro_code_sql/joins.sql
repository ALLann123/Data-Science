-- Join
#used to combine rows from two or more tables based on a related column between them.

show databases;

use techfirm;

SELECT * FROM transactions;

#lets insert a new column with no customer ID
INSERT INTO transactions(amount, customer_id)
VALUE (1001, NULL)
;

#lets add a new customer to our customer table who has no transaction
INSERT INTO customers(first_name, last_name)
VALUES ("Mary","Kamau")
;

select * FROM customers;

-- Inner Join
SELECT *
FROM transactions INNER JOIN customers
ON transactions.customer_id=customers.customer_id
;

-- Left Join
#we are selecting everything from the left table
SELECT *
FROM transactions LEFT JOIN customers
ON transactions.customer_id=customers.customer_id
;

-- N/B we use a foreign key and primary key to establish relationships between the tables

-- Right Join
#we are displaying everything from the table on the right
SELECT *
FROM transactions RIGHT JOIN customers
ON transactions.customer_id=customers.customer_id
;