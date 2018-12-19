require './app/model/database'

describe Database do
  describe '.setup_connection' do
    it 'makes a connection to the database with PG' do
      expect(PG).to receive(:connect).with(dbname: 'seedlings_campaigns_test')
      Database.setup_connection()
    end
  end

  describe ".run_query" do
    it "executes a query using PG" do
      connection = Database.setup_connection()
      expect(connection).to receive(:exec).with("SELECT * FROM campaigns;")
      Database.run_query("SELECT * FROM campaigns;")
    end
  end
end
