class Arrrgbnb < Sinatra::Base


  get '/property/all' do
    property = ( Property.all(property_type:params[:property_type]) + Property.all(location:params[:location]) + Property.all(sleeps:params[:sleeps].to_i) + Property.all(bedrooms:params[:bedrooms].to_i) + Property.all(:price.lte => params[:price].to_i) + (Property.all(:date_available_to.lte => params[:date_available_to]) & Property.all(:date_available_from.gte => params[:date_available_from])))
    @properties = property ? property : Property.all
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
