class AddEmailNameToFundraiserContributions < ActiveRecord::Migration
  def change
    add_column :fundraiser_contributions, :name, :string
  end
end
