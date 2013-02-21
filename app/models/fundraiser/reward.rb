module Fundraiser
  class Reward < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection
    include ActionView::Helpers
    attr_accessible :description, :minimum_pledge, :title

    validates :title, :presence => true
    validates :minimum_pledge, :numericality => true

    has_many :pledges

    def amount
      (minimum_pledge.to_f * 100).to_i
    end

    def title_with_amount
      "#{self.title} (#{number_to_currency(self.minimum_pledge)})"
    end
  end
end
