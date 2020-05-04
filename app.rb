require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
    configure do 
        enable :sessions
        set :session_secret, "password123"
    end
    
    get '/' do 
        erb :index
    end

    post '/checkout' do 
        # binding.pry
        #binding.pry
        session[params.keys.first] = params.values.first
    end
end