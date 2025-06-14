-- GROUP BY
#aggregrate all rows by a specific column
#used oftenly with aggregate functions EG. SUM(), MAX(), MIN(),AVG(), COUNT()

select * from transactions;

select max(amount), transaction_id
from transactions
GROUP BY transaction_id;