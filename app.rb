require 'sinatra/base'
require './app/model/campaigns'
require './app/model/database'

class Seedlings < Sinatra::Base
  get '/' do
    @campaigns = Campaign.view_all_campaigns
    erb :campaign_list
  end

  get '/:name' do
    @campaign = Campaign.select_campaign(name: params[:name])
    erb :campaign
  end

  configure do
    set :views, Proc.new { File.join(root, 'app/views') }
    enable :sessions
  end
end
