require 'spec_helper'

describe "Manage rewards", :type => :integration do
  before do
    admin_user_is_logged_in
  end

  describe "create" do
    it "creates a reward" do
      visit fundraiser.manage_rewards_path

      click_link 'New Reward'

      fill_in 'Title'          , :with => 'Reward Title'
      fill_in 'Description'    , :with => 'Reward Description'
      fill_in 'Minimum pledge' , :with => '30'

      click_button 'Create'

      page.should have_content 'Reward Title'
      page.should have_content '30'
    end
  end
end
