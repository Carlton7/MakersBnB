require 'data_mapper'
require 'sinatra/base'
require_relative 'lib/database_connection_setup'

class MakersBnB < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/sign_up' do
    user = User.create(name: params[:name], email: params[:email], password: params[:password])
    session[:user] = user
    redirect '/'
  end

end
