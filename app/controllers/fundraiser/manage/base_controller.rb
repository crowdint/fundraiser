class Fundraiser::Manage::BaseController < Fundraiser::ApplicationController
  before_filter :authenticate_user!

  def after_sign_in_path_for(resource)
    fundraiser.root_path
  end
end
