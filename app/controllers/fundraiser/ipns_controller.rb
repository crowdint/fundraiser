module Fundraiser
  class IpnsController < ApplicationController
    def create
      aws_access_key = ENV['FPS_AWS_ACCESS_KEY_ID']
      aws_secret_key = ENV['FPS_AWS_SECRET_ACCESS_KEY']

      utils = Amazon::FPS::SignatureUtilsForOutbound.new(aws_access_key, aws_secret_key)

      params.delete :controller
      params.delete :action

      if utils.validate_request(:parameters => params, :url_end_point => url_end_point, :http_method => "POST")
        render :text => "OK"
      else
        render :text => "NOT OK"
      end
    end

    def url_end_point
      fundraiser.ipns_url
    end
  end
end
