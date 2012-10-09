class CreateFundraiserPledges < ActiveRecord::Migration
  def change
    create_table :fundraiser_pledges do |t|
      t.integer :user_id
      t.integer :reward_id
      t.integer :pledge_amount
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.string :state
      t.string :city
      t.string :zip_code
      t.string :phone
      t.string :country

      t.timestamps
    end
  end
end
