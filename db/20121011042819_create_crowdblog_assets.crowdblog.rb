# This migration comes from crowdblog (originally 20120219071614)
class CreateCrowdblogAssets < ActiveRecord::Migration
  def change
    create_table :crowdblog_assets do |t|
      t.integer :post_id
      t.string :attachment

      t.timestamps
    end
  end
end
