require 'spec_helper'

describe "Manage settings", :type => :integration do
  context "Manager User" do
    before do
      Fundraiser::Settings.funding_goal = 300
      manager_user_is_logged_in
    end

    it "updates settings" do
      visit fundraiser.edit_manage_settings_path

      fill_in :amazon_access_key, :with => 'AMAZON_ACCESS_KEY'

      click_button 'Update'

      page.should have_content 'Settings updated succesfully'
    end
  end
end
