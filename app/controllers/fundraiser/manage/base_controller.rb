class Fundraiser::Manage::BaseController < Fundraiser::ApplicationController
  def after_sign_in_path_for(resource)
    fundraiser.root_path
  end
end
