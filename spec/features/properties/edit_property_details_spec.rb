feature 'edit property details' do
	scenario 'can edit an existing property' do
    sign_up
		create_property_1
	  expect(current_path).to eq '/property/all'
    click_button 'Dashboard'
    click_button 'Edit'
    fill_in :Title, with: 'Manor'
    click_button 'Confirm Changes'
    expect(page).to have_content('Manor')
	end
end
