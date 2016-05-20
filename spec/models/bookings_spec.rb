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

    it 'cannot make a booking if the property has already been booked for that date' do
      create_booking
      expect{create_booking}.not_to change(Booking, :pending)
    end
end
