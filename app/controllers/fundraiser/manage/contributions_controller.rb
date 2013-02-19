class Fundraiser::Manage::ContributionsController < Fundraiser::Manage::BaseController
  respond_to :js
  skip_before_filter :authenticate_user!, only: [:create]

  def index
    @contributions = Fundraiser::Contribution.all.reverse
  end

  def create
    @contribution = Fundraiser::Contribution.new params[:contributor]

    @contribution.save
    respond_with @contribution
  end

  def transition
    @contribution = Fundraiser::Contribution.find params[:contribution][:id]
    puts "#{params[:contribution][:transition]}"

    @contribution.send "#{params[:contribution][:transition]}"
  end

end

