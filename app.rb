require 'sinatra/base'

class Seedlings < Sinatra::Base

  get '/' do
    'Hello World!'
  end

end
