require 'faker'

begin
  u = Fundraiser::User.new
  u.email = 'test@example.com'
  u.password = '123456'
  u.password_confirmation = '123456'
  u.manager!
  u.save
rescue
end

4.times do |i|
  Fundraiser::Reward.create :title => Faker::Lorem.sentence,
    :description => Faker::Lorem.paragraph,
    :minimum_pledge => ((i + 1) * 50)
end
