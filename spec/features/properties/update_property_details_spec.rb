feature 'Update property details' do

  scenario 'User can edit property details' do
    sign_up
    create_property_1
    visit '/users/dashboard'
    click_button 'Edit'
    expect(current_path).to eq('/property/edit')
    fill_in :property_type, with: 'Farm'
    click_button 'Confirm Changes'
    expect(Property.last.property_type).to eq 'Farm'
  end
end
