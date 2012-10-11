namespace :fundraiser do
  namespace :settings do
    task :init => :environment do
      Fundraiser::Settings.amazon!
    end
  end

  desc "create a fundraiser manager user"
  task(:manager, :email, :password) do |t, args|
    Rake::Task[:environment]
    u = Fundraiser::User.new
    u.email = args[:email]
    u.password = args[:password]
    u.password_confirmation = args[:password]
    u.save!
    u.manager!
  end
end
