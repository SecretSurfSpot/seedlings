require 'pg'

class Invest
  def self.invest_in_campaign(name:, amount:)
    p "1 - INVEST name: is #{name}"
    p "2 - INVEST amount: is #{amount}"
    # verify_numeric(amount)
    verify_positive(amount)

    Database.setup_connection
    result = Database.run_query("INSERT INTO investments(campaign_name, investor_name, amount) VALUES('#{name}', 'guest', #{amount}) RETURNING campaign_name, amount;")
  end

  def self.verify_numeric(amount)
    p "3 - verify_numeric amount: is #{amount}"
    raise ArgumentError, 'Error: investment amount must be a number' unless amount.to_i.is_a? Integer
  end

  def self.verify_positive(amount)
    p "4 - verify_positive amount: is #{amount}"
    raise ArgumentError, 'Error: investment amount must be positive' unless amount.to_i.positive?
  end
end
