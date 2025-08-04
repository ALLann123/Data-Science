-- Limit clause
#used to limit the number of records that are quarried
#used for working with alot of data

use techfirm;
#eg lets limit one
select * from customers
LIMIT 1;

select * from customers
LIMIT 3;

#we can combine limit with order by
select * from customers
ORDER BY first_name LIMIT 3;