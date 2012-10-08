module Fundraiser
  class User < ActiveRecord::Base
    devise :database_authenticatable, :validatable

    attr_accessible :email, :password, :password_confirmation, :remember_me
    attr_accessible :email
  end
end
