require './app/model/database'

describe Database do
  describe '.setup_connection' do
    it 'makes a connection to the database with PG' do
      expect(PG).to receive(:connect).with(dbname: 'seedlings_campaigns_test')
      Database.setup_connection()
    end
  end
end
