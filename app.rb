require 'sinatra/base'
require './app/model/campaigns'
require './app/model/database'

class Seedlings < Sinatra::Base

  get '/' do
    'Hello World!'
    @campaigns = Campaign.view_all_Campaigns
    erb :campaign_list
  end

  configure do
      set :views, Proc.new { File.join(root, "app/views") }
      enable :sessions
  end

end
