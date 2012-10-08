class CreateFundraiserSettings < ActiveRecord::Migration
  def change
    create_table :fundraiser_settings do |t|
      t.string :var
      t.text :value
    end

    add_index :fundraiser_settings, :var
  end
end
