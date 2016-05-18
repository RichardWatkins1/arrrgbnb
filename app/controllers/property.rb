class Arrrgbnb < Sinatra::Base


  get '/property/all' do
    @properties = Property.all
    erb :'properties/index'
  end

  get '/property/new' do
    erb :'properties/new_property'
  end

  post '/property/all' do
  Property.create(
                            title:params[:title],
                            property_type:params[:property_type],
                            location:params[:location],
                            bedrooms:params[:bedrooms],
                            sleeps:params[:sleeps],
                            photo:params[:photo],
                            price:params[:price],
                            date_available_to:params[:date_available_to],
                            date_available_from:params[:date_available_from]
                            )
    redirect "/property/all"
  end

  get '/property/edit' do
    erb :'properties/edit'
  end

  patch '/property/all' do

    # if current_user    #the property instance below needs to be matched with the user
      Property.update(
                            title:params[:title],
                            property_type:params[:property_type],
                            location:params[:location],
                            bedrooms:params[:bedrooms],
                            sleeps:params[:sleeps],
                            photo:params[:photo],
                            price:params[:price],
                            date_available_to:params[:date_available_to],
                            date_available_from:params[:date_available_from]
                           )
      redirect "/property/all"
    # end
  end

  # start the server if ruby file executed directly
    run! if app_file == $0
end
