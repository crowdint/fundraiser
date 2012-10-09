module Fundraiser
  class PledgesController < ApplicationController
    before_filter :authenticate_user!, :load_reward

    def new
      @pledge = Pledge.new(:pledge_amount => params[:pledge_amount])
    end

    def create
      @pledge = @reward.pledges.build(pledge_params)
      @pledge.user = current_user
      if @pledge.save
        redirect_to fundraiser.reward_pledge_path(@reward, @pledge)
      else
        render :action => :new
      end
    end

    def show
      @pledge = Pledge.find(params[:id])
    end

    private
    def load_reward
      @reward = Reward.find(params[:reward_id])
    end

    def pledge_params
      params[:pledge]
    end
  end
end
