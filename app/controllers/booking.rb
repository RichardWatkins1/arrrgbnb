class Arrrgbnb < Sinatra::Base

  get '/booking/new' do
     @property ||= Property.get(params[:id])
    erb :'bookings/new'
  end

  post '/booking/all' do
    date = params[:date]
    current_property = Property.get(params[:id])
    current_bookings = Booking.all(property_id: params[:id])
    match = 0
    current_bookings.each do |booking|
      if booking.date.to_s == date
        match +=1
      end
    end
    if (date > current_property.date_available_to.to_s || date < current_property.date_available_from.to_s || match > 0)
       flash.now[:errors] = ['Sorry, property is unavailable for that date']
          @property = current_property
          erb :'bookings/new'
    else
      booking = Booking.create( pending: true,
                              approved: false,
                              confirmed: false,
                              rejected: false,
                              cancelled: false,
                              completed: false,
                              date: params[:date],
                              property_id: current_property.id
                              )
      current_user.bookings << booking
      current_user.save
      current_property.bookings << booking
      current_property.save
      redirect "/users/dashboard"

    end

  end










    # >=date from && <=date_to, then if  booking.date!= date, true elseif booking.date=date &&booking.confirmed !=true then allow to book

  patch '/booking/all' do
    Booking.get(params[:booking_id]).update(
                    pending: params[:pending],
                    approved: params[:approved],
                    confirmed: params[:confirmed],
                    rejected: params[:rejected],
                    cancelled: params[:cancelled],
                    completed: params[:completed],
                   )
    redirect "/users/dashboard"
  end


    run! if app_file == $0
end
