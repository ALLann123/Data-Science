-- Primary key
#no duplicate values within the column
use triple_a_agency;

#create a table
CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY,
    amount DECIMAL(5,2)
);

SELECT *
FROM transactions;

#to an exisiting table
ALTER TABLE transactions
ADD CONSTRAINT
PRIMARY KEY(transaction_id)
;

INSERT INTO transactions
VALUES	(1001, 230),
		(1002, 789),
        (1003,999)
;


#lets look for a refund and produce the transaction ID
SELECT amount
FROM transactions
WHERE transaction_id = 1002;