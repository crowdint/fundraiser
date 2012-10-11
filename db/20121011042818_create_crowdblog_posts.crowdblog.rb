# This migration comes from crowdblog (originally 20120217213920)
class CreateCrowdblogPosts < ActiveRecord::Migration
  def change
    create_table :crowdblog_posts do |t|
      t.string :title
      t.text :body
      t.string :permalink
      t.datetime :published_at
      t.integer :author_id
      t.string :state
      t.integer :publisher_id
      t.boolean :ready_for_review
      t.datetime :marked_for_review_at

      t.timestamps
    end
  end
end
