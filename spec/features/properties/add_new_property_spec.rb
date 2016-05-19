feature 'add new property' do
	scenario 'save properties' do
    sign_up
		create_property_1
	  expect(current_path).to eq '/property/all'

	  within 'ul#properties' do
	    expect(page).to have_content('London')
	    expect(page).to have_content('Big House')
	    expect(page).to have_content('House')
	    expect(page).to have_content(4)
	    expect(page).to have_content(8)
	    expect(page).to have_content(50)
	  end
	end
end
