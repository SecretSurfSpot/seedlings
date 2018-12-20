require 'pg'

class Campaign
  attr_reader :name, :image, :country, :sector, :target_amount, :percentage

  def initialize(name:, image:, country:, sector:, target_amount:, percentage:)
    @name = name
    @image = image
    @country = country
    @sector = sector
    @target_amount = target_amount
    @percentage = percentage
  end

  def self.view_all_campaigns
    Database.setup_connection
    all_campaigns = Database.run_query('SELECT campaigns.name, campaigns.image, campaigns.country, campaigns.sector, campaigns.target_amount, ROUND(Sum(investments.amount)/campaigns.target_amount * 100, 0) AS percentage FROM campaigns LEFT JOIN investments ON campaigns.name = investments.campaign_name GROUP BY campaigns.name ORDER BY id;')

    all_campaigns.map do |campaign|
      Campaign.new(name: campaign['name'], image: campaign['image'], country: campaign['country'], sector: campaign['sector'], target_amount: campaign['target_amount'], percentage: campaign['percentage'])
    end
  end

  def self.select_campaign(campaign_name)
    Database.setup_connection
    single_campaign = Database.run_query("SELECT campaigns.name, campaigns.image, campaigns.country, campaigns.sector, campaigns.target_amount, ROUND(Sum(investments.amount)/campaigns.target_amount * 100, 0) AS percentage FROM campaigns LEFT JOIN investments ON campaigns.name = investments.campaign_name WHERE campaigns.name = '#{campaign_name [:name]}' GROUP BY campaigns.name;")

    single_campaign.map do |campaign|
      Campaign.new(name: campaign['name'], image: campaign['image'], country: campaign['country'], sector: campaign['sector'], target_amount: campaign['target_amount'], percentage: campaign['percentage'])
    end
  end
end
