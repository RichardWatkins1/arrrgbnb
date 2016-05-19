class Arrrgbnb < Sinatra::Base

  get '/' do
    redirect '/property/all'
  end

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
      session[:user_id] = @user.id
      redirect '/users/dashboard'
    else
      flash.now[:errors] = @user.errors.full_messages
      erb :'users/new'
    end
  end

  get '/users/dashboard' do
    erb :'users/dashboard'
  end

  get '/users/edit' do
    erb :'users/edit'
  end

  patch '/users' do

    if current_user
      current_user.update( email:params[:email],
                   username:params[:username],
                   phone:params[:phone],
                   name:params[:name]
                 )
      redirect "/users/dashboard"
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
