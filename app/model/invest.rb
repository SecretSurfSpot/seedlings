require 'pg'

class Invest
  def self.invest_in_campaign(investment_details)
    # verify_numeric(investment_details)
    verify_positive(investment_details)
    Database.setup_connection
    result = Database.run_query("INSERT INTO investments(campaign_name, investor_name, amount) VALUES('#{investment_details [:name]}', 'guest', #{investment_details [:amount]}) RETURNING campaign_name, amount;")
  end

  private

  def self.verify_numeric(investment_details)
    raise ArgumentError, 'Error: investment amount must be a number' unless investment_details [:amount].is_a? Integer
  end

  def self.verify_positive(investment_details)
    raise ArgumentError, 'Error: investment amount must be positive' unless investment_details [:amount].to_i.positive?
  end
end
