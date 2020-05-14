
require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret" #the string can be whatever you want, like a 'password' I guess? So not secret, haha.
  end

  get '/' do
    erb :index
  end

  post '/checkout' do 
    @sessions = session #adding the params from the form to the session hash?
    @sessions[:item] = params["item"] #Not quit sure whats going on here, setting the items params to the items key in the hash?
  end
end