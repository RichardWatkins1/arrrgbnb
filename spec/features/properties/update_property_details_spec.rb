feature 'Update property details' do

  scenario 'User can edit property details' do
    sign_up
    log_in
    create_property_1
    visit '/users/dashboard'
    click_button 'Edit Property Details'
    expect(current_path).to eq('/property/edit')
    fill_in :title, with: 'Big House'
    fill_in :location, with: 'London'
    fill_in :bedrooms, with: 4
    fill_in :sleeps, with: 8
    fill_in :photo, with: 'www.myhousephoto.com'
    fill_in :price, with: 50
    fill_in :property_type, with: 'Farm'
    fill_in :date_available_to, with: '2016-05-30'
    fill_in :date_available_from, with: '2016-05-14'
    click_button 'Confirm Changes'
    expect(Property.last.property_type).to eq 'Farm'
  end
end
