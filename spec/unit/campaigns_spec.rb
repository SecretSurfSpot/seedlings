require './app/model/campaigns'

describe Campaign do
  describe '.view_all_campaigns' do
    it 'should display all campaigns' do
      campaigns = Campaign.view_all_campaigns
      expect(campaigns[0].name).to include('Campaign_1')
      expect(campaigns[0].country).to include('United Kingdom')
      expect(campaigns[0].sector).to include('Automotive')
      expect(campaigns[0].target_amount).to include('1000000')
      expect(campaigns[5].name).to include('Campaign_6')
      expect(campaigns[19].name).to include('Campaign_20')
    end
  end
end
