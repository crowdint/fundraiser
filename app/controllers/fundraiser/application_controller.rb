module Fundraiser
  class ApplicationController < ActionController::Base
    def method_missing(method_name)
      if method_name == :authenticate_user!
        Rails.logger.warn("authenticate_user! in Crowdblog::ApplicationController should be overriden")
      end
    end

    protected
    def sanity_check
      redirect_to fundraiser.edit_manage_settings_path unless Fundraiser::Settings.try(:funding_goal)
    end
  end
end
