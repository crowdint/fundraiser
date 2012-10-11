require 'spec_helper'

describe "Initialization" do
  context "funding goal is not set" do
    before do
      Fundraiser::Settings.funding_goal = nil
    end

    context "User browses to home" do
      before do
        manager_user_is_logged_in
        visit fundraiser.root_path
      end

      it "redirects to manage settings" do
        current_path.should eq fundraiser.edit_manage_settings_path
      end
    end
  end
end
