feature 'make a booking' do
	scenario 'user shows interest to book' do
    sign_up
    create_property_1
    click_button('Log out')
    sign_up2
    visit '/property/all'
    click_button('Book now')
    expect(page).to have_content('Enter a date')

	end

	# scenario 'user requests booking' do
	# 	sign_up
  #   create_property_1
  #   click_button('Log out')
  #   sign_up2
  #   visit '/property/all'
  #   click_button('Book now')
	# 	fill_in :date, with: '2016-07-04'
	# 	expect(page). have_content('')
	#
	#
	# end
end
