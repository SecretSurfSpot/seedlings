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

  describe '.select_campaign' do
    it 'should display selected campaign' do
      campaign = Campaign.select_campaign(name: 'Campaign_2')
      expect(campaign[0].name).to include('Campaign_2')
      expect(campaign[0].country).to include('Ireland')
      expect(campaign[0].sector).to include('Electrical')
      expect(campaign[0].target_amount).to include('200000')
    end
  end

  # describe '.invest_in_campaign' do
  #   it 'should invest the given amount into the chosen campaign' do
  #     investment = Campaign.invest_in_campaign(name: 'Campaign_3', amount: 10000)
  #   end
  # end
end
