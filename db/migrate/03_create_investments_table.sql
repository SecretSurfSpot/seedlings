CREATE TABLE investments(
	campaign_name VARCHAR(50) REFERENCES campaigns(name),
	investor_name VARCHAR(50) REFERENCES investor(name),
	amount NUMERIC,
	date TIMESTAMP default CURRENT_TIMESTAMP);
