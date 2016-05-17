class Arrrgbnb < Sinatra::Base


  get '/property/all' do
    @properties = Property.all
    erb(:'properties/index')
  end

  get '/property/new' do
    erb :'properties/new_property'
  end

  post '/property/all' do
    property = Property.create(
                            title: params[:title],
                            property_type: params[:property_type],
                            location: params[:location],
                            bedrooms: params[:bedrooms],
                            sleeps: params[:sleeps],
                            photo: params[:photo],
                            price: params[:price]
                             )
    redirect to('/property/all')
  end

  # start the server if ruby file executed directly
    run! if app_file == $0
end
