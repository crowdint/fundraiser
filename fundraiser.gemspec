$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "fundraiser/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "fundraiser"
  s.version     = Fundraiser::VERSION
  s.authors     = ["David Padilla"]
  s.email       = ["david@crowdint.com"]
  s.homepage    = "https://github.com/crowdint/fundraiser"
  s.summary     = "Mountable Engine to set up a Crowdfunding app"
  s.description = "Mountable Engine to set up a Crowdfunding app"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "haml-rails", "~> 0.3.5"
  s.add_dependency "persistent_settings", "~> 1.3.0"
  s.add_dependency "strong_parameters"
  s.add_dependency 'stripe'

  s.add_development_dependency "autotest"
  s.add_development_dependency "autotest-growl"
  s.add_development_dependency "capybara"
  s.add_development_dependency "faker"
  s.add_development_dependency "launchy"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "vcr"
  s.add_development_dependency "webmock"
end
