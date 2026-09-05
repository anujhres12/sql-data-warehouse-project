/*
Create Database and Schemas

Script Purpose:


WARNING:


*/




USE master;
GO

--Drop and recreate the 'DataWarehouse' database

IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USE WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO

--Creating the Schema
CREATE SCHEMA bronze;
GO --("GO" is like seperator means execute 1st query then go to 2nd) 
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO

