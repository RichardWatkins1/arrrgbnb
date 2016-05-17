feature 'User log in' do


  scenario 'with correct credentials' do
    sign_up
    log_in
    expect(current_path).to eq('/users/dashboard')
    expect(page).to have_content "Welcome, alice@example.com"
  end
end
