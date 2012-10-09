module Fundraiser
  class Reward < ActiveRecord::Base
    attr_accessible :description, :minimum_pledge, :title
  end
end
