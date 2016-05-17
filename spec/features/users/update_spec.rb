feature 'Update personal details' do

  scenario 'User can edit personal details' do
    sign_up
    log_in
    click_button 'Edit personal details'
    expect(current_path).to eq('/users/edit')
    fill_in :name, with: 'Alison'
    click_button 'Confirm Changes'
    expect(User.first.name).to eq 'Alison'
  end
end
