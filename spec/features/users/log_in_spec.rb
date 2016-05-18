feature 'User log in' do


  scenario 'User can log in with correct credentials' do
    sign_up
    log_in
    expect(current_path).to eq('/users/dashboard')
    expect(page).to have_content "Welcome, alice@example.com"
  end
end
