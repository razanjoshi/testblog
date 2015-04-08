class ChangePostToPostId < ActiveRecord::Migration
  def up
  	rename_column :comments, :post, :post_id
  end

  def down
  	rename_column :comments, :post_id, :post
  end
end
