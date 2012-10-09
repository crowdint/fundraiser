class Fundraiser::Manage::BaseController < Fundraiser::ApplicationController
  before_filter :authenticate_user!, :authorize_manager

  def after_sign_in_path_for(resource)
    fundraiser.root_path
  end

  def authorize_manager
    redirect_to(root_path) unless current_user.is_manager?
  end
end
