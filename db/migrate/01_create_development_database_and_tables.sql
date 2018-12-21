--#################### DEVELOPMENT DATABASE AND TABLES ####################
-- To create and populate the database and tables, via the terminal, enter the following commands:

-- 1) To access PostgreSQL via the terminal:
psql

-- 2) For the 'development' database:
CREATE DATABASE "seedlings_campaigns";

-- 3) To connect to the development database:
\c seedlings_campaigns

--4) To create the campaigns table:
CREATE TABLE campaigns(
	id SERIAL,
	name VARCHAR(50) PRIMARY KEY,
	image VARCHAR(50),
	country VARCHAR(30),
	sector VARCHAR(30),
	target_amount NUMERIC);

--5) To create the investments table:
CREATE TABLE investments(
	campaign_name VARCHAR(50) REFERENCES campaigns(name),
	investor_name VARCHAR(50) REFERENCES investor(name),
	amount NUMERIC,
	date TIMESTAMP default CURRENT_TIMESTAMP);

--6) To create the investor table:
CREATE TABLE investor(
	name VARCHAR(50) PRIMARY KEY);

--7) To populate the development database, enter the sql contains in the following files:
03_insert_into_campaigns_table.sql
04_insert_into_investments_table.sql
05_insert_into_investor_table.sql
