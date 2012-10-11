namespace :fundraiser do
  namespace :settings do
    task :init => :environment do
      Fundraiser::Settings.amazon!
    end
  end
end
