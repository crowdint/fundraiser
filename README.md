# Fundraiser

[![Build Status](https://secure.travis-ci.org/crowdint/fundraiser.png)](http://travis-ci.org/crowdint/fundraiser)

Mountable Engine to set up a Crowdfunding app. Uses Amazon Simplepay to collect
payments.

Please, refer to the wiki for guidance on how to get an Amazon AWS account.

You can see an example implementation on [this Rails app source code](https://github.com/crowdint/fundraiser-app).

## Requirements

* Rails 3.2+

## Installation

Gemfile

    gem 'fundraiser', '1.0.0.beta'

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

## Authentication

### Devise

To authenticate using devise, simply install it and create a User model. It
should run out of the box.

Gemfile:

    gem 'devise'

Run:

    rails generator devise user

    rake db:migrate

## Manage

Use the console to create your first user and browse to /manage

Log in and enjoy.

# About the author

[Crowd Interactive](http://www.crowdint.com) is a leading Ruby and Rails
consultancy firm based in Mexico currently doing business with startups
in the United States. We specialize in building and growing your existing
development team, by adding engineers onsite or offsite. We pick our clients
carefully, as we only work with companies we believe in. Find out more about
us on our [website](http://www.crowdint.com).

# Licencse

MIT License. Copyright 2012 Crowd Interactive.
