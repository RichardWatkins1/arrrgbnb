feature 'User log out' do

  scenario 'When logged in, user can log out' do
    sign_up
    log_in
    click_button 'Log out'
    expect(current_path).to eq('/property/all') #change to homepage
    expect(page).to have_content 'goodbye!'

  end
end
