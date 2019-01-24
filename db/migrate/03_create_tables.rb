require 'pg'
require_relative 'campaign_array'
require_relative 'investment_array'

class DatabaseCreation
  def self.create_tables(database_name)
    # Connect to the seedlings_campaigns_test database
    connection = PG.connect(dbname: database_name)

    # CREATE the campaigns table
    connection.exec("CREATE TABLE campaigns(
      id SERIAL,
      name VARCHAR(50) PRIMARY KEY,
      image VARCHAR(50),
      country VARCHAR(30),
      sector VARCHAR(30),
      target_amount NUMERIC);
      ")

    # CREATE the investor table
    connection.exec("CREATE TABLE investor(
      name VARCHAR(50) PRIMARY KEY);
      ")

    # CREATE the investments table
    connection.exec("CREATE TABLE investments(
      campaign_name VARCHAR(50) REFERENCES campaigns(name),
      investor_name VARCHAR(50) REFERENCES investor(name),
      amount NUMERIC,
      date TIMESTAMP default CURRENT_TIMESTAMP);
      ")
  end
end
