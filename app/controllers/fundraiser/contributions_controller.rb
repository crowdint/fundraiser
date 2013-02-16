module Fundraiser
  class ContributionsController < ApplicationController
    respond_to :js

    def create
      @contribution = Contribution.new params[:contributor]

      if @contribution.save
        respond_with @contribution
      end
    end

  end
end

