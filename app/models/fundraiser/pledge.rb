module Fundraiser
  class Pledge < ActiveRecord::Base
    attr_accessible :address_line_1, :address_line_2, :city, :country,
        :phone, :pledge_amount, :state, :user_id, :zip_code, :name

    belongs_to :user
  end
end
