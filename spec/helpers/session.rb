module Helpers

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

  def log_in(email: 'alice@example.com', password:'12345678')
    visit '/sessions/new'
    fill_in :email, with: email
    fill_in :password, with: password
    click_button 'Log in'
  end

  def sign_up(name:'Alice Inne',
              username:'Wonderland',
              email:'alice@example.com',
              phone:'4444-44441',
              password:'12345678',
              password_confirmation:'12345678'
             )
    visit '/users/new'
    fill_in :name, with: name
    fill_in :username, with: username
    fill_in :email, with: email
    fill_in :phone, with: phone
    fill_in :password, with: password
    fill_in :password_confirmation, with: password_confirmation
    click_button 'Sign up'
  end

#   def recover_password
#     visit '/users/recover'
#     fill_in :email, with: "alice@example.com"
#     click_button "Submit"
#   end

end
