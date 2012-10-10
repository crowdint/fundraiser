$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "fundraiser/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "fundraiser"
  s.version     = Fundraiser::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Fundraiser."
  s.description = "TODO: Description of Fundraiser."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "devise", "~> 2.1.2"
  s.add_dependency "haml-rails", "~> 0.3.5"
  s.add_dependency "persistent_settings"

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
