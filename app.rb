require_relative 'config/environment'

class App < Sinatra::Base

   configure do
      enable :sessions
      set :session_secret, "th!$se$$ion"
   end

   get '/' do
      erb :index
   end

   get '/checkout' do
      erb :shows
   end

   post '/checkout' do
      session[:item] = params[:item]
      @session = session
   redirect to "/checkout"
   end
end