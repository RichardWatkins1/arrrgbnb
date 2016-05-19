class Arrrgbnb < Sinatra::Base

  get '/booking/all' do
    @booking = Booking.all
    erb :'bookings/index'
  end

  get '/booking/new' do
     @property = Property.get(params[:id])
    erb :'bookings/new'
  end

  post '/booking/all' do
    date = params[:date]
    if (date > current_property.date_available_to &&
       date < current_property.date_available_from) ||
        (current_property.bookings.dates.include?(date))
        flash.now[:errors] = ['Sorry, property is unavailable for that date']
        redirect "booking/new"
    end
    booking = Booking.create( pending: true,
                            approved: false,
                            confirmed: false,
                            rejected: false,
                            cancelled: false,
                            completed: false,
                            date: params[:date]
                            )
    current_user.bookings << booking
    current_user.save
    current_property = Property.get(5)
    current_property.bookings << booking
    current_property.save
    redirect "/users/dashboard"
  end










    # >=date from && <=date_to, then if  booking.date!= date, true elseif booking.date=date &&booking.confirmed !=true then allow to book

  patch '/booking/all' do
    Booking.update(
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
