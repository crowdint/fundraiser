module Fundraiser
  class ApplicationController < ActionController::Base
    protected
    def sanity_check
      redirect_to fundraiser.edit_manage_settings_path unless Fundraiser::Settings.try(:funding_goal)
    end
  end
end
