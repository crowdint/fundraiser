class Fundraiser::Manage::RewardsController < Fundraiser::ApplicationController
  def index
    @rewards = Fundraiser::Reward.all
  end

  def new
    @reward = Fundraiser::Reward.new
  end

  def create
    @reward = Fundraiser::Reward.new(reward_params)
    if @reward.save
      redirect_to manage_rewards_path, :notice => "Reward was succesfully created"
    else
      render :action => :new
    end
  end

  private
  def reward_params
    params[:reward]
  end
end
