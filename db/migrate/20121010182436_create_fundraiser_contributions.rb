class CreateFundraiserContributions < ActiveRecord::Migration
  def change
    create_table :fundraiser_contributions do |t|
      t.string :email
      t.string :reference
      t.text :request_params
      t.integer :amount

      t.timestamps
    end
  end
end
