-- Create a new database
CREATE DATABASE mydb;

-- using a database
USE mydb;

-- Drop a database
DROP DATABASE mydb;

-- To enable read only on a database
ALTER DATABASE mydb READ ONLY=1;
#We cannot delete the table when in read only

-- To disable read only mode
ALTER DATABASE mydb READ ONLY=0;

