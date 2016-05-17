module SessionHelpers

  def create_property_1
    visit '/property/new'
    fill_in :title, with: 'Big House'
    fill_in :property_type, with: 'House'
    fill_in :location, with: 'London'
    fill_in :bedrooms, with: 4
    fill_in :sleeps, with: 8
    fill_in :photo, with: 'www.myhousephoto.com'
    fill_in :price, with: 50
    click_button 'Create listing'
  end

  def create_property_2
    visit '/property/new'
    fill_in :title, with: 'Small House'
    fill_in :property_type, with: 'House'
    fill_in :location, with: 'London'
    fill_in :bedrooms, with: 2
    fill_in :sleeps, with: 4
    fill_in :photo, with: 'www.myhousephoto.com'
    fill_in :price, with: 30
    click_button 'Create listing'
  end

end
