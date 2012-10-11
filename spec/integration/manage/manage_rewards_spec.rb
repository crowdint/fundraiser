require 'spec_helper'

describe "Manage rewards", :type => :integration do
  context "Manager User" do
    before do
      Fundraiser::Settings.funding_goal = 300
      manager_user_is_logged_in
    end

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

    context "reward exists" do
      let(:reward) do
        Fundraiser::Reward.create! :title => Faker::Lorem.sentence,
          :description => Faker::Lorem.paragraph,
          :minimum_pledge => 30
      end

      before { reward }

      it "updates the reward" do
        visit fundraiser.manage_rewards_path

        within "#reward_#{reward.id}" do
          click_link 'Edit'
        end

        fill_in 'Title'          , :with => 'New Reward Title'
        fill_in 'Description'    , :with => 'New Reward Description'
        fill_in 'Minimum pledge' , :with => '50'

        click_button 'Update'

        current_path.should eq fundraiser.manage_rewards_path

        page.should have_content 'New Reward Title'
        page.should have_content '50'
      end

      it "deletes the reward" do
        visit fundraiser.manage_rewards_path

        within "#reward_#{reward.id}" do
          click_link 'Delete'
        end

        page.should_not have_content 'Reward Title'
      end
    end
  end
end
