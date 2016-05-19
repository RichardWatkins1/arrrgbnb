feature 'filter listing' do
    scenario 'user can see filtered listings' do
    sign_up
    create_property_1
    create_property_2
    visit '/property/all'
    fill_in :price, with: 30
    click_button('Search')
    expect(page).to have_content('Small House')
    expect(page).not_to have_content('Big House')
    end
end
