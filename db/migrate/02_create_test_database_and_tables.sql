--#################### TEST DATABASE AND TABLES ##########################
-- To create the database and tables, via the terminal, enter the following commands:

-- 1) To access PostgreSQL via the terminal:
psql

-- 2) For the 'testing' database:
CREATE DATABASE "seedlings_campaigns_test";

-- 3) To connect to the test database:
\c seedlings_campaigns_test

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

-- There is no need to populate the test database,
-- this is done automatically by scripts when you
-- run rspec from the command line during testing.
