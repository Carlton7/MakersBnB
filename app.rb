require 'data_mapper'
require 'sinatra/base'
require_relative 'lib/spaces'
require_relative 'lib/sign_up'
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

  get '/spaces/new' do
    erb :'/spaces/new'
  end

  post '/spaces' do
    space = Space.create(name: params[:name], description: params[:description], price: params[:price], available_from: params[:available_from], available_to: params[:available_to])
    session[:space] = space
    redirect '/spaces'
  end

  get '/spaces' do
    erb :spaces
  end

end
