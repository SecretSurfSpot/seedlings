require 'pg'
require_relative '../../db/migrate/campaign_array'
require './app/model/campaigns'

describe Campaign do
  include CampaignDetails
  describe '.view_all_campaigns' do
    it 'should display all campaigns' do
      campaigns = Campaign.view_all_campaigns
      number = 0
      CampaignDetails::CAMPAIGN_ARRAY.each do |campaign|
        expect(campaigns[number].name).to include(campaign[:name])
        expect(campaigns[number].country).to include(campaign[:country])
        expect(campaigns[number].sector).to include(campaign[:sector])
        expect(campaigns[number].target_amount).to include(campaign[:target_amount].to_s)
        number += 1
      end
    end
  end

  describe '.select_campaign' do
    it 'should display selected campaign' do
      campaign = Campaign.select_campaign(name: 'Campaign_2')
      campaign_2 = CampaignDetails::CAMPAIGN_ARRAY[1]
      expect(campaign[0].name).to include(campaign_2[:name])
      expect(campaign[0].country).to include(campaign_2[:country])
      expect(campaign[0].sector).to include(campaign_2[:sector])
      expect(campaign[0].target_amount).to include(campaign_2[:target_amount].to_s)
    end
  end
end
