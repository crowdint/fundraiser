module Fundraiser
  class RewardsController < ApplicationController
    layout "fundraiser/rewards"

    before_filter :sanity_check

    def index
      @rewards = Reward.all
    end
  end
end
