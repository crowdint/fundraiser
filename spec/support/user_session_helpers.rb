def admin_user_is_logged_in
  user = Fundraiser::User.new :email => 'admin@example.com'
  user.password = '123456'
  user.password_confirmation = user.password
  user.save!
  user
end
