# This migration comes from crowdblog (originally 20120215232711)
class CreateCrowdblogUsers < ActiveRecord::Migration
  def change
    create_table :crowdblog_users do |t|
      t.string   :name
      t.boolean  :is_publisher
      t.string   :email, :null => false, :default => ""
      t.string   :encrypted_password, :null => false, :default => ""
      t.datetime :remember_created_at
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.string   :authentication_token
      t.string   :gravatar_alias

      t.timestamps
    end

    add_index :crowdblog_users, :email,                :unique => true
    add_index :crowdblog_users, :authentication_token, :unique => true
  end
end
