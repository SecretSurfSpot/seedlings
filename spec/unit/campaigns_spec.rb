require './app/model/campaigns'

describe Campaign do
  describe 'view_all_campaigns' do
    it 'should display all campaigns' do
      campaign = Campaign.view_all_campaigns
      expect(campaign[0].name).to include('Campaign_1')
      expect(campaign[0].country).to include('United Kingdom')
      expect(campaign[0].sector).to include('Automotive')
      expect(campaign[0].target_amount).to include('1000000')
      expect(campaign[5].name).to include('Campaign_6')
      expect(campaign[19].name).to include('Campaign_20')
    end
  end
end
