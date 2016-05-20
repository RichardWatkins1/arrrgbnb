describe Booking do

  def create_booking
    Booking.create(
                  pending: true,
                  approved: false,
                  confirmed: false,
                  rejected: false,
                  cancelled: false,
                  completed: false,
                  date: '2016-07-01')
    end
end
