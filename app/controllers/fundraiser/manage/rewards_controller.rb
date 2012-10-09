class Fundraiser::Manage::RewardsController < Fundraiser::Manage::BaseController
  before_filter :load_reward, :only => [ :edit, :update, :destroy ]

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

  def edit
  end

  def update
    if @reward.update_attributes(reward_params)
      redirect_to fundraiser.manage_rewards_path, :notice => "Reward was succesfully updated"
    else
      render :action => :edit
    end
  end

  def destroy
    @reward.destroy
    redirect_to manage_rewards_path, :notice => "Reward was succesfully deleted"
  end

  private
  def reward_params
    params[:reward]
  end

  def load_reward
    @reward = Fundraiser::Reward.find(params[:id])
  end
end
