require 'sinatra/base'
require './app/model/campaigns'
require './app/model/invest'
require './app/model/database'

class Seedlings < Sinatra::Base
  enable :sessions

  get '/' do
    @all_campaigns = Campaign.view_all_campaigns
    erb :campaign_list
  end

  get '/campaign/:name' do
    @single_campaign = Campaign.select_campaign(name: params[:name])
    erb :campaign
  end

  post '/invest' do
    Invest.invest_in_campaign(name: params[:campaign_name], amount: params[:amount])
    session[:campaign_name] = params[:campaign_name]
    session[:amount] = params[:amount]
    p "1 param campaign_name is #{params[:campaign_name]}"
    p "2 session campaign_name is #{session[:campaign_name]}"
    erb :confirmation
  end

  configure do
    set :views, (proc { File.join(root, 'app/views') })
  end
end
