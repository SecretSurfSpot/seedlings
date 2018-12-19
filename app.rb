require 'sinatra/base'

class Seedlings < Sinatra::Base

  get '/' do
    'Hello World!'
  end

  configure do
      set :views, Proc.new { File.join(root, "app/views") }
      enable :sessions
  end

end
