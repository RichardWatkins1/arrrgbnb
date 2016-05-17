require 'sinatra/base'
require_relative 'data_mapper_setup'
require 'sinatra/flash'

class Arrrgbnb < Sinatra::Base
  # get '/' do
  #   redirect
  # end

  get '/users/new' do
    @user = User.new
    erb :'users/new'
  end

  post '/users' do
    @user = User.new( password:params[:password],
                         password_confirmation:params[:password_confirmation],
                         email:params[:email],
                         username:params[:username],
                         phone:params[:phone],
                         name:params[:name]
                       )
    if @user.save
      'Welcome, alice@example.com'
      # redirect '/sessions/new'
    else
      flash.now[:errors] = @user.errors.full_messages
      erb :'users/new'
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
