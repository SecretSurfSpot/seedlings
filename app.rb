require 'sinatra/base'
require './app/model/campaigns'
require './app/model/invest'
require './app/model/database'

class Seedlings < Sinatra::Base
  get '/' do
    @all_campaigns = Campaign.view_all_campaigns
    erb :campaign_list
  end

  get '/:name' do
    @single_campaign = Campaign.select_campaign(name: params[:name])
    erb :campaign
  end

  post '/invest' do
    @investment = Invest.invest_in_campaign(name: params[:campaign_name], amount: params[:amount])
    erb :confirmation
  end

  configure do
    set :views, (proc { File.join(root, 'app/views') })
  end
end
