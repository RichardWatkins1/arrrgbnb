feature 'make a booking' do
	scenario 'user shows interest to book' do
    sign_up
    create_property_1
    click_button('Log out')
    sign_up2
    visit '/property/all'
    click_button('Details')
    expect(page).to have_content('Enter a date')
		expect(page).to have_content('House and stuff')

	end

	scenario 'user requests booking' do
		sign_up
    create_property_1
    click_button('Log out')
    sign_up2
    visit '/property/all'
    click_button('Details')
		fill_in :date, with: '2016-07-04'
		expect(page).to have_content('')

	end

  # it 'cannot make a booking if the property has already been booked for that date' do
  #   sign_up
  #   create_property_1
  #   click_button ('Log out')
  #   sign_up2
  #   request_booking
  #   expect{request_booking}.not_to change(Booking, :pending)
  # end
  #
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

end
