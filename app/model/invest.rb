require 'pg'

class Invest
  attr_reader :amount, :campaign_name

  def initialize(campaign_name:, amount:)
    @campaign_name = campaign_name
    @amount = amount
  end

  def self.invest_in_campaign(name:, amount:)
    verify_numeric(amount)
    verify_positive(amount)

    Database.setup_connection
    Database.run_query("INSERT INTO investments(campaign_name, investor_name, amount) VALUES('#{name}', 'guest', #{amount}) RETURNING campaign_name, amount;")
  end

  def self.verify_numeric(amount)
    raise ArgumentError, 'Error: investment amount must be a number' unless amount.is_a? Integer
  end

  def self.verify_positive(amount)
    raise ArgumentError, 'Error: investment amount must be positive' unless amount.positive?
  end

  private_class_method :verify_numeric
  private_class_method :verify_positive
end
