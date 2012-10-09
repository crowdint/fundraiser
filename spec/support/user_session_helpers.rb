def manager_user_is_logged_in
  user = create_user(true)

  visit fundraiser.new_user_session_path
  fill_in 'Email', :with => user.email
  fill_in 'Password', :with => user.password
  click_button 'Sign in'
end

def create_user(manager = false)
  user = Fundraiser::User.new :email => 'manager@example.com'
  user.password = '123456'
  user.password_confirmation = user.password
  user.save!

  user.manager! if manager

  user
end
