class AddTripeTokenToFundraiserContributionsTable < ActiveRecord::Migration
  def change
    add_column :fundraiser_contributions, :stripeToken, :string
  end
end
