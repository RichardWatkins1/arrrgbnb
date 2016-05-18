class Arrrgbnb < Sinatra::Base


  get '/booking/all' do
    @booking = Booking.all
    erb :'bookings/index'
  end

  get '/booking/new' do
    erb :'bookings/new'
  end

  post '/booking/all' do

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
    redirect "/booking/all"
  end

  # get '/booking/edit' do
  #   erb :'booking/edit'
  # end
  #
  # patch '/booking/all' do
  #
  #         Booking.update(
  #                           pending: params[:pending],
  #                           approved: params[:approved],
  #                           confirmed: params[:confirmed],
  #                           rejected: params[:rejected],
  #                           cancelled: params[:cancelled],
  #                           completed: params[:completed],
  #                           date: params[:date]
  #                          )
  #     redirect "/booking/all"
  #
  # end


    run! if app_file == $0
end
