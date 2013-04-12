class CreatePostLikes < ActiveRecord::Migration
  def change
    create_table :post_likes do |t|
      t.integer :micropost_id

      t.timestamps
    end
  end
end
