feature 'any visitor to website can view listings' do
	scenario 'view all properties listed' do

    #sign_up
    #sign_in
		#this test needs to be modified once the filter feature is added
    create_property_1
    expect(current_path).to eq '/property/all'
    create_property_2

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
