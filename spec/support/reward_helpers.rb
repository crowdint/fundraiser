def random_reward
  Fundraiser::Reward.create! :title => Faker::Lorem.sentence,
      :description => Faker::Lorem.paragraph,
      :minimum_pledge => 30
end
