feature 'any visitor to website can view listings' do
	scenario 'view all properties listed' do

    sign_up
    create_property_1
    expect(current_path).to eq '/property/all'
    create_property_2
		click_button 'Log out'
		click_button 'Click here to go somewhere, anywhere'

    within 'ul#properties' do
    expect(page).to have_content('London')
    expect(page).to have_content('Big House')
    expect(page).to have_content('House')
    expect(page).to have_content(4)
    expect(page).to have_content(8)
    expect(page).to have_content(50)

    expect(page).to have_content('London')
    expect(page).to have_content('Small House')
    expect(page).to have_content('House')
    expect(page).to have_content(2)
    expect(page).to have_content(4)
    expect(page).to have_content(30)
    end
	end
end
