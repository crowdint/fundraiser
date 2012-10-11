# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121011042820) do

  create_table "crowdblog_assets", :force => true do |t|
    t.integer  "post_id"
    t.string   "attachment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "crowdblog_posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "permalink"
    t.datetime "published_at"
    t.integer  "author_id"
    t.string   "state"
    t.integer  "publisher_id"
    t.boolean  "ready_for_review"
    t.datetime "marked_for_review_at"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "crowdblog_users", :force => true do |t|
    t.string   "name"
    t.boolean  "is_publisher"
    t.string   "email",                :default => "", :null => false
    t.string   "encrypted_password",   :default => "", :null => false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token"
    t.string   "gravatar_alias"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  add_index "crowdblog_users", ["authentication_token"], :name => "index_crowdblog_users_on_authentication_token", :unique => true
  add_index "crowdblog_users", ["email"], :name => "index_crowdblog_users_on_email", :unique => true

  create_table "fundraiser_contributions", :force => true do |t|
    t.string   "email"
    t.string   "reference"
    t.text     "request_params"
    t.integer  "amount"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "fundraiser_pledges", :force => true do |t|
    t.integer  "user_id"
    t.integer  "reward_id"
    t.integer  "pledge_amount"
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "state"
    t.string   "city"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "country"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "fundraiser_rewards", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "minimum_pledge"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "fundraiser_settings", :force => true do |t|
    t.string "var"
    t.text   "value"
  end

  add_index "fundraiser_settings", ["var"], :name => "index_fundraiser_settings_on_var"

  create_table "fundraiser_users", :force => true do |t|
    t.string   "email",              :default => "",    :null => false
    t.string   "encrypted_password", :default => "",    :null => false
    t.boolean  "is_manager",         :default => false, :null => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "fundraiser_users", ["email"], :name => "index_fundraiser_users_on_email", :unique => true

  create_table "versions", :force => true do |t|
    t.integer  "versioned_id"
    t.string   "versioned_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "user_name"
    t.text     "modifications"
    t.integer  "number"
    t.integer  "reverted_from"
    t.string   "tag"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "versions", ["created_at"], :name => "index_versions_on_created_at"
  add_index "versions", ["number"], :name => "index_versions_on_number"
  add_index "versions", ["tag"], :name => "index_versions_on_tag"
  add_index "versions", ["user_id", "user_type"], :name => "index_versions_on_user_id_and_user_type"
  add_index "versions", ["user_name"], :name => "index_versions_on_user_name"
  add_index "versions", ["versioned_id", "versioned_type"], :name => "index_versions_on_versioned_id_and_versioned_type"

end
