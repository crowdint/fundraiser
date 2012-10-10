require 'spec_helper'

describe Fundraiser::IpnsController do
  describe "POST 'create'" do
    context "IPN message is valid" do
      let(:params) do
        success_ipn_params
      end

      it "is OK" do
        subject.stub(:url_end_point).and_return('http://crowdraiser.herokuapp.com/ipns')
        VCR.use_cassette 'ipn/success' do
          post :create, params.merge!(:use_route => :fundraiser)
        end
        response.body.should == "OK"
      end
    end

    context "IPN message is invalid" do
      let(:params) do
        invalid_ipn_params
      end

      it "is NOT OK" do
        subject.stub(:url_end_point).and_return('http://crowdraiser.herokuapp.com/ipns')
        VCR.use_cassette 'ipn/failed' do
          post :create, params.merge!(:use_route => :fundraiser)
        end
        response.body.should == "NOT OK"
      end
    end
  end
end
