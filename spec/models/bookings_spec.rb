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

  # it 'cannot make a booking if the property has already been booked for that date' do
  #   sign_up
  #   create_property_1
  #   click_button ('Log out')
  #   sign_up
  #   click_button('Book now')
  #   expect{create_booking}.not_to change(Booking, :pending)
  # end

  # bring these tests into the feature test (and the last line can check that the model is updated)

  # it 'if the property is available for date chosen, it creates a new pending request' do
  #   expect{create_booking}.to change(Booking, :pending)
  # end
  #
  # it 'the landlord can approve a pending request' do
  #   expect(User.authenticate(user.email, 'wrong_stupid_password')).to be_nil
  # end
  #
  # it 'user can confirm an approved request' do
  #   expect(User.authenticate(user.email, 'wrong_stupid_password')).to be_nil
  # end
  #
  # it 'the landlord can reject a pending request' do
  #   expect(User.authenticate(user.email, 'wrong_stupid_password')).to be_nil
  # end
  #
  # it 'the renter can cancel a booking ' do #only requests that are pending, approved or confirmed
  #   expect(User.authenticate(user.email, 'wrong_stupid_password')).to be_nil
  # end
  #
  # it 'after a stay is complete the booking is marked as completed ' do
  #   expect(User.authenticate(user.email, 'wrong_stupid_password')).to be_nil
  # end
  #



end
