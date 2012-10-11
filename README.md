# Fundraiser

Mountable Engine to set up a Crowdfunding app. Uses Amazon Simplepay to collect
payments.

Please, refer to the wiki for guidance on how to get an Amazon AWS account.

## Requirements

* Rails 3.2+

## Installation

Gemfile

    gem 'fundraiser'

Bundle

    bundle

Copy migrations from Fundraiser

    rake fundraiser:install:migrations

Run them

    rake db:migrate

Mount the engine on routes.rb

    Rails.application.routes.draw do
      mount Fundraiser::Engine => "/fundraiser"
    end

Create an admin user

    rake fundraiser:manager[email@test.com,123456]

Browse to the URL where you mounted the engine and set it up.

# About the author

[Crowd Interactive](http://www.crowdint.com) is a leading Ruby and Rails
consultancy firm based in Mexico currently doing business with startups
in the United States. We specialize in building and growing your existing
development team, by adding engineers onsite or offsite. We pick our clients
carefully, as we only work with companies we believe in. Find out more about
us on our [website](http://www.crowdint.com).

# Licencse

MIT License. Copyright 2012 Crowd Interactive.
