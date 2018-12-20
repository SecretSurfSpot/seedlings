require './app/model/invest'

describe Invest do
  describe '.invest_in_campaign' do
    it 'should invest the given amount into the chosen campaign' do
      investment = Invest.invest_in_campaign(name: 'Campaign_3', amount: 10000)
      expect(investment[0]).to include({ "amount" => "10000", "campaign_name" => "Campaign_3" })
    end

    it 'should raise an error if the given amount is a special character' do
      expect { Invest.invest_in_campaign(name: 'Campaign_3', amount: '!@£$%^&*()_=+') }.to raise_error 'Error: investment amount must be positive'
    end

    it 'should raise an error if the given amount isn\'t a number' do
      expect { Invest.invest_in_campaign(name: 'Campaign_3', amount: 'string') }.to raise_error 'Error: investment amount must be positive'
    end

    it 'should raise an error if the given amount isn\'t a positive number' do
      expect { Invest.invest_in_campaign(name: 'Campaign_3', amount: -10000) }.to raise_error 'Error: investment amount must be positive'
    end

    # it 'should raise an error if the given amount isn\'t an integer' do
    #   expect { Invest.invest_in_campaign(name: 'Campaign_3', amount: 'string') }.to raise_error 'Error: investment amount must be a number'
    # end
  end
end
