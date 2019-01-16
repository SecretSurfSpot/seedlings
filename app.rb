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
    redirect '/confirmation'
  end

  get '/confirmation' do
    @campaign_name = session[:campaign_name]
    @amount = session[:amount]
    session[:campaign_name] = nil
    session[:amount] = nil
    erb :confirmation
  end

  configure do
    set :views, (proc { File.join(root, 'app/views') })
  end
end
