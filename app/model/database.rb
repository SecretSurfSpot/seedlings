require 'pg'

class Database
  def self.setup_connection
    if ENV['RACK_ENV'] == 'test'
      @connection = PG.connect(dbname: 'seedlings_campaigns_test')
    else
      @connection = PG.connect(dbname: 'seedlings_campaigns')
    end
  end

  def self.run_query(sql)
    @connection.exec(sql)
  end
end
