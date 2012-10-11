module Fundraiser
  class RewardsController < ApplicationController
    before_filter :sanity_check

    def index
      @rewards = Reward.all
    end
  end
end
