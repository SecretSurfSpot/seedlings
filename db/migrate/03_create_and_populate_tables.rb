require 'pg'

class DatabaseCreation
  def self.create_and_populate_tables(database_name)

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

    # INSERT values into the campaigns table
    connection.exec("INSERT into campaigns(name, image, country, sector, target_amount)
    VALUES('Campaign_1', 'Image_1', 'United Kingdom', 'Automotive', 1000000),
        ('Campaign_2', 'Image_2', 'Ireland', 'Electrical', 200000),
        ('Campaign_3', 'Image_3', 'Spain', 'Banking', 650000),
        ('Campaign_4', 'Image_4', 'Greece', 'Tourism', 875000),
        ('Campaign_5', 'Image_5', 'United Kingdom', 'Automotive', 3000000),
        ('Campaign_6', 'Image_6', 'United Kingdom', 'Electrical', 80000),
        ('Campaign_7', 'Image_7', 'United Kingdom', 'Banking', 500000),
        ('Campaign_8', 'Image_8', 'Portugal', 'Tourism', 90000),
        ('Campaign_9', 'Image_9', 'Switzerland', 'Automotive', 650000),
        ('Campaign_10', 'Image_10', 'Ireland', 'Electrical', 375000),
        ('Campaign_11', 'Image_11', 'Spain', 'Banking', 8000000),
        ('Campaign_12', 'Image_12', 'Greece', 'Tourism', 150000),
        ('Campaign_13', 'Image_13', 'Switzerland', 'Automotive', 400000),
        ('Campaign_14', 'Image_14', 'Portugal', 'Electrical', 700000),
        ('Campaign_15', 'Image_15', 'Spain', 'Banking', 250000),
        ('Campaign_16', 'Image_16', 'Switzerland', 'Tourism', 325000),
        ('Campaign_17', 'Image_17', 'United Kingdom', 'Automotive', 450000),
        ('Campaign_18', 'Image_18', 'Portugal', 'Electrical', 6500000),
        ('Campaign_19', 'Image_19', 'Spain', 'Banking', 300000),
        ('Campaign_20', 'Image_20', 'Switzerland', 'Tourism', 500000);
        ")

    # INSERT values into the investor table
    connection.exec("INSERT into investor(name)
      VALUES('guest');
      ")

    # INSERT values into the investments table
    connection.exec("INSERT into investments(campaign_name, investor_name, amount)
      VALUES('Campaign_1', 'guest', 100000),
        ('Campaign_2', 'guest', 30000),
        ('Campaign_3', 'guest', 25000),
        ('Campaign_4', 'guest', 1000),
        ('Campaign_5', 'guest', 100000),
        ('Campaign_6', 'guest', 5000),
        ('Campaign_7', 'guest', 15000),
        ('Campaign_8', 'guest', 18000),
        ('Campaign_9', 'guest', 19000),
        ('Campaign_10', 'guest', 20000),
        ('Campaign_1', 'guest', 100000),
        ('Campaign_2', 'guest', 30000),
        ('Campaign_3', 'guest', 40000),
        ('Campaign_4', 'guest', 50000),
        ('Campaign_5', 'guest', 10000),
        ('Campaign_6', 'guest', 90000),
        ('Campaign_7', 'guest', 30000),
        ('Campaign_8', 'guest', 20000),
        ('Campaign_9', 'guest', 70000),
        ('Campaign_10', 'guest', 10000);
        ")
  end
end
