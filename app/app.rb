require 'sinatra/base'

class Arrrgbnb < Sinatra::Base
  get '/' do
    'Hello Arrrgbnb!'
  end

  get '/property/view' do
    erb :'property/view'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
