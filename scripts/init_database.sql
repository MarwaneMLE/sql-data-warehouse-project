/*
============================================================
Create Database and Schema
============================================================
Script Purpose:
	This script creates a database named 'DataWarehouse'. If the database already exists, 
  it is dropped and recreated. It also sets up three schemas within the database: 
  'bronze', 'silver', and 'gold'."
WARNING:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanently deleted. Proceed with caution 
	and ensure you have proper backups before runing this script.
*/

-- Create Database 'DataWarehouse'

USE master;
GO

-- Drop recreate the 'DataWarehouse' database if it exists (to check!!!!)
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO

-- Create schema
CREATE SCHEMA bronze;
GO

-- Create schema
CREATE SCHEMA silver;
GO

-- Create schema
CREATE SCHEMA gold;
GO
