module Fundraiser
  class Manage::SettingsController < Fundraiser::Manage::BaseController
    def edit
      @settings = Settings.new
    end

    def update
      Fundraiser::Settings.store settings_params
      redirect_to fundraiser.edit_manage_settings_path, :notice => 'Settings updated succesfully'
    end

    private
    def settings_params
      params[:settings]
    end
  end
end
