module Fundraiser
  class User < ActiveRecord::Base
    devise :database_authenticatable, :validatable

    attr_accessible :email, :password, :password_confirmation, :remember_me
    attr_accessible :email

    def manager!
      update_attribute :is_manager, true
    end
  end
end
