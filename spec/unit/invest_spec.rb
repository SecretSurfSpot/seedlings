require './app/model/invest'

describe Invest do
  describe '.invest_in_campaign' do
    it 'should invest the given amount into the chosen campaign' do
      investment = Invest.invest_in_campaign(name: 'Campaign_3', amount: 10000)
      expect(investment[0]).to include({ "amount" => "10000", "campaign_name" => "Campaign_3" })
    end
  end
end
