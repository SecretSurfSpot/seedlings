require 'pg'
require_relative '../db/migrate/campaign_array'
require_relative '../db/migrate/investment_array'
require_relative '../db/migrate/04_populate_tables'

def setup_test_database
  p 'truncating test database tables.....'

  # Connect to the seedlings_campaigns_test database
  connection = PG.connect(dbname: 'seedlings_campaigns_test')

  # Clear the campaigns table
  connection.exec('TRUNCATE campaigns CASCADE;')

  # Clear the investments table
  connection.exec('TRUNCATE investments CASCADE;')

  # Clear the investor table
  connection.exec('TRUNCATE investor CASCADE;')

  # Populate the test database tables
  p 'populating test database tables.....'
  DatabasePopulation.populate_tables('seedlings_campaigns_test')
end
