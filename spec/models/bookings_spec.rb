describe Booking do

  # let!(:booking) do
  #   Booking.create(date: '2016-07-01')
  # end

  def create_booking
    Booking.create(

                  pending: false,
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

  # it 'if the property is available for date chosen, it creates a new pending request' do
  #   authenticated_user = User.authenticate(user.email, user.password)
  #   expect(authenticated_user).to eq user
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
