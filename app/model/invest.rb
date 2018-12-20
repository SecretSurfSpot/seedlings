require 'pg'

class Invest
  def self.invest_in_campaign(investment_details)
    Database.setup_connection
    result = Database.run_query("INSERT INTO investments(campaign_name, investor_name, amount) VALUES('#{investment_details [:name]}', 'guest', #{investment_details [:amount]}) RETURNING campaign_name, amount;")
  end
end
