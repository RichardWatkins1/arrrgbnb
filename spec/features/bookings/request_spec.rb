feature 'make a booking' do
	scenario 'user requests a booking' do
    sign_up
    create_property_1
    click_button('Log out')
    sign_up2
    visit 'property/all'
    # click link of property
    click_button('Book now')
    expect(page).to have_content('Enter a date')

	end
end
