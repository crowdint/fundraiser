class AddStateToFundraiserContribution < ActiveRecord::Migration
  def change
    add_column :fundraiser_contributions, :state, :string
  end
end
