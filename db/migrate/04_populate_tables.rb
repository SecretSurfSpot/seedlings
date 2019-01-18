require 'pg'
require_relative 'campaign_array'
require_relative 'investment_array'

class DatabasePopulation
  def self.populate_tables(database_name)
    # Connect to the given database
    connection = PG.connect(dbname: database_name)

    # Populate the campaigns table with data for testing (data from array in CampaignDetails Module)
    include CampaignDetails
    CampaignDetails::CAMPAIGN_ARRAY.each do |campaign|
      connection.exec("INSERT into campaigns(name, image, country, sector, target_amount)
      VALUES('#{campaign[:name]}','#{campaign[:image]}','#{campaign[:country]}','#{campaign[:sector]}','#{campaign[:target_amount]}')")
    end

    # INSERT values into the investor table
    connection.exec("INSERT into investor(name)
      VALUES('guest');
      ")

    # Populate the investments table with data for testing (data from array in InvestmentDetails Module)
    include InvestmentDetails
    InvestmentDetails::INVESTMENT_ARRAY.each do |investment|
      connection.exec("INSERT into investments(campaign_name, investor_name, amount)
      VALUES('#{investment[:campaign_name]}','#{investment[:investor_name]}','#{investment[:amount]}')")
    end

  end
end
