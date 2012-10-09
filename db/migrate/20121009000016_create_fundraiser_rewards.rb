class CreateFundraiserRewards < ActiveRecord::Migration
  def change
    create_table :fundraiser_rewards do |t|
      t.string :title
      t.text :description
      t.integer :minimum_pledge

      t.timestamps
    end
  end
end
