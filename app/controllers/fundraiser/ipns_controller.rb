module Fundraiser
  class IpnsController < ApplicationController
    def create
      aws_access_key = ENV['FPS_AWS_ACCESS_KEY_ID']
      aws_secret_key = ENV['FPS_AWS_SECRET_ACCESS_KEY']
      url_end_point = fundraiser.ipns_url

      utils = Amazon::FPS::SignatureUtilsForOutbound.new(aws_access_key, aws_secret_key)

      if utils.validate_request(:parameters => params, :url_end_point => url_end_point, :http_method => "POST")
        Rails.logger.info "CRY OF JOY"
        render :text => "OK"
      else
        Rails.logger.info "CRY"
      end
    end
  end
end
