require 'data_mapper'
require 'sinatra/base'
require_relative 'lib/spaces'
require_relative 'lib/users'
require_relative 'lib/database_connection_setup'


class MakersBnB < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/sign_up' do
    User.create(name: params[:name], email: params[:email], password: params[:password])
    redirect '/'
  end

  get '/spaces/new' do
    erb :'/spaces/new'
  end

  post '/spaces/new' do
    Space.create(name: params[:name], description: params[:description]\
    , price: params[:price], available_from: params[:available_from]\
    , available_to: params[:available_to])
    redirect '/spaces'
  end

  get '/spaces' do
    @spaces = Space.all
    erb :spaces
  end

end


