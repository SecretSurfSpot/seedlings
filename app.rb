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
    p "1 - in invest ROUTE, @single_campaign is #{@single_campaign}"
    Invest.invest_in_campaign(name: params[:campaign_name], amount: params[:amount])
    redirect '/confirmation'
  end

  get '/confirmation' do
    erb :confirmation
  end

  configure do
    set :views, (proc { File.join(root, 'app/views') })
    enable :sessions
  end
end
