feature 'add new property' do
	scenario 'save links' do
	visit '/property/new'
  fill_in :title, with: 'Big House'
  fill_in :property_type, with: 'House'
  fill_in :location, with: 'London'
  fill_in :bedrooms, with: 4
  fill_in :sleeps, with: 8
  fill_in :photo, with: 'www.myhousephoto.com'
  fill_in :price, with: 50
  click_button 'Create listing'
  expect(current_path).to eq '/property/all'
  within 'ul#properties' do
    expect(page).to have_content('London')
    expect(page).to have_content('Big House')
    expect(page).to have_content('House')
    expect(page).to have_content(4)
    expect(page).to have_content(8)
    expect(page).to have_content('www.myhousephoto.com')
    expect(page).to have_content(50)
  end
	end
end
