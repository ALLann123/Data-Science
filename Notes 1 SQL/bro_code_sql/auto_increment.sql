-- AutoIncrement
#applied to a column that has been set as a key. Each row is automatically incremented. 

#lets drop the table
DROP TABLE transactions;

CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5,2)
);

#Lets insert the values into our table and specify the column we are inserting to amount only
INSERT INTO transactions(amount)
VALUES	(4.99),
		(2.98),
        (1.22),
        (3.50)
;

#display table
SELECT * FROM transactions;

#we can also set the primary key to begin at a different values
ALTER TABLE transactions
AUTO_INCREMENT = 1000;

#drop the rows
DELETE FROM transactions;

#redo the insert
INSERT INTO transactions(amount)
VALUES	(4.99),
		(2.98),
        (1.22),
        (3.50)
;