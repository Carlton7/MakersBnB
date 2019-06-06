require 'data_mapper'
require 'sinatra/base'
require 'sinatra/flash'
require_relative 'lib/spaces'
require_relative 'lib/users'
require_relative 'lib/booking'
require_relative 'lib/database_connection_setup'


class MakersBnB < Sinatra::Base
 enable :sessions
 register Sinatra::Flash

  get '/' do
    erb :index
  end

  get '/sign_up' do
    erb :sign_up
  end

  get '/log_in' do 
    erb :log_in 
  end

  post '/log_in' do 
    if user = User.first(email: params[:email], password: params[:password]) 
      session[:user_name] = user.name
      session[:user_id] = user.id
      redirect '/index2'
    else
      flash[:error] = "Incorrect Login Details"
      redirect '/log_in'
    end
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

  get '/index2' do
    @user_name = session[:user_name]
    @user_id = session[:user_id]
    @spaces = Space.all
    erb :index2
  end

  get '/bookings/new' do
   @spaces = Space.all
   @book_from = session[:book_from]
   @book_to = session[:book_to]
   erb :'/bookings/new'
  end

  post '/bookings/new' do
    session[:book_from] = params[:book_from]
    session[:book_to] = params[:book_to]
    redirect '/bookings/new'
  end

  get '/bookings/request/:id' do
    session[:space_id] = params[:id]
    erb :'bookings/request'
  end

  post '/bookings/request' do
    session[:date] = params[:booking_date]
   redirect '/bookings/confirmation'
  end

  get '/bookings/confirmation' do
    @booking_date = session[:date]
    p @booking_date
    @found = Space.get(session[:space_id])
    @range = @found.available_from..@found.available_to
    p @range
    erb :'/bookings/confirmation'
  end
end


