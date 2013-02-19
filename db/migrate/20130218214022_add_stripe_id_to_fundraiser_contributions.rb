class AddStripeIdToFundraiserContributions < ActiveRecord::Migration
  def change
    add_column :fundraiser_contributions, :stripe_id, :string
  end
end
