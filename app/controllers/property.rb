class Arrrgbnb < Sinatra::Base

  get '/property/all' do
    filter_list =  { :title => params[:title],
                     :property_type => params[:property_type],
                     :location => params[:location],
                     :bedrooms.gte => params[:bedrooms],
                     :sleeps.gte => params[:sleeps],
                     :photo => params[:photo],
                     :price.lte => params[:price],
                     :date_available_to.lte => params[:date_available_to],
                     :date_available_from.gte => params[:date_available_from]
                   }
    filter_list.reject! { |k,v| v.to_s.empty? }

    property_filtered = Property.all(filter_list)
    if property_filtered.length==0
      flash.now[:errors] = ['No results, please amend criteria and try again']
    end
    @properties = filter_list ? property_filtered : Property.all
    erb :'properties/index'
  end


  get '/property/new' do
    erb :'properties/new'
  end

  post '/property/all' do
    property = Property.create(
                    title:params[:title],
                    property_type:params[:property_type],
                    location:params[:location],
                    bedrooms:params[:bedrooms],
                    sleeps:params[:sleeps],
                    photo:params[:photo],
                    price:params[:price],
                    date_available_to:params[:date_available_to],
                    date_available_from:params[:date_available_from],
                    description:params[:description]
                    )
    if current_user
      current_user.property << property
      current_user.save
    end
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
