-- Date in mysql

CREATE TABLE test(
	my_date DATE,
    my_time TIME,
    my_date_time DATETIME
);

SELECT * FROM test;

INSERT INTO test
VALUES(current_date(), current_time(), now())
;

# now lets delete the table
DROP TABLE test;