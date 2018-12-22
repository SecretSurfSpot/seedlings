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
      expect(campaigns[5].country).to include('United Kingdom')
      expect(campaigns[5].sector).to include('Electrical')
      expect(campaigns[5].target_amount).to include('80000')
      expect(campaigns[7].name).to include('Campaign_8')
      expect(campaigns[7].country).to include('Portugal')
      expect(campaigns[7].sector).to include('Tourism')
      expect(campaigns[7].target_amount).to include('90000')
      expect(campaigns[11].name).to include('Campaign_12')
      expect(campaigns[11].country).to include('Greece')
      expect(campaigns[11].sector).to include('Tourism')
      expect(campaigns[11].target_amount).to include('150000')
      expect(campaigns[14].name).to include('Campaign_15')
      expect(campaigns[14].country).to include('Spain')
      expect(campaigns[14].sector).to include('Banking')
      expect(campaigns[14].target_amount).to include('250000')
      expect(campaigns[17].name).to include('Campaign_18')
      expect(campaigns[17].country).to include('Portugal')
      expect(campaigns[17].sector).to include('Electrical')
      expect(campaigns[17].target_amount).to include('6500000')
      expect(campaigns[19].name).to include('Campaign_20')
      expect(campaigns[19].country).to include('Switzerland')
      expect(campaigns[19].sector).to include('Tourism')
      expect(campaigns[19].target_amount).to include('500000')
    end
  end

  describe '.select_campaign' do
    it 'should display selected campaign' do
      campaign = Campaign.select_campaign(name: 'Campaign_2')
      expect(campaign[0].name).to include('Campaign_2')
      expect(campaign[0].country).to include('Ireland')
      expect(campaign[0].sector).to include('Electrical')
      expect(campaign[0].target_amount).to include('200000')
    end
  end
end
