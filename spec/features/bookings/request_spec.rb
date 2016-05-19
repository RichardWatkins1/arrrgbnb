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
