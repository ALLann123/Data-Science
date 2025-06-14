-- SELF JOIN
#joining another copy of a table to it self. Used to compare rows of the same table

select * from customers;

#add a new column to the table
ALTER TABLE customers
ADD referral_id INT;

#lets populate the table
UPDATE customers
SET referral_id=2
WHERE customer_id=3;

#join the table by itself
SELECT a.customer_id, a.customer_name, b.customer_name AS referral
FROM customers as a
INNER JOIN customers as b
ON a.referral_id=b.customer_id
;