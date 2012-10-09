require 'spec_helper'

describe "Make a Pledge" do
  context "User" do
    let(:user)   { user_is_signed_in }
    let(:reward) { random_reward     }

    before do
      user
      reward
    end

    it "can select a reward and create a pledge" do
      visit fundraiser.rewards_path

      page.should have_content reward.title

      click_link 'Pledge'

      fill_in :name           , :with => Faker::Name.name
      fill_in :address_line_1 , :with => Faker::Address.street_address
      fill_in :address_line_2 , :with => Faker::Address.secondary_address
      fill_in :country        , :with => 'United States'
      fill_in :state          , :with => Faker::Address.state
      fill_in :city           , :with => Faker::Address.city
      fill_in :zip_code       , :with => Faker::Address.zip_code
      fill_in :phone          , :with => Faker::PhoneNumber.phone_number

      click_button 'Pledge Now'

      page.should have_content 'Thank You'
    end
  end
end
