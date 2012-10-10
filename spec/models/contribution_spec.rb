require 'spec_helper'

describe Fundraiser::Contribution do
  describe ".create_from_amazon_ipn" do
    it "creates the contribution" do
      Fundraiser::Contribution.should_receive(:create).
          with(:email => "aws@crowdint.com", :reference => "3",
            	 :transaction => success_ipn_params, :amount => 12500 )

      Fundraiser::Contribution.create_from_amazon_ipn success_ipn_params
    end
  end

  describe ".amazon_amount_to_cents" do
    it "returns the amount as cents integer" do
      Fundraiser::Contribution.
      		amazon_amount_to_cents("USD 125.000000").should eq 12500
    end
  end

  describe ".total_contributed" do
    it "returns the sums of the amounts divided by 100" do
    	Fundraiser::Contribution.should_receive(:sum).and_return 1000
    	Fundraiser::Contribution.total_contributed.should eq 10
    end
  end
end
