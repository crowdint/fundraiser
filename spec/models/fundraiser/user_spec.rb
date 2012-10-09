require 'spec_helper'

describe Fundraiser::User do
  describe "#manager!" do
    it "turns the user into a manager" do
      subject.should_receive(:update_attribute).with(:is_manager, true)
      subject.manager!
    end
  end
end
