class CreateFundraiserUsers < ActiveRecord::Migration
  def change
    create_table :fundraiser_users do |t|
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""
      t.boolean :is_manager,        :null => false, :default => false

      t.timestamps
    end
    add_index :fundraiser_users, :email,                :unique => true
  end
end
