-- Order By
# sorts the query in ascending or descending order based on the column we lisst.

#by default ascending
select * from employees
ORDER BY last_name;

#for descending order 
select * from employees
ORDER BY last_name DESC;

show tables;

select * from transactions
ORDER BY amount;

#we can order by more than a single column