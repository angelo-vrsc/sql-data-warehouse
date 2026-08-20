-- Create database
DROP DATABASE IF EXISTS DataWarehouse WITH (FORCE);

CREATE DATABASE DataWarehouse;

-- Create schemas
CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;
