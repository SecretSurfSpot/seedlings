require 'pg'

class Campaign
  attr_reader :name, :image, :country, :sector, :target_amount

  def initialize(name:, image:, country:, sector:, target_amount:)
    @name = name
    @image = image
    @country = country
    @sector = sector
    @target_amount = target_amount
  end

  def self.view_all_campaigns
    Database.setup_connection
    campaigns = Database.run_query('SELECT * FROM campaigns;')

    campaigns.map do |campaign|
      Campaign.new(name: campaign['name'], image: campaign['image'], country: campaign['country'], sector: campaign['sector'], target_amount: campaign['target_amount'])
    end
  end
end
